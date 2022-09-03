package apmsa;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.xmlpull.v1.XmlPullParserException;

import soot.Body;
import soot.MethodOrMethodContext;
import soot.Scene;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.infoflow.InfoflowConfiguration;
import soot.jimple.infoflow.InfoflowConfiguration.CodeEliminationMode;
import soot.jimple.infoflow.android.InfoflowAndroidConfiguration;
import soot.jimple.infoflow.android.SetupApplication;
import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import soot.jimple.infoflow.config.IInfoflowConfig;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Edge;
import soot.jimple.toolkits.callgraph.Sources;
import soot.jimple.toolkits.callgraph.Targets;
import soot.options.Options;
import soot.toolkits.graph.BriefUnitGraph;
import soot.util.dot.DotGraph;
import soot.util.dot.DotGraphEdge;


public class APMCallGraph {
	private static final Logger LOGGER = LogManager.getLogger(APMCallGraph.class);

	private String apkName = null;
	private String apkPackage1 = null;
	private String apkPackage2 = null;
	private String apkStart1 = null;
	private String apkStart2 = null;
	private String apkApplication = null;
	private Set<String> apkAll = new HashSet<String>();
	private Set<String> apkServices = new HashSet<String>();
	private Set<String> apkReceivers = new HashSet<String>();
	private Map<String, String> apkRoots = new HashMap<String, String>();

	private SetupApplication analyzer = null;
	private String cgAlgo = null;
	private int mainVisitSize = 0;
	private int parentVisitSize = 0;
	private int childVisitSize = 0;
	private Map<String, Integer> parentRuns = new HashMap<String, Integer>();
	private Map<String, String> parentNodes = new HashMap<String, String>();
	private Stack<String> parentStacks = new Stack<String>();
	private String childNode = null;
	private Map<String, Integer> childRuns = new HashMap<String, Integer>();
	private Map<String, String> childNodes = new HashMap<String, String>();
	private String parentNode = null;

	private Set<String> graphPlots = new HashSet<String>();
	private Set<String> graphEdges = new HashSet<String>();
	private DotGraph dotGraph = null;
	private boolean plotSubgraph = false;
	private int edgeNum = 0;
	private int dotNum = 0;
	private String plotMethod = null;

	private Set<Unit> icfgUnits = new HashSet<Unit>();
	private Set<String> icfgEdges = new HashSet<String>();
	private DotGraph icfgGraph = null;
	private String icfgNode = null;
	private int icfgNum = 0;


