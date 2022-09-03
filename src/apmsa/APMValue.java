package apmsa;

public class APMValue {
	private String apkName = null;
	private String wgtid = null;
	private String widget = null;
	private String layout = null;
	private String root = null;
	private String parent = null;
	private String method = null;
	private String permission = null;

	protected APMValue() { }

	protected String getApkName() {
		return apkName;
	}

	protected void setApkName(String apkName) {
		this.apkName = apkName;
	}

	protected String getWgtid() {
		return wgtid;
	}

	protected void setWgtid(String wgtid) {
		this.wgtid = wgtid;
	}

	protected String getWidget() {
		return widget;
	}

	protected void setWidget(String widget) {
		this.widget = widget;
	}

	protected String getLayout() {
		return layout;
	}

	protected void setLayout(String layout) {
		this.layout = layout;
	}

	protected String getRoot() {
		return root;
	}

	protected void setRoot(String root) {
		this.root = root;
	}

	protected String getParent() {
		return parent;
	}

	protected void setParent(String parent) {
		this.parent = parent;
	}

	protected String getMethod() {
		return method;
	}

	protected void setMethod(String method) {
		this.method = method;
	}

	protected String getPermission() {
		return permission;
	}

	protected void setPermission(String permission) {
		this.permission = permission;
	}
}
