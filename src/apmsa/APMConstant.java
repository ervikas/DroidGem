package apmsa;

import java.time.format.DateTimeFormatter;

public class APMConstant {
	protected static final String APP_NAME = "apm";
	//protected static final String APM_PATH = "/home/cheewei/APM";
	protected static final String APM_PATH = ".";
	protected static final String APM_INPUT = APM_PATH + "/input";
	protected static final String APM_OUTPUT = APM_PATH + "/output";
	protected static final String APM_OUTPUT2 = APM_PATH + "/output2";
	protected static final String APM_OUTPUT3 = APM_PATH + "/output3";
	protected static final String APM_OUTPUT4 = APM_PATH + "/output4";
	protected static final String APM_TEMP = APM_PATH + "/temp";
	protected static final String APM_LOG = APM_PATH + "/log";

	//protected static final String ANDROID_DIR = "/home/cheewei/AndroidSDK/platforms";
	protected static final String ANDROID_DIR = System.getProperty("android.dir", "/home/cheewei/AndroidSDK/platforms");
	protected static final String ANDROID_CALLBACKS = APM_PATH + "/AndroidCallbacks.txt";
	protected static final String ANDROID_SOURCES_SINKS = APM_PATH + "/SourcesAndSinks.txt";
	protected static final String ANDROID_JAR = ANDROID_DIR + "/android-30/android.jar";
	protected static final int ANDROID_API = 30;

	protected static final String MAP_PROP = APM_PATH + "/all-mapping.properties";
	protected static final String PSCOUT_MAP = APM_PATH + "/jellybean_allmappings.txt";
	protected static final String AXPLORER_FRAMEWORK_MAP = APM_PATH + "/axplorer-framework-map-25.txt";
	protected static final String AXPLORER_SDK_MAP = APM_PATH + "/axplorer-sdk-map-25.txt";

	protected static final String CALENDAR_PERMISSION = ",android.permission.READ_CALENDAR,android.permission.WRITE_CALENDAR,";
	protected static final String CAMERA_PERMISSION = ",android.permission.CAMERA,";
	protected static final String LOCATION_PERMISSION = ",android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_FINE_LOCATION,";
	protected static final String MICROPHONE_PERMISSION = ",android.permission.RECORD_AUDIO,";
	protected static final String PHONE_PERMISSION = ",android.permission.READ_PHONE_STATE,";
	protected static final String SENSOR_PERMISSION = ",android.permission.USE_BIOMETRIC,android.permission.USE_FINGERPRINT,";
	protected static final String STORAGE_PERMISSION = ",android.permission.READ_EXTERNAL_STORAGE,android.permission.WRITE_EXTERNAL_STORAGE,";
	protected static final String ACCOUNT_PERMISSION = ",android.permission.GET_ACCOUNTS,";
	protected static final String APPLICATION_PERMISSION = ",android.permission.GET_TASKS,android.permission.REORDER_TASKS,";
	protected static final String AUDIO_SETTING_PERMISSION = ",android.permission.MODIFY_AUDIO_SETTINGS,";
	protected static final String BATTERY_LIFE_PERMISSION = ",android.permission.VIBRATE,android.permission.WAKE_LOCK,";
	protected static final String LOW_LEVEL_SI_PERMISSION = ",android.permission.BROADCAST_STICKY,android.permission.CHANGE_NETWORK_STATE,android.permission.WRITE_SETTINGS,";
	protected static final String NETWORK_PERMISSION = ",android.permission.ACCESS_NETWORK_STATE,android.permission.ACCESS_WIFI_STATE,android.permission.INTERNET,";
	protected static final String SHORT_RANGE_PERMISSION = ",android.permission.BLUETOOTH,android.permission.BLUETOOTH_ADMIN,";
	protected static final String DEPRECATED_PERMISSION = ",android.permission.AUTHENTICATE_ACCOUNTS,";

	protected static final String APKTOOL_DUMMY = "APKTOOL_DUMMY";
	protected static final String ANDROID_NAVIGATION = "onBackPressed";

