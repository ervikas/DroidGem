package apmsa;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Scanner;
import java.util.stream.Collectors;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class APMMapping {
	private static final Logger LOGGER = LogManager.getLogger(APMMapping.class);

	protected APMMapping() throws APMException {
		File file = new File(APMConstant.MAP_PROP);

		if (file.exists()) {
			// do nothing
		} else {
			saveMap();
		}
	}

	protected Map<String, String> loadMap() throws APMException {
		LOGGER.info("Load map start");
		Map<String, String> allMapping = new HashMap<String, String>();

		try {
			Properties mapProperties = new Properties();
			mapProperties.load(new FileInputStream(APMConstant.MAP_PROP));
			allMapping = mapProperties.entrySet().stream().collect(Collectors.toMap(
					ent -> String.valueOf(ent.getKey()),
                    ent -> String.valueOf(ent.getValue())));
		} catch (FileNotFoundException ex1) {
			LOGGER.error("MP-FNF-10100");
			throw new APMException("MP-FNF-10100");
		} catch (IOException ex2) {
			LOGGER.error("MP-IOE-10110");
			throw new APMException("MP-IOE-10110");
		}

		LOGGER.info("Load map end");
		return allMapping;
	}

	protected void saveMap() throws APMException {
		LOGGER.info("Save map start");

		try {
			Properties mapProperties = new Properties();
			mapProperties.putAll(getPScoutMap());
			mapProperties.putAll(getAxplorerMap());
			mapProperties.store(new FileOutputStream(APMConstant.MAP_PROP), null);
		} catch (IOException ex1) {
			LOGGER.error("MP-IOE-10200");
			throw new APMException("MP-IOE-10200");
		}

		LOGGER.info("Save map end");
	}
	
	private Map<String, String> getPScoutMap() throws APMException {
		Map<String, String> pScoutMapping = new HashMap<String, String>();
		Scanner scanner1 = null;

		try {
			String method = null;
			String perm = null;
			File file1 = new File(APMConstant.PSCOUT_MAP);
			FileInputStream fis1 = new FileInputStream(file1);
			scanner1 = new Scanner(fis1);

			while(scanner1.hasNextLine()){
				String line1 = scanner1.nextLine();

				if (line1.startsWith("Permission:")) {
					perm = line1.substring(11);
				} else if (line1.startsWith("<")){
					int index1 = line1.indexOf(">");
					method = line1.substring(0, index1 + 1);

					pScoutMapping.put(method, perm);
				}
			}
		} catch (FileNotFoundException ex1) {
			LOGGER.error("MP-FNF-50100");
			throw new APMException("MP-FNF-50100");
		} finally {
			if (scanner1 == null) {
				// do nothing
			} else {
				scanner1.close();
			}
		}

		return pScoutMapping;
	}	

	private Map<String, String> getAxplorerMap() throws APMException {
		Map<String, String> axplorerMapping = new HashMap<String, String>();
		Scanner scanner1 = null;
		Scanner scanner2 = null;

		try {
			String method = null;
			String perm = null;
			File file1 = new File(APMConstant.AXPLORER_FRAMEWORK_MAP);
			FileInputStream fis1 = new FileInputStream(file1);
			scanner1 = new Scanner(fis1);

			while(scanner1.hasNextLine()){
				String line = scanner1.nextLine();
				line = line.trim().replaceAll("\n", "");
				String[] tokens = line.split("::");
				method = tokens[0].trim();
				perm = tokens[1].trim();
				String[] methods = method.split("\\(");
				int lastIndex = methods[0].lastIndexOf('.');
				String method1 = methods[0].substring(0, lastIndex);
				String method2 = methods[0].substring(lastIndex + 1);
				String[] params = methods[1].split("\\)");
				String rtype = params[1].trim();
				String param = params[0].trim();
				method = "<" + method1 + ": " + rtype + " " + method2 + "(" + param + ")>";

				axplorerMapping.put(method, perm);
			}

			File file2 = new File(APMConstant.AXPLORER_SDK_MAP);
			FileInputStream fis2 = new FileInputStream(file2);
			scanner2 = new Scanner(fis2);

			while(scanner2.hasNextLine()){
				String line = scanner2.nextLine();
				line = line.trim().replaceAll("\n", "");
				String[] tokens = line.split("::");
				method = tokens[0].trim();
				perm = tokens[1].trim();
				String[] methods = method.split("\\(");
				int lastIndex = methods[0].lastIndexOf('.');
				String method1 = methods[0].substring(0, lastIndex);
				String method2 = methods[0].substring(lastIndex + 1);
				String[] params = methods[1].split("\\)");
				String rtype = params[1].trim();
				String param = params[0].trim();
				method = "<" + method1 + ": " + rtype + " " + method2 + "(" + param + ")>";

				axplorerMapping.put(method, perm);
			}
		} catch (FileNotFoundException ex1) {
			LOGGER.error("MP-FNF-50200");
			throw new APMException("MP-FNF-50200");
		} finally {
			if (scanner2 == null) {
				// do nothing
			} else {
				scanner2.close();
			}

			if (scanner1 == null) {
				// do nothing
			} else {
				scanner1.close();
			}
		}

		return axplorerMapping;
	}
}
