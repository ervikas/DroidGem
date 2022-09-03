package apmsa;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class APMMain {
	private static final Logger LOGGER = LogManager.getLogger(APMMain.class);
	private static Map<String, String> allMapping = new HashMap<String, String>();

	public static void main(String[] args) {
		LOGGER.info("APMSA start");
		int apkNo = 0;

		if (args.length > 0) {
			apkNo = Integer.parseInt(args[0]);
		}

		try {
			LOGGER.info("Load map");
			APMMapping apmMapping = new APMMapping();
			allMapping = apmMapping.loadMap();
		} catch (APMException ex1) {
			//ex1.printStackTrace();
			LOGGER.error("MA-00010: " + ex1.getMessage());
		}

		File file1 = new File(APMConstant.APM_INPUT);
		String[] pathnames = file1.list();
		Arrays.sort(pathnames);

		APMResource apmResource = null;
		APMCallGraph apmCallGraph = null;
		Set<APMValue> resourceSPARK = null;
		Set<APMValue> resourceCHA = null;
		LocalDateTime apkStartDateTime = null;
		LocalDateTime apkEndDateTime = null;
		long apkMinutes = 0;
		long apkSeconds = 0;
		LocalDateTime startDateTime = null;
		LocalDateTime endDateTime = null;
		long minutes = 0;
		long seconds = 0;
		int num = 0;

		for (String apkName : pathnames) {
			apmResource = null;
			apmCallGraph = null;
			num++;
			apkStartDateTime = LocalDateTime.now();
			LOGGER.info("apk " + num + " - " + apkName);

			if ((apkNo == 0) || (apkNo == num)) {
				try {
					apmResource = new APMResource(apkName);
				} catch (Exception ex1) {
					//ex1.printStackTrace();
					LOGGER.error("MA-00100: " + ex1.getMessage());
				}

				try {
					String apkApplication = null;
					Set<String> apkServices = null;
					Set<String> apkReceivers = null;

					if (apmResource == null) {
						// do nothing
					} else {
						apkApplication = apmResource.getApkApplication();
						apkServices = apmResource.getApkServices();
						apkReceivers = apmResource.getApkReceivers();
					}

					apmCallGraph = new APMCallGraph(apkName, apkApplication, apkServices, apkReceivers);
				} catch (Exception ex1) {
					//ex1.printStackTrace();
					LOGGER.error("MA-00110: " + ex1.getMessage());
				}

				try {
					resourceSPARK = null;

					if ((apmResource == null) || (apmCallGraph == null)) {
						// do nothing
					} else {
						startDateTime = LocalDateTime.now();
						apmCallGraph.analyzeSPARK();
						Set<APMValue> permissionSPARK = apmCallGraph.permissionApk(allMapping);
						resourceSPARK = apmResource.resourceApk(permissionSPARK);
						saveDataset(apkName, "_SPARK", resourceSPARK);
						endDateTime = LocalDateTime.now();
						minutes = ChronoUnit.MINUTES.between(startDateTime, endDateTime);
						seconds = ChronoUnit.SECONDS.between(startDateTime, endDateTime);
						seconds -= minutes * 60;
						LOGGER.info("SPARK run time - " + minutes + " min " + seconds + " sec");
					}
				} catch (Exception ex1) {
					//ex1.printStackTrace();
					LOGGER.error("MA-00120: " + ex1.getMessage());
				}

				try {
					resourceCHA = null;

					if ((apmResource == null) || (apmCallGraph == null)) {
						// do nothing
					} else {
						startDateTime = LocalDateTime.now();
						apmCallGraph.analyzeCHA();
						Set<APMValue> permissionCHA = apmCallGraph.permissionApk(allMapping);
						resourceCHA = apmResource.resourceApk(permissionCHA);
						saveDataset(apkName, "_CHA", resourceCHA);
						endDateTime = LocalDateTime.now();
						minutes = ChronoUnit.MINUTES.between(startDateTime, endDateTime);
						seconds = ChronoUnit.SECONDS.between(startDateTime, endDateTime);
						seconds -= minutes * 60;
						LOGGER.info("CHA run time - " + minutes + " min " + seconds + " sec");
					}
				} catch (Exception ex1) {
					//ex1.printStackTrace();
					LOGGER.error("MA-00130: " + ex1.getMessage());
				}

				try {
					Set<APMValue> resourceFULL = new HashSet<APMValue>();
					
					if (resourceSPARK == null) {
						// do nothing
					} else {
						resourceFULL.addAll(resourceSPARK);
					}

					if (resourceCHA == null) {
						// do nothing
					} else {
						resourceFULL.addAll(resourceCHA);
					}

					saveDataset(apkName, "_FULL", resourceFULL);
					saveDataset(apkName, "_TEST", resourceFULL);
				} catch (Exception ex1) {
					//ex1.printStackTrace();
					LOGGER.error("MA-00140: " + ex1.getMessage());
				}
			}

			apkEndDateTime = LocalDateTime.now();
			apkMinutes = ChronoUnit.MINUTES.between(apkStartDateTime, apkEndDateTime);
			apkSeconds = ChronoUnit.SECONDS.between(apkStartDateTime, apkEndDateTime);
			apkSeconds -= apkMinutes * 60;
			LOGGER.info("apk " + num + " run time - " + apkMinutes + " min " + apkSeconds + " sec");
		}

		LOGGER.info("APMSA end");
	}

	private static void saveDataset(String apkName, String dsName, Set<APMValue> apmValues) throws APMException {
		LOGGER.info("Save dataset start - " + dsName);
		File file1 = new File(APMConstant.APM_OUTPUT + "/" + apkName + dsName + ".csv");
		BufferedWriter bufferedWriter1 = null;

		try {
			Set<String> dataset = new HashSet<String>();
			String wgtid = null;
			String widget = null;
			String layout = null;
			String parent = null;
			String method = null;
			String permission = null; 

			for (APMValue apmValue : apmValues) {
				wgtid = apmValue.getWgtid();
				widget = apmValue.getWidget();
				layout = apmValue.getLayout();
				parent = apmValue.getParent();
				method = apmValue.getMethod();
				permission = apmValue.getPermission();

				StringBuffer buffer1 = new StringBuffer(256);
				buffer1.append(wgtid);
				buffer1.append(",");
				buffer1.append(widget);
				buffer1.append(",");
				buffer1.append(layout);
				buffer1.append(",\"");
				buffer1.append(parent);
				
				if ("_TEST".equals(dsName)) {
					buffer1.append("\"");
				} else {
					buffer1.append("\",\"");
					buffer1.append(method);
					buffer1.append("\",\"<");
					buffer1.append(permission);
					buffer1.append(">\"");
				}

				dataset.add(buffer1.toString());
			}

			TreeSet<String> sortedData = new TreeSet<String>(dataset);

			if (!file1.exists()) {
				file1.createNewFile();
			}

			FileWriter fileWriter1 = new FileWriter(file1);
			bufferedWriter1 = new BufferedWriter(fileWriter1);

			if ("_TEST".equals(dsName)) {
				bufferedWriter1.write("APK,WID,Widget,Layout,Parent\n");
			} else {
				bufferedWriter1.write("APK,WID,Widget,Layout,Parent,Method,Permission\n");
			}

			for (String data : sortedData) {
				bufferedWriter1.write(apkName);
				bufferedWriter1.write(",");
				bufferedWriter1.write(data);
				bufferedWriter1.write("\n");
			}
		} catch (IOException ex1) {
			throw new APMException("MA-IOE-50100");
		} finally {
			try {
				if (bufferedWriter1 == null) {
					// do nothing
				} else {
					bufferedWriter1.close();
				}
			} catch (IOException ex1) {
				// do nothing
			}
		}

		LOGGER.info("Save dataset end - " + dsName);
	}
}