	private static final String LIFECYCLE_ACTIVITY =
		"onCreate,onStart,onResume,onRestart,onPause,onStop,onDestroy,onFreeze,onPostCreate,onPostResume,onSaveInstanceState,onRestoreInstanceState,onInterceptTouchEvent,onTouchEvent";
	private static final String LIFECYCLE_FRAGMENT =
		"onAttach,onDetach,onCleared,onCreateView,onDestroyView,onActivityCreated,onActivityResult,onViewStateRestored,onNewIntent,onRequestPermissionsResult,onPermissionsGranted";
	private static final String LIFECYCLE_VIEW =
		"onAttachedToWindow,onDetachedFromWindow,onInflate,onFinishInflate,onMeasure,onLayout,onDraw";
	protected static final String LIFECYCLE_ALL = "," + LIFECYCLE_ACTIVITY + "," + LIFECYCLE_FRAGMENT + "," + LIFECYCLE_VIEW + ",";

	private static final String PLOT_LIFECYCLE = "onCreate,onStart,onResume,onRestart,onPause,onStop,onDestroy,";
	private static final String PLOT_EVENT = "onClick,onItemClick,onScroll,onTouch,onCancel";
	private static final String PLOT_OTHER = "onBackPressed";
	protected static final String PLOT_ALL = "," + PLOT_LIFECYCLE + "," + PLOT_EVENT + "," + PLOT_OTHER + ",";

	protected static final String MANIFEST_TAG = "manifest";
	protected static final String APPLICATION_TAG = "application";
	protected static final String SERVICE_TAG = "service";
	protected static final String RECEIVER_TAG = "receiver";
	protected static final String PROVIDER_TAG = "provider";
	protected static final String PACKAGE_ATTR  = "package";
	protected static final String NAME_ATTR = "name";

	protected static final String PUBLIC_TAG = "public";
	protected static final String ID_TYPE = "id";
	protected static final String LAYOUT_TYPE = "layout";
	protected static final String STRING_TYPE = "string";
	protected static final String ID_ATTR = "id";
	protected static final String CLICKABLE_ATTR = "clickable";
	protected static final String ON_CLICK_ATTR = "onClick";

	protected static final String NAVIGATE_BACK_VAL = "~back_btn";
	protected static final String CONST_VAL = "~const";
	protected static final String APPLICATION_VAL = "~application";
	protected static final String SERVICE_VAL = "~service";
	protected static final String RECEIVER_VAL = "~receiver";
	protected static final String PROVIDER_VAL = "~provider";
	protected static final String LIFECYCLE_VAL = "~lifecycle";
	protected static final String UNDEFINED_VAL = "~undefined";
	protected static final String NO_LAYOUT_VAL = "~none";

	protected static final String ANDROID_CLASS = "<android.";
	protected static final String ANDROIDX_CLASS = "<androidx.";

	protected static final String JAVA_LANG_CLASS = "<java.lang.";
	protected static final String JAVA_IO_CLASS = "<java.io.";
	protected static final String JAVA_UTIL_CLASS = "<java.util.";
	protected static final String JAVA_MATH_CLASS = "<java.math.";
	protected static final String JAVA_TEXT_CLASS = "<java.text.";
	protected static final String JAVA_TIME_CLASS = "<java.time.";
	protected static final String JAVA_NIO_CLASS = "<java.nio.";
	protected static final String JAVA_SQL_CLASS = "<java.sql.";
	protected static final String DUMMY_CLASS = "<dummyMainClass";

	protected static final String DELIM = "##DELIM##";
	protected static final String TOOLBAR = "toolbar";
	protected static final String EMPTY_STRING = "";
	protected static final String TRUE_STRING = "true";
	protected static final String FALSE_STRING = "false";

	protected static final int DECODE_TIMEOUT = 180;
	protected static final int SPARK_TIMEOUT = 180;
	protected static final int CHA_TIMEOUT = 180;
	protected static final int MAX_VISIT = 30000000;
	protected static final int MAX_RERUN = 50;
	protected static final int MAX_WIDTH = 200;
	protected static final int MAX_DEPTH = 100;

	protected static final DateTimeFormatter DTF = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
}
