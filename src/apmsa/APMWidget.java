package apmsa;

public class APMWidget {
	private String widgetXml = null;
	private String widgetTag = null;
	private String widgetId = null;
	private String widgetAction = null;

	protected APMWidget() { }

	protected String getWidgetXml() {
		return widgetXml;
	}

	protected void setWidgetXml(String widgetXml) {
		this.widgetXml = widgetXml;
	}

	protected String getWidgetTag() {
		return widgetTag;
	}

	protected void setWidgetTag(String widgetTag) {
		this.widgetTag = widgetTag;
	}

	protected String getWidgetId() {
		return widgetId;
	}

	protected void setWidgetId(String widgetId) {
		this.widgetId = widgetId;
	}

	protected String getWidgetAction() {
		return widgetAction;
	}

	protected void setWidgetAction(String widgetAction) {
		this.widgetAction = widgetAction;
	}
}
