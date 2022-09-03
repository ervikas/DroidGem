package apmsa;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class APMResource {
	private static final Logger LOGGER = LogManager.getLogger(APMResource.class);

	private String apkName = null;
	private String apkPackage = null;
	private String apkApplication = null;
	private Set<String> apkServices = new HashSet<String>();
	private Set<String> apkReceivers = new HashSet<String>();
	private Set<String> apkProviders = new HashSet<String>();
	private Map<String, String> apkLayouts = new HashMap<String, String>();

	private String activityXml = null;
	private Map<String, String> idValues = new HashMap<String, String>();
	private Map<String, String> idNames = new HashMap<String, String>();
	private Map<String, String> layoutValues = new HashMap<String, String>();
	private Map<String, String> layoutNames = new HashMap<String, String>();
	private Map<String, String> stringValues = new HashMap<String, String>();

	private Map<String, Set<APMWidget>> resourceWidgets = new HashMap<String, Set<APMWidget>>();
	private Map<String, String> resourceXmls = new HashMap<String, String>();
	private Map<String, String> resourceListeners = new HashMap<String, String>();
	private Map<String, String> resourceListenerXmls = new HashMap<String, String>();
	private Map<String, String> resourceFields = new HashMap<String, String>();
	private Map<String, String> resourceLayouts = new HashMap<String, String>();
	private Map<String, String> resourceViews = new HashMap<String, String>();
	private Map<String, String> resourceTaskXmls = new HashMap<String, String>();

	protected APMResource(String apkName) throws APMException {
		this.apkName = apkName;
		decodeApk();
		manifestApk();
		valueApk();
		layoutApk();
	}

	protected String getApkApplication() {
		return apkApplication;
	}

	protected Set<String> getApkServices() {
		return apkServices;
	}

	protected Set<String> getApkReceivers() {
		return apkReceivers;
	}

	protected Set<APMValue> resourceApk(Set<APMValue> apmValues) throws APMException {
		LOGGER.info("Resource start");
		Set<APMValue> resources = new HashSet<APMValue>();
		Map<String, String> layouts = new HashMap<String, String>();

		Set<String> smaliClasses = new HashSet<String>();
		String activitySmali = APMConstant.APM_TEMP + "/" + apkName;
		File file1 = new File(activitySmali);
		String[] pathnames = file1.list();
		Arrays.sort(pathnames);

		for (String pathname : pathnames) {
			if (pathname.startsWith("smali")) {
				smaliClasses.add(pathname);
			}
		}

		String wgtid = null;
		String widget = null;
		String layout = null;
		String root = null;
		String parent = null;
		String method = null;

		for (APMValue apmValue : apmValues) {
			String[] permissionValues = apmValue.getParent().split(":");

			if (permissionValues.length > 1) {
				// do something
			} else {
				continue;
			}

			String className = permissionValues[0].substring(1);
			int apkIndex = className.indexOf("$");
			String activityClass = null;
			String activityAnon = null;

			if (apkIndex > 0) {
				activityClass = className.substring(0, apkIndex);
				activityAnon = className.substring(apkIndex + 1);
				int anonIndex = activityAnon.indexOf("$");

				if (anonIndex > 0) {
					activityAnon = activityAnon.substring(0, anonIndex);
				}
			} else {
				activityClass = className;
				activityAnon = "";
			}

			activityXml = layouts.get(activityClass);

			if ((activityXml == null) || APMConstant.EMPTY_STRING.equals(activityXml)) {
				activityXml = resourceXml(smaliClasses, activityClass);
				resourceWidget(smaliClasses, activityClass);

				if ((activityXml == null) || APMConstant.EMPTY_STRING.equals(activityXml) || APMConstant.UNDEFINED_VAL.equals(activityXml)) {
					activityXml = APMConstant.UNDEFINED_VAL;
				} else if (activityXml.startsWith(APMConstant.APKTOOL_DUMMY)) {
					activityXml = APMConstant.NO_LAYOUT_VAL;
				} else {
					activityXml += ".xml";
				}

				layouts.put(activityClass, activityXml);
			}

			wgtid = APMConstant.UNDEFINED_VAL;
			widget = APMConstant.UNDEFINED_VAL;
			String[] tempValues = permissionValues[1].split("\\(");

			if (tempValues.length > 0) {
				// do something
			} else {
				continue;
			}

			String[] methodValues = tempValues[0].trim().split(" ");

			if (methodValues.length > 1) {
				// do something
			} else {
				continue;
			}

			String activityMethod = methodValues[1];
			String tempMethod = "," + activityMethod + ",";

			if (APMConstant.LIFECYCLE_ALL.contains(tempMethod)) {
				wgtid = APMConstant.LIFECYCLE_VAL;
				widget = activityMethod;
			} else if (APMConstant.ANDROID_NAVIGATION.equals(activityMethod)) {
				wgtid = APMConstant.NAVIGATE_BACK_VAL;
				widget = activityMethod;
			} else {
				Set<APMWidget> apmWidgets = resourceWidgets.get(activityXml);

				if (apmWidgets == null) {
					// do nothing
				} else {
					for (APMWidget apmWidget : apmWidgets) {
						if (apkIndex > 0) {
							wgtid = APMConstant.UNDEFINED_VAL;
							widget = APMConstant.UNDEFINED_VAL;
						} else {
							if (activityMethod.equals(apmWidget.getWidgetAction())) {
								widget = apmWidget.getWidgetId();

								if ((widget == null) || APMConstant.EMPTY_STRING.equals(widget)) {
									widget = APMConstant.UNDEFINED_VAL;
								} else {
									wgtid = idNames.get(widget);
									
									if ((wgtid == null) || APMConstant.EMPTY_STRING.equals(wgtid) || wgtid.contains(APMConstant.DELIM)) {
										wgtid = APMConstant.UNDEFINED_VAL;
									}
								}

								break;
							}
						}
					}
				}
			}

			if (activityClass.equals(apkApplication)) {
				widget = APMConstant.UNDEFINED_VAL;
				int lastIndex = activityClass.lastIndexOf(".");

				if (lastIndex > 0) {
					widget = activityClass.substring(lastIndex + 1);
				}

				apmValue.setWgtid(APMConstant.APPLICATION_VAL);
				apmValue.setWidget(widget);
				apmValue.setLayout(APMConstant.NO_LAYOUT_VAL);
				resources.add(apmValue);
			} else if (apkServices.contains(activityClass)) {
				widget = APMConstant.UNDEFINED_VAL;
				int lastIndex = activityClass.lastIndexOf(".");

				if (lastIndex > 0) {
					widget = activityClass.substring(lastIndex + 1);
				}

				apmValue.setWgtid(APMConstant.SERVICE_VAL);
				apmValue.setWidget(widget);
				apmValue.setLayout(APMConstant.NO_LAYOUT_VAL);
				resources.add(apmValue);
			} else if (apkReceivers.contains(activityClass)) {
				widget = APMConstant.UNDEFINED_VAL;
				int lastIndex = activityClass.lastIndexOf(".");

				if (lastIndex > 0) {
					widget = activityClass.substring(lastIndex + 1);
				}

				apmValue.setWgtid(APMConstant.RECEIVER_VAL);
				apmValue.setWidget(widget);
				apmValue.setLayout(APMConstant.NO_LAYOUT_VAL);
				resources.add(apmValue);
			} else if (apkProviders.contains(activityClass)) {
				widget = APMConstant.UNDEFINED_VAL;
				int lastIndex = activityClass.lastIndexOf(".");

				if (lastIndex > 0) {
					widget = activityClass.substring(lastIndex + 1);
				}

				apmValue.setWgtid(APMConstant.PROVIDER_VAL);
				apmValue.setWidget(widget);
				apmValue.setLayout(activityXml);
				resources.add(apmValue);
			} else {
				String tempAnon = "," + activityAnon + ",";

				if (APMConstant.LIFECYCLE_ALL.contains(tempAnon)) {
					apmValue.setWgtid(APMConstant.LIFECYCLE_VAL);
					apmValue.setWidget(activityAnon);
					apmValue.setLayout(activityXml);
					resources.add(apmValue);
				} else {
					apmValue.setWgtid(wgtid);
					apmValue.setWidget(widget);
					apmValue.setLayout(activityXml);
					resources.add(apmValue);
				}
			}

			String apkLayout = null;
			root = apmValue.getRoot();

			wgtid = apmValue.getWgtid();
			widget = apmValue.getWidget();
			layout = apmValue.getLayout();
			parent = apmValue.getParent();
			method = apmValue.getMethod();
			apkLayout = root + parent + method;
			apkLayouts.put(apkLayout, wgtid + APMConstant.DELIM + widget + APMConstant.DELIM + layout);
		}

		for (APMValue resource : resources) {
			widget = resource.getWidget();

			if ((widget == null) || APMConstant.EMPTY_STRING.equals(widget) || APMConstant.UNDEFINED_VAL.equals(widget)) {
				String[] resourceValues = resource.getParent().split(":");

				if (resourceValues.length > 0) {
					// do something
				} else {
					continue;
				}

				String className = resourceValues[0].substring(1);
				int apkIndex = className.indexOf("$");
				String activityClass = null;
				String activityAnon = null;

				if (apkIndex > 0) {
					activityClass = className.substring(0, apkIndex);
					activityAnon = className.substring(apkIndex + 1);
					int anonIndex = activityAnon.indexOf("$");

					if (anonIndex > 0) {
						activityAnon = activityAnon.substring(0, anonIndex);
					}
				} else {
					activityClass = className;
					activityAnon = "";
				}

				wgtid = resourceListeners.get(activityClass);
				layout = resource.getLayout();

				if ((wgtid == null) || APMConstant.EMPTY_STRING.equals(wgtid)) {
					// do nothing
				} else if (wgtid.startsWith("0x")) {
					widget = idValues.get(wgtid);

					if ((widget == null) || APMConstant.EMPTY_STRING.equals(widget)) {
						// do nothing
					} else {
						resource.setWgtid(wgtid);
						resource.setWidget(widget);
						layout = resource.getLayout();

						if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
							layout = resourceListenerXmls.get(activityClass);

							if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
								layout = resourceXmls.get(widget);

								if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || layout.contains(APMConstant.DELIM)) {
									// do nothing
								} else {
									resource.setLayout(layout);
								}
							} else {
								resource.setLayout(layout + ".xml");
							}
						}
					}
				} else if (wgtid.startsWith("\"0x")) {
					wgtid = wgtid.substring(1, wgtid.length() - 1);
					String stringValue = stringValues.get(wgtid);

					if ((stringValue == null) || APMConstant.EMPTY_STRING.equals(stringValue)) {
						// do nothing
					} else {
						resource.setWgtid(APMConstant.CONST_VAL);
						resource.setWidget(stringValue);
					}
				} else {
					if ("\" ?\"".equals(wgtid)) {
						// do nothing
					} else {
						resource.setWgtid(APMConstant.CONST_VAL);
						resource.setWidget(wgtid);
					}
				}

				if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
					layout = resourceTaskXmls.get(activityClass);

					if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
						// do nothing
					} else {
						resource.setLayout(layout + ".xml");
					}
				}
			}

			layout = resource.getLayout();

			if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
				if (layoutValues.isEmpty()) {
					resource.setLayout(APMConstant.NO_LAYOUT_VAL);
				}
			}

			widget = resource.getWidget();
			layout = resource.getLayout();

			if ((widget == null) || APMConstant.EMPTY_STRING.equals(widget) || APMConstant.UNDEFINED_VAL.equals(widget) ||
				(layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
				root = resource.getRoot();

				if ((root == null) || APMConstant.EMPTY_STRING.equals(root)) {
					// do nothing
				} else {
					method = resource.getMethod();
					String apkLayout = "null" + root + method;
					String layoutValue = apkLayouts.get(apkLayout);

					if ((layoutValue == null) || APMConstant.EMPTY_STRING.equals(layoutValue)) {
						int rootIndex = root.indexOf("$");
						String rootClass = null;

						if (rootIndex > 0) {
							rootClass = root.substring(0, rootIndex);
							apkLayout = "null" + rootClass + method;
							layoutValue = apkLayouts.get(apkLayout);
						}
					}

					if ((layoutValue == null) || APMConstant.EMPTY_STRING.equals(layoutValue)) {
						// do nothing
					} else {
						String[] layoutValues = layoutValue.split(APMConstant.DELIM);

						if (layoutValues.length > 2) {
							if ((widget == null) || APMConstant.EMPTY_STRING.equals(widget) || APMConstant.UNDEFINED_VAL.equals(widget)) {
								resource.setWgtid(layoutValues[0]);
								resource.setWidget(layoutValues[1]);
							}
							
							if ((layout == null) || APMConstant.EMPTY_STRING.equals(layout) || APMConstant.UNDEFINED_VAL.equals(layout)) {
								resource.setLayout(layoutValues[2]);
							}
						}
					}
				}
			}
		}

		LOGGER.info("Resource end");
		return resources;
	}

	private void decodeApk() throws APMException {
		LOGGER.info("Decode start");
		LocalDateTime startDateTime = LocalDateTime.now();
		String apkPath = APMConstant.APM_INPUT + "/" + apkName;
		String apkTemp = APMConstant.APM_TEMP + "/" + apkName;
	    File tmpDir = new File(apkTemp);
		Process process = null;
		int exitCode = -1;
		
	    try {
		    if (tmpDir.exists()) {
		    	FileUtils.deleteDirectory(tmpDir);
		    }

		    tmpDir.mkdir();
		    process = new ProcessBuilder().command("java", "-jar", "lib/apktool.jar", "d", "-f", apkPath, "-o", apkTemp).start();
			boolean exitted = process.waitFor(APMConstant.DECODE_TIMEOUT, TimeUnit.SECONDS);

			if (exitted) {
				exitCode = process.exitValue();
			} else {
				LOGGER.info("Decode timeout");
			}
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50100");
			throw new APMException("PR-IOE-50100");
		} catch (InterruptedException ex2) {
			LOGGER.error("PR-ITR-50110");
			throw new APMException("PR-ITR-50110");
		}

	    LOGGER.info("Decode end - " + exitCode);
	    LocalDateTime endDateTime = LocalDateTime.now();
		long minutes = ChronoUnit.MINUTES.between(startDateTime, endDateTime);
		long seconds = ChronoUnit.SECONDS.between(startDateTime, endDateTime);
		seconds -= minutes * 60;
		LOGGER.info("Decode run time - " + minutes + " min " + seconds + " sec");
	}

	private void manifestApk() throws APMException {
		LOGGER.info("Manifest start");
		String apkManifest = APMConstant.APM_TEMP + "/" + apkName + "/AndroidManifest.xml";

		try {
            InputStream inputStream = new FileInputStream(apkManifest);
            InputStreamReader reader = new InputStreamReader(inputStream);
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();  
            factory.setNamespaceAware(true);
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(reader);
            int eventType = parser.getEventType();

            while (eventType != XmlPullParser.END_DOCUMENT) {  
               	if (eventType == XmlPullParser.START_TAG) {
               		String tagName = parser.getName();
               		String attrName = null;
               		String attrValue = null;

               		if ((tagName == null) || APMConstant.EMPTY_STRING.equals(tagName)) {
               			// do nothing
               		} else if (APMConstant.APPLICATION_TAG.equals(tagName) || APMConstant.SERVICE_TAG.equals(tagName) ||
               				   APMConstant.RECEIVER_TAG.equals(tagName) || APMConstant.PROVIDER_TAG.equals(tagName)) {
               			for (int index1 = 0; index1 < parser.getAttributeCount(); index1++) {
                           	attrName = parser.getAttributeName(index1);

							if (APMConstant.NAME_ATTR.equals(attrName)) {
								attrValue = parser.getAttributeValue(index1);

								if ((attrValue == null) || APMConstant.EMPTY_STRING.equals(attrValue)) {
									// do nothing
								} else {
									if (attrValue.startsWith(".")) {
										attrValue = apkPackage + attrValue;
									}

									if (APMConstant.APPLICATION_TAG.equals(tagName)) {
										apkApplication = attrValue;
									} else if (APMConstant.SERVICE_TAG.equals(tagName)) {
										apkServices.add(attrValue);
									} else if (APMConstant.RECEIVER_TAG.equals(tagName)) {
										apkReceivers.add(attrValue);
									} else {
										apkProviders.add(attrValue);
									}
                            	}

                           		break;
                            }
		                }
                	} else if (APMConstant.MANIFEST_TAG.equals(tagName)) {
               			for (int index1 = 0; index1 < parser.getAttributeCount(); index1++) {
                           	attrName = parser.getAttributeName(index1);

							if (APMConstant.PACKAGE_ATTR.equals(attrName)) {
								attrValue = parser.getAttributeValue(index1);

								if ((attrValue == null) || APMConstant.EMPTY_STRING.equals(attrValue)) {
									apkPackage = APMConstant.EMPTY_STRING;
								} else {
									apkPackage= attrValue;
								}

								break;
                       		}
		                }
                	}
				}

               	eventType = parser.next();
            }
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50210");
			throw new APMException("PR-IOE-50210");
		} catch (XmlPullParserException ex2) {
			LOGGER.error("PR-XPP-50220");
			throw new APMException("PR-XPP-50220");
		}

		LOGGER.info("Mainfest end");
	}

	private void valueApk() throws APMException {
		LOGGER.info("Res values start");
		String apkValue = APMConstant.APM_TEMP + "/" + apkName + "/res/values/public.xml";

		try {
			InputStream inputStream = new FileInputStream(apkValue);
            InputStreamReader reader = new InputStreamReader(inputStream);
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();  
            factory.setNamespaceAware(true);
            XmlPullParser parser = factory.newPullParser();
            parser.setInput(reader);
            int eventType = parser.getEventType();
    		String valueType = null;
			String valueName = null;
    		String valueId = null;

            while (eventType != XmlPullParser.END_DOCUMENT) {  
            	if (eventType == XmlPullParser.START_TAG) {
            		String tagName = parser.getName();
            		
            		if (APMConstant.PUBLIC_TAG.equals(tagName)) {
            			valueType = parser.getAttributeValue(0);
        				valueName = parser.getAttributeValue(1);

        				if ((valueName == null) || APMConstant.EMPTY_STRING.equals(valueName) || valueName.startsWith(APMConstant.APKTOOL_DUMMY)) {
        					// do nothing
        				} else if (APMConstant.ID_TYPE.equals(valueType)) {
            				valueId = parser.getAttributeValue(2);
            				idValues.put(valueId, valueName);
            				String valueIds = idNames.get(valueName);

            				if ((valueIds == null) || APMConstant.EMPTY_STRING.equals(valueIds)) {
            					valueIds = valueId;
            				} else {
            					valueIds += APMConstant.DELIM + valueId;
            				}

            				idNames.put(valueName, valueIds);
            			} else if (APMConstant.LAYOUT_TYPE.equals(valueType)) {
            				valueId = parser.getAttributeValue(2);
            				layoutValues.put(valueId, valueName);
            				String valueIds = layoutNames.get(valueName);

            				if ((valueIds == null) || APMConstant.EMPTY_STRING.equals(valueIds)) {
            					valueIds = valueId;
            				} else {
            					valueIds += APMConstant.DELIM + valueId;
            				}

            				layoutNames.put(valueName, valueIds);
            			} else if (APMConstant.STRING_TYPE.equals(valueType)) {
            				valueId = parser.getAttributeValue(2);
            				stringValues.put(valueId, valueName);
            			}
            		}
				}

            	eventType = parser.next();
			}
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50300");
			throw new APMException("PR-IOE-50300");
		} catch (XmlPullParserException ex2) {
			LOGGER.error("PR-XPP-50310");
			throw new APMException("PR-XPP-50310");
		}

		LOGGER.info("Res values end");
	}

	private void layoutApk() throws APMException {
		LOGGER.info("Res layout start");
		String apkLayout = APMConstant.APM_TEMP + "/" + apkName + "/res/layout";

		try {
			File file1 = new File(apkLayout);

			if (!file1.exists()) {
				LOGGER.info("Res layout end - none");
		    	return;
		    }

			String[] pathnames = file1.list();
			Arrays.sort(pathnames);

			for (String widgetXml : pathnames) {
				Set<APMWidget> apmWidgets = new HashSet<APMWidget>();
	            InputStream inputStream = new FileInputStream(apkLayout + "/" + widgetXml);
	            InputStreamReader reader = new InputStreamReader(inputStream);
				XmlPullParserFactory factory = XmlPullParserFactory.newInstance();  
	            factory.setNamespaceAware(true);
	            XmlPullParser parser = factory.newPullParser();
	            parser.setInput(reader);
	            int eventType = parser.getEventType();

	            while (eventType != XmlPullParser.END_DOCUMENT) {  
                	if (eventType == XmlPullParser.START_TAG) {
                		String widgetName = parser.getName();
                		String widgetId = null;
                		String widgetClickable = APMConstant.FALSE_STRING;
            			String widgetOnClick = null;
                		String attrName = null;

                		if ((widgetName == null) || APMConstant.EMPTY_STRING.equals(widgetName)) {
                			// do nothing
                		} else {
                            for (int index1 = 0; index1 < parser.getAttributeCount(); index1++) {
                            	attrName = parser.getAttributeName(index1);

								if (APMConstant.ID_ATTR.equals(attrName)) {
                            		widgetId = parser.getAttributeValue(index1);

                            		if (widgetId.startsWith("@id/")) {
                            			widgetId = widgetId.substring(4);
                            		}
								} else if (APMConstant.CLICKABLE_ATTR.equals(attrName)) {
									widgetClickable = parser.getAttributeValue(index1);

									if (APMConstant.TRUE_STRING.equals(widgetClickable)) {
										if ((widgetOnClick == null) || APMConstant.EMPTY_STRING.equals(widgetOnClick)) {
											widgetOnClick = APMConstant.ON_CLICK_ATTR;
										}
									}
                            	} else if (APMConstant.ON_CLICK_ATTR.equals(attrName)) {
                            		widgetOnClick = parser.getAttributeValue(index1);
                            	}
                            }

                            if ((widgetId == null) || APMConstant.EMPTY_STRING.equals(widgetId)) {
                            	// do nothing
                            } else {
                                if ((widgetOnClick == null) || APMConstant.EMPTY_STRING.equals(widgetOnClick)) {
                                	widgetOnClick = APMConstant.ON_CLICK_ATTR;
                                }
                            }

                            if ((widgetOnClick == null) || APMConstant.EMPTY_STRING.equals(widgetOnClick)) {
								// do nothing
							} else {
								APMWidget apmWidget = new APMWidget();
								apmWidget.setWidgetXml(widgetXml);
								apmWidget.setWidgetTag(widgetName);
								apmWidget.setWidgetId(widgetId);
								apmWidget.setWidgetAction(widgetOnClick);
								apmWidgets.add(apmWidget);

								String widgetXmls = resourceXmls.get(widgetId);
								
								if ((widgetXmls == null) || APMConstant.EMPTY_STRING.equals(widgetXmls)) {
									widgetXmls = widgetXml;
								} else {
									widgetXmls += APMConstant.DELIM + widgetXml;
								}

								resourceXmls.put(widgetId, widgetXmls);
							}
		                }
                	}

 	            	eventType = parser.next();
				}

               	resourceWidgets.put(widgetXml,  apmWidgets);
			}
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50400");
			throw new APMException("PR-IOE-50400");
		} catch (XmlPullParserException ex2) {
			LOGGER.error("PR-XPP-50410");
			throw new APMException("PR-XPP-50410");
		}

		LOGGER.info("Res layout end");
	}

	private String resourceXml(Set<String> smaliClasses, String activityClass) throws APMException {
		String resourceXml = null;
		BufferedReader bufferedReader = null;

		try {
			String className = activityClass.replaceAll("\\.",  "/");
			String activityTemp = APMConstant.APM_TEMP + "/" + apkName + "/";
			String activitySmali = null;
			boolean exist = false;

			for (String smaliClass : smaliClasses) {
				activitySmali = activityTemp + smaliClass + "/" + className + ".smali";
				File file1 = new File(activitySmali);

				if (file1.exists()) {
					exist = true;
					break;
				}
			}

			if (!exist) {
				return resourceXml;
			}

			FileInputStream fileInputSstream = new FileInputStream(activitySmali);
			DataInputStream dataInputStream = new DataInputStream(fileInputSstream);
			bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));

			resourceLayouts = new HashMap<String, String>();
			String layoutId = null;
			String constLine = null;
			String strLine = null;
			boolean onCreate = false;

			while ((strLine = bufferedReader.readLine()) != null) {
				strLine = strLine.trim();

				if (onCreate) {
					if (strLine.startsWith(".end method")) {
						constLine = null;
						onCreate = false;
					} else if (strLine.startsWith("const ")) {
						constLine = strLine;
					} else if (strLine.startsWith("sget ")) {
						String[] layout1Values = strLine.split(":");

						if (layout1Values.length > 0) {
							String[] layout2Values = layout1Values[0].trim().split(";->");

							if (layout2Values.length > 1) {
								String layoutName = layout2Values[1];
								layoutId = layoutNames.get(layoutName);

								if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
									// do nothing
								} else if (layoutId.contains(APMConstant.DELIM)) {
									layoutId = null;
								}
							}
						}
					} else if (strLine.startsWith("invoke-virtual ") && strLine.endsWith("setContentView(I)V")) {
						if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
							if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
								// do nothing
							} else {
								String[] constValues = constLine.split(",");

								if (constValues.length > 1) {
									layoutId = constValues[1].trim();
									resourceXml = layoutValues.get(layoutId);
								}
							}
						} else {
							resourceXml = layoutValues.get(layoutId);
						}

						break;
					}
				} else if (strLine.startsWith(".field ")) {
					String[] field1Values = strLine.split(":");

					if (field1Values.length > 0) {
						String[] field2Values = field1Values[0].trim().split(" ");
						int field2Length = field2Values.length;

						if (field2Length > 1) {
							String fieldValue = className + ";->" + field2Values[field2Length - 1];
							resourceFields.put(fieldValue, APMConstant.EMPTY_STRING);
						}
					}
				} else if (strLine.startsWith(".method protected onCreate(") || strLine.startsWith(".method public onCreate(")) {
					constLine = null;
					onCreate = true;
					resourceLayouts = new HashMap<String, String>();
				} else if (strLine.startsWith(".method ") || strLine.startsWith(".end method")) {
					constLine = null;
					resourceLayouts = new HashMap<String, String>();
				} else if (strLine.startsWith("const ")) {
					constLine = strLine;
				} else if (strLine.startsWith("iput ")) {
					if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
						// do nothing
					} else {
						String[] constValues = constLine.split(",");

						if (constValues.length > 1) {
							layoutId = constValues[1].trim();
							String[] strValues = strLine.split(",");

							if (strValues.length > 2) {
								String[] viewVars = strValues[2].trim().split(":");

								if (viewVars.length > 0) {
									String layoutVar = viewVars[0].substring(1);
									String fieldValue = resourceFields.get(layoutVar);

									if ((fieldValue == null) || APMConstant.EMPTY_STRING.equals(fieldValue)) {
										resourceLayouts.put(layoutVar, layoutId);
									} else {
										resourceFields.put(layoutVar, layoutId);
									}
								}
							}
						}
					}
				} else if (strLine.startsWith("iget ")) {
					layoutId = null;
					String[] strValues = strLine.split(",");

					if (strValues.length > 2) {
						String[] viewVars = strValues[2].trim().split(":");

						if (viewVars.length > 0) {
							String layoutVar = viewVars[0].substring(1);
							layoutId  = resourceFields.get(layoutVar);

							if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
								layoutId = resourceLayouts.get(layoutVar);
							}
						}
					}
				} else if (strLine.startsWith("invoke-virtual ")) {
					if (strLine.endsWith("android/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;") ||
						strLine.endsWith("android/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;")) {
						if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
							// do nothing
						} else {
							String[] constValues = constLine.split(",");

							if (constValues.length > 1) {
								layoutId = constValues[1].trim();
								resourceXml = layoutValues.get(layoutId);
							}
						}

						if ((resourceXml == null) || APMConstant.EMPTY_STRING.equals(resourceXml)) {
							if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
								// do nothing
							} else {
								resourceXml = layoutValues.get(layoutId);
							}
						}

						break;
					}
				}
			}
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50500");
			throw new APMException("PR-IOE-50500");
		} finally {
			if (bufferedReader == null) {
				// do nothing
			} else {
				try {
					bufferedReader.close();
				} catch (IOException ex1) {
					// do nothing
				}
			}
		}

		return resourceXml;
	}

	private void resourceWidget(Set<String> smaliClasses, String activityClass) throws APMException {
		BufferedReader bufferedReader = null;

		try {
			String className = activityClass.replaceAll("\\.",  "/");
			String activityTemp = APMConstant.APM_TEMP + "/" + apkName + "/";
			String activitySmali = null;
			boolean exist = false;

			for (String smaliClass : smaliClasses) {
				activitySmali = activityTemp + smaliClass + "/" + className + ".smali";
				File file1 = new File(activitySmali);

				if (file1.exists()) {
					exist = true;
					break;
				}
			}

			if (!exist) {
				return;
			}
			
			FileInputStream fileInputSstream = new FileInputStream(activitySmali);
			DataInputStream dataInputStream = new DataInputStream(fileInputSstream);
			bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));

			resourceViews = new HashMap<String, String>();
			String layoutId = null;
			String tagValue = null;
			String constLine = null;
			String constStr = null;
			String strLine = bufferedReader.readLine();
			
			if (strLine == null) {
				return;
			}

			do {
				strLine = strLine.trim();

				if (strLine.startsWith(".method ") || strLine.startsWith(".end method")) {
					constLine = null;
					layoutId = null;
					tagValue = null;
				} else if (strLine.startsWith("const ")) {
					constLine = strLine;
				} else if (strLine.startsWith("const-string ")) {
					constStr = strLine;
				} else if (strLine.startsWith("invoke-virtual ")) {
					if (strLine.endsWith("findViewById(I)Landroid/view/View;")) {
						strLine = widgetView(bufferedReader, className, constLine);

						if (strLine == null) {
							break;
						} else {
							continue;
						}
					} else if (strLine.endsWith("getString(I)Ljava/lang/String;")) {
						layoutId = null;

						if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
							// do nothing
						} else {
							String[] constValues = constLine.split(",");

							if (constValues.length > 1) {
								layoutId = constValues[1].trim();
							}
						}
					} else if (strLine.endsWith("execute([Ljava/lang/Object;)Landroid/os/AsyncTask;")) {
						String[] task1Values = strLine.split(" ");
						int task1Length = task1Values.length;

						if (task1Length > 1) {
							String[] task2Values = task1Values[task1Length - 1].split(";->");

							if (task2Values.length > 1) {
								String taskValue = task2Values[0].substring(1);
								taskValue = taskValue.replaceAll("/", "\\.");

								if ("android.os.AsyncTask".equals(taskValue)) {
									// do nothing
								} else {
									resourceTaskXmls.put(taskValue, activityXml);
								}
							}
						}
					}
				} else if (strLine.startsWith("iget-object ") && strLine.contains(className)) {
					layoutId = null;
					String[] strValues = strLine.split(",");

					if (strValues.length > 2) {
						String[] viewSignatures = strValues[2].trim().split(":");

						if (viewSignatures.length > 0) {
							String viewMethod = viewSignatures[0];
							layoutId = resourceFields.get(viewMethod);

							if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
								layoutId = resourceViews.get(viewMethod);
							}

							if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
								String[] viewNames = viewMethod.split(";->");

								if (viewNames.length > 1) {
									layoutId = idNames.get(viewNames[1]);
								}
							}
						}
					}
				} else if (strLine.startsWith("new-instance ")) {
					tagValue = null;
					String[] tag1Values = strLine.split(" ");

					if (tag1Values.length > 2) {
						String[] tag2Values = tag1Values[2].split(";");

						if (tag2Values.length > 0) {
							tagValue = tag2Values[0].substring(1);
							tagValue = tagValue.replaceAll("/", "\\.");
						}
					}
				} else if (strLine.startsWith("invoke-direct ") && strLine.contains(className)) {
					strLine = widgetListener(bufferedReader, constStr, tagValue, layoutId);

					if (strLine == null) {
						break;
					} else {
						continue;
					}
				}

				strLine = bufferedReader.readLine();
			} while (strLine != null);
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50600");
			throw new APMException("PR-IOE-50600");
		} finally {
			if (bufferedReader == null) {
				// do nothing
			} else {
				try {
					bufferedReader.close();
				} catch (IOException ex1) {
					// do nothing
				}
			}
		}
	}

	private String widgetView(BufferedReader bufferedReader, String className, String constLine) throws APMException {
		try {
			String strLine = bufferedReader.readLine();

			if (strLine == null) {
				return strLine;
			}

			strLine = strLine.trim();

			if (APMConstant.EMPTY_STRING.equals(strLine)) {
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}
			} else {
				return strLine;
			}

			strLine = strLine.trim();

			if (strLine.startsWith("move-result-object ")) {
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}
			} else {
				return strLine;
			}

			strLine = strLine.trim();

			if (APMConstant.EMPTY_STRING.equals(strLine)) {
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}
			} else {
				return strLine;
			}

			strLine = strLine.trim();

			if (strLine.startsWith("check-cast ")) {
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}

				strLine = strLine.trim();

				if (APMConstant.EMPTY_STRING.equals(strLine)) {
					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}
				}
			} else {
				// do nothing
			}

			strLine = strLine.trim();

			if (strLine.startsWith("iput-object ") && strLine.contains(className)) {
				if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
					// do nothing
				} else {
					String[] constValues = constLine.split(",");

					if (constValues.length > 1) {
						String viewId = constValues[1].trim();
						String[] strValues = strLine.split(",");

						if (strValues.length > 2) {
							String[] viewSignatures = strValues[2].trim().split(":");

							if (viewSignatures.length > 0) {
								String viewMethod = viewSignatures[0];
								String fieldValue = resourceFields.get(viewMethod);

								if ((fieldValue == null) || APMConstant.EMPTY_STRING.equals(fieldValue)) {
									resourceViews.put(viewMethod, viewId);
								} else {
									resourceFields.put(viewMethod, viewId);
								}
							}
						}
					}
				}

				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}

				strLine = strLine.trim();
			} else {
				if ((constLine == null) || APMConstant.EMPTY_STRING.equals(constLine)) {
					// do nothing
				} else {
					String[] constValues = constLine.split(",");

					if (constValues.length > 1) {
						String viewId = constValues[1].trim();
						String viewVar = null;
						String[] varValues = constValues[0].trim().split(" ");

						if (varValues.length > 1) {
							viewVar = varValues[1].trim();
							resourceViews.put(viewVar, viewId);
						}
					}
				}
			}

			return strLine;
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50700");
			throw new APMException("PR-IOE-50700");
		}
	}

	private String widgetListener(BufferedReader bufferedReader, String constStr, String tagValue, String layoutId) throws APMException {
		try {
			String strLine = bufferedReader.readLine();

			if (strLine == null) {
				return strLine;
			}

			strLine = strLine.trim();
			
			if (APMConstant.EMPTY_STRING.equals(strLine)) {
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}
			} else {
				return strLine;
			}

			strLine = strLine.trim();

			if (strLine.startsWith("const-string ")) {
				constStr = strLine;
				strLine = bufferedReader.readLine();

				if (strLine == null) {
					return strLine;
				}

				strLine = strLine.trim();

				if (APMConstant.EMPTY_STRING.equals(strLine)) {
					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}
				}

				strLine = strLine.trim();

				if (strLine.startsWith(".line ")) {
					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}
				}
			}

			strLine = strLine.trim();

			if (strLine.startsWith("invoke-virtual ")) {
				if (strLine.endsWith("setOnClickListener(Landroid/view/View$OnClickListener;)V") ||
					strLine.endsWith("setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V") ||
					strLine.endsWith("setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V") ||
					strLine.endsWith("setOnTouchListener(Landroid/view/View$OnTouchListener;)V") ||
					strLine.endsWith("setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;")) {
					if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
						String[] view1Vars = strLine.split(" ");

						if (view1Vars.length > 1) {
							String[] view2Vars = view1Vars[1].split(",");

							if (view2Vars.length > 0) {
								String viewVar = view2Vars[0].substring(1);
								layoutId = resourceFields.get(viewVar);

								if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
									layoutId = resourceViews.get(viewVar);
								}

								if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
									// do nothing
								} else {
									resourceListeners.put(tagValue, layoutId);
									resourceListenerXmls.put(tagValue, activityXml);
								}
							}
						}
					} else {
						resourceListeners.put(tagValue, layoutId);
						resourceListenerXmls.put(tagValue, activityXml);
					}

					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}

					strLine = strLine.trim();
				} else if (strLine.endsWith("setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V")) {
					if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
						layoutId = idNames.get(APMConstant.TOOLBAR);
						
						if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
							// do nothing
						} else {
							resourceListeners.put(tagValue, layoutId);
							resourceListenerXmls.put(tagValue, activityXml);
						}
					} else {
						resourceListeners.put(tagValue, layoutId);
						resourceListenerXmls.put(tagValue, activityXml);
					}

					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}

					strLine = strLine.trim();
				} else if (strLine.endsWith("setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;") ||
						   strLine.endsWith("setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;")) {
					if ((layoutId == null) || APMConstant.EMPTY_STRING.equals(layoutId)) {
						String[] viewConsts = constStr.split(",");

						if (viewConsts.length > 1) {
							String viewConst = viewConsts[1].trim();
							resourceListeners.put(tagValue, viewConst);
							resourceListenerXmls.put(tagValue, activityXml);
						}
					} else {
						String stringValue = stringValues.get(layoutId);

						if ((stringValue == null) || APMConstant.EMPTY_STRING.equals(stringValue)) {
							// do nothing
						} else {
							resourceListeners.put(tagValue, "\"" + layoutId + "\"");
							resourceListenerXmls.put(tagValue, activityXml);
						}
					}

					strLine = bufferedReader.readLine();

					if (strLine == null) {
						return strLine;
					}

					strLine = strLine.trim();
				}
			}

			return strLine;
		} catch (IOException ex1) {
			LOGGER.error("PR-IOE-50800");
			throw new APMException("PR-IOE-50800");
		}
	}
}