	protected APMCallGraph(String apkName, String apkApplication, Set<String> apkServices, Set<String> apkReceivers) throws APMException {
		this.apkName = apkName;
		this.apkApplication = apkApplication;
		this.apkServices = apkServices;
		this.apkReceivers = apkReceivers;
		String apkPath = APMConstant.APM_INPUT + "/" + apkName;
		ProcessManifest manifest = null;

		try {
			manifest = new ProcessManifest(apkPath);
			apkPackage1 = manifest.getPackageName();
			apkPackage2 = apkPackage1;
			Set<AXmlNode> launchableActivities = manifest.getLaunchableActivities();
			String launchableActivity = null;

			for (AXmlNode node : launchableActivities) {
				if (node.hasAttribute("name")) {
					launchableActivity = (String) node.getAttribute("name").getValue();
					LOGGER.info("Launchable - " + launchableActivity);
					int apkIndex = launchableActivity.lastIndexOf(".");

					if (apkIndex > 0) {
						apkPackage2 = launchableActivity.substring(0, apkIndex);

						if (apkPackage2.endsWith(".activity") || apkPackage2.endsWith(".Activity")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 9);
						} else if (apkPackage2.endsWith(".activities") || apkPackage2.endsWith(".Activities")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 11);
						} else if (apkPackage2.endsWith(".core") || apkPackage2.endsWith(".Core")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 5);
						}

						if (apkPackage2.endsWith(".ui")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 3);
						} else if (apkPackage2.endsWith(".gui")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 4);
						} else if (apkPackage2.endsWith(".views") || apkPackage2.endsWith(".login")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 6);
						} else if (apkPackage2.endsWith(".UserProfile")) {
							apkPackage2 = apkPackage2.substring(0, apkPackage2.length() - 12);
						}
					}
				}
			}

			ArrayList<AXmlNode> allActivities = manifest.getAllActivities();
			String allActivity = null;

			for (AXmlNode node : allActivities) {
				if (node.hasAttribute("name")) {
					allActivity = (String) node.getAttribute("name").getValue();
					apkAll.add(allActivity);
				}
			}

			apkStart1 = "<" + apkPackage1;
			apkStart2 = "<" + apkPackage2;
			LOGGER.info("Package - " + apkPackage1 + " " + apkPackage2);
			LOGGER.info("Activities - " + apkAll);
			LOGGER.info("Permissions - " + manifest.getPermissions());
		} catch (IOException ex1) {
			LOGGER.error("CG-IOE-00010");
			throw new APMException("CG-IOE-00010");
		} catch (XmlPullParserException ex2) {
			LOGGER.error("CG-XPP-00020");
			throw new APMException("CG-XPP-00020");
		} finally {
			if (manifest == null) {
				// do nothing
			} else {
				manifest.close();
			}
		}
	}

	protected void analyzeSPARK() {
		LOGGER.info("SPARK start");
		String apkPath = APMConstant.APM_INPUT + "/" + apkName;
		cgAlgo = "SPARK";
		analyzer = new SetupApplication(APMConstant.ANDROID_JAR, apkPath);
		analyzer.setCallbackFile(APMConstant.ANDROID_CALLBACKS);
		analyzer.setSootConfig(new IInfoflowConfig() {
			public void setSootOptions(Options options, InfoflowConfiguration config) {
				options.set_src_prec(Options.src_prec_apk);
				options.set_android_api_version(APMConstant.ANDROID_API);
				options.set_android_jars(APMConstant.ANDROID_JAR);
				options.set_process_dir(Collections.singletonList(apkPath));
				options.set_whole_program(true);
				options.set_allow_phantom_refs(true);
				options.set_keep_line_number(false);
				options.set_prepend_classpath(true);
				options.force_overwrite();
				options.set_output_format(Options.output_format_dex);
		        options.set_no_writeout_body_releasing(true);
				options.set_no_bodies_for_excluded(true);
				options.set_force_overwrite(true);
				options.set_process_multiple_dex(true);
				options.set_include_all(true);
	            String excludePackages[] = new String[] {
	            	"java.lang.*", "java.io.*", "java.util.*", "java.math.*", "java.nio.*", "java.sql.*", "java.text.*", "java.time.*"};
				List<String> excludePackagesList = Arrays.asList(excludePackages);
				options.set_exclude(excludePackagesList);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setAndroidPlatformDir(APMConstant.ANDROID_DIR);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setTargetAPKFile(apkPath);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setSourceSinkFile(APMConstant.ANDROID_SOURCES_SINKS);
				((InfoflowAndroidConfiguration) config).setSootIntegrationMode(InfoflowAndroidConfiguration.SootIntegrationMode.UseExistingInstance);
				((InfoflowAndroidConfiguration) config).setCodeEliminationMode(CodeEliminationMode.NoCodeElimination);
				((InfoflowAndroidConfiguration) config).setCallgraphAlgorithm(InfoflowConfiguration.CallgraphAlgorithm.SPARK);
				((InfoflowAndroidConfiguration) config).setDataFlowTimeout(APMConstant.SPARK_TIMEOUT);
				((InfoflowAndroidConfiguration) config).getCallbackConfig().setCallbackAnalysisTimeout(APMConstant.SPARK_TIMEOUT);
				((InfoflowAndroidConfiguration) config).getPathConfiguration().setPathReconstructionTimeout(APMConstant.SPARK_TIMEOUT);
			}
		});

		Scene scene = Scene.v();
		scene.loadNecessaryClasses();
		analyzer.constructCallgraph();
		LOGGER.info("SPARK end");
	}

	protected void analyzeCHA() {
		LOGGER.info("CHA start");
		String apkPath = APMConstant.APM_INPUT + "/" + apkName;
		cgAlgo = "CHA";
		analyzer = new SetupApplication(APMConstant.ANDROID_JAR, apkPath);
		analyzer.setCallbackFile(APMConstant.ANDROID_CALLBACKS);
		analyzer.setSootConfig(new IInfoflowConfig() {
			public void setSootOptions(Options options, InfoflowConfiguration config) {
				options.set_src_prec(Options.src_prec_apk);
				options.set_android_api_version(APMConstant.ANDROID_API);
				options.set_android_jars(APMConstant.ANDROID_JAR);
				options.set_process_dir(Collections.singletonList(apkPath));
				options.set_whole_program(true);
				options.set_allow_phantom_refs(true);
				options.set_no_bodies_for_excluded(true);
				options.set_keep_line_number(false);
				options.set_prepend_classpath(true);
				options.force_overwrite();
				options.set_output_format(Options.output_format_dex);
		        options.set_no_writeout_body_releasing(true);
				options.set_force_overwrite(true);
				options.set_process_multiple_dex(true);
				options.set_include_all(true);
	            String excludePackages[] = new String[] {
            		"java.lang.*", "java.io.*", "java.util.*", "java.math.*", "java.nio.*", "java.sql.*", "java.text.*", "java.time.*", 
            		"sun.*", "sun.misc.*", "org.apache.*", "org.w3c.*", "org.xml.*", 
	           		"com.adobe.*", "com.amazon.*", "com.amazonaws.*", "com.facebook.*", "com.ibm.*", "com.microsoft.*", "com.sun.*", 
	           		"com.apple.*", "com.htc.*", "com.huawei.*", "com.oppo.*", "com.samsung.*", "com.sec.*", "com.sonyericsson.*", "com.sonymobile.*",
	           		"com.anddoes", "com.github.*", "com.majeur.*", "com.ncs.*", "com.testfairy.*"};
				List<String> excludePackagesList = Arrays.asList(excludePackages);
				options.set_exclude(excludePackagesList);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setAndroidPlatformDir(APMConstant.ANDROID_DIR);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setTargetAPKFile(apkPath);
				((InfoflowAndroidConfiguration) config).getAnalysisFileConfig().setSourceSinkFile(APMConstant.ANDROID_SOURCES_SINKS);
				((InfoflowAndroidConfiguration) config).setSootIntegrationMode(InfoflowAndroidConfiguration.SootIntegrationMode.UseExistingInstance);
				((InfoflowAndroidConfiguration) config).setCodeEliminationMode(CodeEliminationMode.NoCodeElimination);
				((InfoflowAndroidConfiguration) config).setCallgraphAlgorithm(InfoflowConfiguration.CallgraphAlgorithm.CHA);
				((InfoflowAndroidConfiguration) config).setDataFlowTimeout(APMConstant.CHA_TIMEOUT);
				((InfoflowAndroidConfiguration) config).getCallbackConfig().setCallbackAnalysisTimeout(APMConstant.CHA_TIMEOUT);
				((InfoflowAndroidConfiguration) config).getPathConfiguration().setPathReconstructionTimeout(APMConstant.CHA_TIMEOUT);
			}
		});

		Scene scene = Scene.v();
		scene.loadNecessaryClasses();
		analyzer.constructCallgraph();
		LOGGER.info("CHA end");
	}

    protected Set<APMValue> permissionApk(Map<String, String> allMapping) throws APMException {
		LOGGER.info("Permission start");
		Set<APMValue> permissions = new HashSet<APMValue>();
		Set<APMValue> fullPermissions = new HashSet<APMValue>();
		Set<APMValue> forwardPermissions = new HashSet<APMValue>();
		Set<APMValue> backwardPermissions = new HashSet<APMValue>();
		Set<String> graphPermissions = new HashSet<String>();
		Scene scene = Scene.v();
		CallGraph cg = scene.getCallGraph();
		LOGGER.info("Call graph - size " + cg.size());

		Set<String> coveredChildMethods = new HashSet<String>();
		Set<String> coveredParentMethods = new HashSet<String>();
		String permission = null;
		mainVisitSize = 0;
		parentVisitSize = 0;
		childVisitSize = 0;

		for (Iterator<Edge> edges = cg.iterator(); edges.hasNext();)	{
			Edge edge = edges.next();
			SootMethod srcMethod = edge.src();
			SootMethod tgtMethod = edge.tgt();
			String srcSignature = srcMethod.getSignature();
			String srcClass = srcMethod.getDeclaringClass().toString();
			String tgtSignature = tgtMethod.getSignature();
System.out.println("[JLX1] " + srcSignature + " / " +  tgtSignature + " [JLX1]");

			if (tgtSignature.startsWith(APMConstant.DUMMY_CLASS) || coveredChildMethods.contains(tgtSignature)) {
				// do nothing
			} else {
				coveredChildMethods.add(tgtSignature);

				if (tgtSignature.startsWith("<java.net") || tgtSignature.startsWith("<android") || 
					tgtSignature.startsWith("<com.android") || tgtSignature.startsWith("<com.google.android")) {
					permission = allMapping.get(tgtSignature);

					if (permission == null) {
						// do nothing
					} else {
						parentStacks = new Stack<String>();
						parentRuns = new HashMap<String, Integer>();
						parentNodes = new HashMap<String, String>();
						childNode = tgtSignature;

						if (++mainVisitSize >= APMConstant.MAX_VISIT) {
		    				//LOGGER.warn("Max visit size reached");
		    				break;
						}

						visitParent(cg, tgtMethod, 1);

						for (String parentNodeValue : parentNodes.values()) {
//System.out.println("!!! backward search - T=" +  tgtSignature + " - Ps=" + parentNodeValue + " !!!");
							String[] parentActivities = parentNodeValue.split(APMConstant.DELIM);

							for (String parentActivity : parentActivities) {
								APMValue apmValue = new APMValue();
								apmValue.setApkName(apkName);
								apmValue.setRoot(null);
								apmValue.setParent(parentActivity);
								apmValue.setMethod(tgtSignature);
								apmValue.setPermission(permission);
								backwardPermissions.add(apmValue);
							}
						}
					}
				}
			}

			if (graphPlots.contains(srcSignature)) {
				// do nothing
			} else {
				String[] permissionValues = srcSignature.split(":");

				if (permissionValues.length > 1) {
					String[] tempValues = permissionValues[1].split("\\(");

					if (tempValues.length > 0) {
						String[] methodValues = tempValues[0].trim().split(" ");

						if (methodValues.length > 1) {
							plotMethod = methodValues[1];
							String tempMethod = "," + plotMethod + ",";

							if (APMConstant.PLOT_ALL.contains(tempMethod)) {
								icfgUnits = new HashSet<Unit>();
								icfgEdges = new HashSet<String>();
								icfgGraph = new DotGraph(srcSignature);

								graphPermissions = new HashSet<String>();
								graphEdges = new HashSet<String>();
								dotGraph = new DotGraph(srcSignature);
								plotSubgraph = true;
								edgeNum = 0;
							}
						}
					}
				}
			}

			if (srcSignature.startsWith(APMConstant.DUMMY_CLASS) || coveredParentMethods.contains(srcSignature)) {
				// do nothing
			} else {
				coveredParentMethods.add(srcSignature);
				int apkIndex = srcClass.indexOf("$");
				String srcActivity = null;

				if (apkIndex > 0) {
					srcActivity = srcClass.substring(0, apkIndex);
				} else {
					srcActivity = srcClass;
				}

				if (apkAll.contains(srcActivity) || (srcActivity.indexOf(".") < 2) ||
					srcSignature.startsWith(apkStart1) || srcSignature.startsWith(apkStart2)  || srcActivity.equals(apkApplication) ||
					apkServices.contains(srcActivity) || apkReceivers.contains(srcActivity)) {
					childRuns = new HashMap<String, Integer>();
					childNodes = new HashMap<String, String>();
					parentNode = srcSignature;

					if (++mainVisitSize >= APMConstant.MAX_VISIT) {
	    				//LOGGER.warn("Max visit size reached");
	    				break;
					}

					visitChild(cg, srcMethod, 1, allMapping);

					for (String childNodeValue : childNodes.values()) {
//System.out.println("!!! forward search - S=" + srcSignature + " - Cs=" + childNodeValue + " !!!");
						String[] childActivities = childNodeValue.split(APMConstant.DELIM);

						for (String childActivity : childActivities) {
							permission = allMapping.get(childActivity);

							if (permission == null) {
								// do nothing
							} else {
								APMValue apmValue = new APMValue();
								apmValue.setApkName(apkName);
								apmValue.setRoot(null);
								apmValue.setParent(srcSignature);
								apmValue.setMethod(childActivity);
								apmValue.setPermission(permission);
								forwardPermissions.add(apmValue);
								String[] tempPermissions = permission.split(",");

								for (String tempPermission : tempPermissions) {
									graphPermissions.add(tempPermission.trim());
								}
							}
						}
					}
				}
			}

			if (plotSubgraph) {
				if (graphPlots.contains(srcSignature)) {
					// do nothing
				} else if (edgeNum > 0) {
					StringBuffer graphName = new StringBuffer(256);
					graphName.append(srcSignature);
					graphName.append(" -");
					TreeSet<String> sortedGraphPermissions = new TreeSet<String>(graphPermissions);

					for (String graphPermission : sortedGraphPermissions) {
						graphName.append(" ");
						graphName.append(graphPermission);
					}

					graphPlots.add(srcSignature);
					dotGraph.setGraphName(graphName.toString());

					if ("SPARK".equals(cgAlgo)) {
						dotGraph.plot(APMConstant.APM_OUTPUT2 + "/" + apkName + "_plot" + ++dotNum + "_1_" + plotMethod + ".dot");
					} else {
						dotGraph.plot(APMConstant.APM_OUTPUT2 + "/" + apkName + "_plot" + ++dotNum + "_2_" + plotMethod + ".dot");
					}

					icfgGraph.setGraphName(graphName.toString());

			        if ("SPARK".equals(cgAlgo)) {
						icfgGraph.plot(APMConstant.APM_OUTPUT3 + "/" + apkName + "_plot" + ++icfgNum + "_1_" + plotMethod + ".dot");
					} else {
						icfgGraph.plot(APMConstant.APM_OUTPUT3 + "/" + apkName + "_plot" + ++icfgNum + "_2_" + plotMethod + ".dot");
					}
				}

				icfgUnits = new HashSet<Unit>();
				plotSubgraph = false;
				edgeNum = 0;
			}
		}

		LOGGER.info("Forward search - " + forwardPermissions.size());
		LOGGER.info("Backward search - " + backwardPermissions.size());
		fullPermissions.addAll(forwardPermissions);
		fullPermissions.addAll(backwardPermissions);

		String apkRootValues = null;
		String parentValue = null;
		String methodValue = null;
		String permissionValue = null;

		for (APMValue fullPermission : fullPermissions) {
			parentValue = fullPermission.getParent();
			methodValue = fullPermission.getMethod();
			permissionValue = fullPermission.getPermission();
			apkRootValues = apkRoots.get(parentValue + methodValue);

			if ((apkRootValues == null) || APMConstant.EMPTY_STRING.equals(apkRootValues)) {
				permissions.add(fullPermission);
			} else {
				String[] rootValues = apkRootValues.split(APMConstant.DELIM);

				for (String rootValue : rootValues) {
					APMValue apmValue = new APMValue();
					apmValue.setApkName(apkName);
					apmValue.setRoot(rootValue);
					apmValue.setParent(parentValue);
					apmValue.setMethod(methodValue);
					apmValue.setPermission(permissionValue);
					permissions.add(apmValue);
				}
			}
		}

		LOGGER.info("Permission end");
		return permissions;
	}

	private void visitParent(CallGraph cg, SootMethod curMethod, int parentDepth) {
		int parentWidth = 0;
		Iterator<MethodOrMethodContext> parents = new Sources(cg.edgesInto(curMethod));

		if (parents != null) {
			while (parents.hasNext()) {
				if (++parentVisitSize >= APMConstant.MAX_VISIT) {
    				//LOGGER.warn("Max parent visit size reached - " + parentSize);
    				break;
				}
				
    			if (parentWidth >= APMConstant.MAX_WIDTH) {
    				//LOGGER.warn("Max parent width reached - " + curSignature);
    				break;
    			}

    			++parentWidth;
		        SootMethod parentMethod = (SootMethod) parents.next();
				String parentClass = parentMethod.getDeclaringClass().toString();
		        String parentSignature = parentMethod.getSignature();
				int apkIndex = parentClass.indexOf("$");
				String parentActivity = null;

				if (apkIndex > 0) {
					parentActivity = parentClass.substring(0, apkIndex);
				} else {
					parentActivity = parentClass;
				}

    			if (parentSignature.startsWith(APMConstant.DUMMY_CLASS) || parentSignature.startsWith(APMConstant.JAVA_LANG_CLASS) ||
    				parentSignature.startsWith(APMConstant.JAVA_IO_CLASS) || parentSignature.startsWith(APMConstant.JAVA_UTIL_CLASS) || 
        			parentSignature.startsWith(APMConstant.JAVA_MATH_CLASS) || parentSignature.startsWith(APMConstant.JAVA_TEXT_CLASS) ||
        			parentSignature.startsWith(APMConstant.JAVA_TIME_CLASS) || parentSignature.startsWith(APMConstant.JAVA_NIO_CLASS) ||
        			parentSignature.startsWith(APMConstant.JAVA_SQL_CLASS)) {
    				continue;
    			}

				Integer parentRun = (Integer) parentRuns.get(parentSignature);

				if (parentRun == null) {
					parentRuns.put(parentSignature, 1);
				} else {
					int run = parentRun.intValue();

					if (run >= APMConstant.MAX_RERUN) {
						//LOGGER.warn("Max parent run reached - " + parentSignature);
						continue;
					}

					parentRuns.put(parentSignature, ++run);
				}

				boolean parent = false;

       			if (apkAll.contains(parentActivity) || (parentActivity.indexOf(".") < 2) || parentActivity.equals(apkApplication) || 
           			apkServices.contains(parentActivity) || apkReceivers.contains(parentActivity)) {
    				String parentNode = parentNodes.get(childNode);

    				if (parentNode == null) {
System.out.println("[JLX3A1] " + parentSignature + " / " + childNode + " [JLX3A1]");
						parentNodes.put(childNode, parentSignature);
					} else if (parentNode.contains(parentSignature)) {
						// do nothing
					} else {
System.out.println("[JLX3A2] " + parentSignature + " / " + childNode + " [JLX3A2]");
						parentNodes.put(childNode, parentSignature + APMConstant.DELIM + parentNode);
					}

    				if (parentStacks.isEmpty()) {
    					// do nothing
    				} else {
						String rootValue = null;
						String rootValues = null;

						for (String stackNode : parentStacks) {
							rootValue = stackNode + childNode;
							rootValues = apkRoots.get(rootValue);

            				if ((rootValues == null) || APMConstant.EMPTY_STRING.equals(rootValues)) {
            					rootValues = parentSignature;
                				apkRoots.put(rootValue, rootValues);
            				} else if (rootValues.equals(parentSignature) || rootValues.startsWith(parentSignature + APMConstant.DELIM) || 
            						   rootValues.endsWith(APMConstant.DELIM + parentSignature) || rootValues.contains(APMConstant.DELIM + parentSignature + APMConstant.DELIM)) {
            					// do nothing
            				} else {
            					rootValues += APMConstant.DELIM + parentSignature;
                				apkRoots.put(rootValue, rootValues);
            				}
						}
    				}
    			} else {
    				if (parentClass.startsWith(apkPackage1) || parentClass.startsWith(apkPackage2)) {
    					String parentNode = parentNodes.get(childNode);

    					if (parentNode == null) {
System.out.println("[JLX3B1] " + parentSignature + " / " + childNode + " [JLX3B1]");
    						parentNodes.put(childNode, parentSignature);
    						parentStacks.push(parentSignature);
        					parent = true;
    					} else if (parentNode.contains(parentSignature)) {
    						// do nothing
    					} else {
System.out.println("[JLX3B2] " + parentSignature + " / " + childNode + " [JLX3B2]");
    						parentNodes.put(childNode, parentSignature + APMConstant.DELIM + parentNode);
    						parentStacks.push(parentSignature);
        					parent = true;
    					}
    				}

    				if (parentDepth >= APMConstant.MAX_DEPTH) {
        				//LOGGER.warn("Max parent depth reached - " + curSignature);
    					if (parent) {
    						parentStacks.pop();
    					}

    					continue;
    				}
 
    				visitParent(cg, parentMethod, ++parentDepth);

					if (parent) {
						parentStacks.pop();
					}
    			}
		    }
		}
	}

	private void visitChild(CallGraph cg, SootMethod curMethod, int childDepth, Map<String, String> allMapping) {
		int childWidth = 0;
		String curSignature = curMethod.getSignature();
		Iterator<MethodOrMethodContext> children = new Targets(cg.edgesOutOf(curMethod));

		if (children != null) {
			while (children.hasNext()) {
				if (++childVisitSize >= APMConstant.MAX_VISIT) {
    				//LOGGER.warn("Max child visit size reached - " + childSize);
    				break;
				}

				if (childWidth >= APMConstant.MAX_WIDTH) {
    				//LOGGER.warn("Max child width reached - " + curSignature);
    				break;
    			}

    			++childWidth;
		        SootMethod childMethod = (SootMethod) children.next();
		        String childSignature = childMethod.getSignature();

				if (childSignature.startsWith(APMConstant.DUMMY_CLASS) || childSignature.startsWith(APMConstant.JAVA_LANG_CLASS) ||
					childSignature.startsWith(APMConstant.JAVA_IO_CLASS) || childSignature.startsWith(APMConstant.JAVA_UTIL_CLASS) ||
					childSignature.startsWith(APMConstant.JAVA_MATH_CLASS) || childSignature.startsWith(APMConstant.JAVA_TEXT_CLASS) ||
					childSignature.startsWith(APMConstant.JAVA_TIME_CLASS) || childSignature.startsWith(APMConstant.JAVA_NIO_CLASS) ||
					childSignature.startsWith(APMConstant.JAVA_SQL_CLASS)) {
					continue;
				}

				Integer childRun = (Integer) childRuns.get(childSignature);

				if (childRun == null) {
					childRuns.put(childSignature, 1);
				} else {
					int run = childRun.intValue();

					if (run >= APMConstant.MAX_RERUN) {
						//LOGGER.warn("Max child run reached - " + childSignature);
						continue;
					}
		
					childRuns.put(childSignature, ++run);
				}

		        if (plotSubgraph) {
					String graphEdge = curSignature + APMConstant.DELIM + childSignature;

					if (graphEdges.contains(graphEdge)) {
   			        	// do nothing
   			        } else {
   			        	String srcNode = curSignature;
   			        	String tgtNode = childSignature;
   						graphEdges.add(graphEdge);
   						dotGraph.drawEdge(srcNode, tgtNode);
       			        dotGraph.drawNode(srcNode);
       			        dotGraph.drawNode(tgtNode);
   			            edgeNum++;

   						icfgNode = srcNode;
   						icfgEdges.add(graphEdge);
   						DotGraphEdge icfgEdge = icfgGraph.drawEdge(srcNode, tgtNode);
   						icfgEdge.setLabel(srcNode + "/" + tgtNode);
       			        icfgGraph.drawNode(srcNode);
       			        icfgGraph.drawNode(tgtNode);
       					String curClass = curMethod.getDeclaringClass().toString();

   	    				if (curClass.startsWith("android.") || curClass.startsWith("androidx.") || curClass.startsWith("com.android.") ||
   	    					curClass.startsWith("com.google.android.") || curClass.startsWith("java.") || curClass.startsWith("javax.")) {
   	    					// do nothing
   	    				} else {
       	       				Body curActiveBody = curMethod.getActiveBody();

							try {
								BriefUnitGraph srcGraph = new BriefUnitGraph(curActiveBody);
								graphTraverse(srcNode, curActiveBody.getThisUnit(), srcGraph);
       	       				} catch (Exception ex1) {
								//LOGGER.warn("CFG cannot be constructed - " + curClass);
       	       				}
       	       			}
		        	}
   				}

				if (childSignature.startsWith("<java.net") || childSignature.startsWith("<android") || 
					childSignature.startsWith("<com.android") || childSignature.startsWith("<com.google.android")) {
					String permission = allMapping.get(childSignature);

					if (permission == null) {
						// do nothing
					} else {
    					String childNode = childNodes.get(parentNode);

    					if (childNode == null) {
System.out.println("[JLX2A1] " + parentNode + " / " + childSignature + " [JLX2A1]");
    						childNodes.put(parentNode, childSignature);
    					} else if (childNode.contains(childSignature)) {
    						// do nothing
    					} else {
System.out.println("[JLX2A2] " + parentNode + " / " + childSignature + " [JLX2A2]");
    						childNodes.put(parentNode, childSignature + APMConstant.DELIM + childNode);
    					}

    					continue;
					}
				}

   				if (childDepth >= APMConstant.MAX_DEPTH) {
       				//LOGGER.warn("Max child depth reached - " + curSignature);
   					continue;
   				}

   	            visitChild(cg, childMethod, ++childDepth, allMapping);
			}
		}
	}

	private void graphTraverse(String enterNode, Unit startPoint, BriefUnitGraph icfg) {
		List<Unit> currentSuccessors = icfg.getSuccsOf(startPoint);
		String startNode = startPoint.toString();
		String succNode = "";

		if (enterNode == null) {
			// do nothing
		} else {
			String graphEdge1 = icfgNode + APMConstant.DELIM + startNode;

			if (icfgEdges.contains(graphEdge1)) {
				// do nothing
			} else {
				icfgEdges.add(graphEdge1);
				DotGraphEdge icfgEdge = icfgGraph.drawEdge(icfgNode, startNode);
				icfgEdge.setLabel("enter");
				icfgGraph.drawNode(icfgNode);
				icfgGraph.drawNode(startNode);
	        }
		}

		if ((currentSuccessors == null) || (currentSuccessors.size() == 0)) {
			String returnNode = "return " + icfgNode;
			String graphEdge2 = returnNode + APMConstant.DELIM + icfgNode;

			if (icfgEdges.contains(graphEdge2)) {
				// do nothing
			} else {
				icfgEdges.add(graphEdge2);
				DotGraphEdge icfgEdge = icfgGraph.drawEdge(returnNode, icfgNode);
				icfgEdge.setLabel("return");
				icfgGraph.drawNode(returnNode);
				icfgGraph.drawNode(icfgNode);
			}

			return;
		}

		for (Unit succ : currentSuccessors) {
			succNode = succ.toString();

			if ("return".equals(succNode)) {
				succNode = "return " + icfgNode;
			}

			String graphEdge3 = startNode + APMConstant.DELIM + succNode;

			if (icfgEdges.contains(graphEdge3)) {
				// do nothing
			} else {
				icfgEdges.add(graphEdge3);
				DotGraphEdge icfgEdge = icfgGraph.drawEdge(startNode, succNode);
				icfgEdge.setLabel("body");
				icfgGraph.drawNode(startNode);
				icfgGraph.drawNode(succNode);
			}

			if (icfgUnits.contains(succ)) {
				// do nothing
			} else {
				icfgUnits.add(succ);
				graphTraverse(null, succ, icfg);
			}
		}
	}
}
