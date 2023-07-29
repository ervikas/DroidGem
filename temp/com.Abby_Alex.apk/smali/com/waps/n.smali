.class Lcom/waps/n;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/n;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "AppSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "GetPointsTime"

    invoke-interface {v0, v2, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v6}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/waps/AppConnect;->getHistoryPoints(Landroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v7}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/waps/AppConnect;->getHistoryPointsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/waps/SDKUtils;

    iget-object v9, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v9}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/waps/SDKUtils;->isClient()Z

    move-result v8

    if-nez v8, :cond_0

    if-ltz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/waps/AppConnect;->o()Lcom/waps/UpdatePointsNotifier;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v8, ""

    cmp-long v8, v2, v11

    if-eqz v8, :cond_1

    cmp-long v8, v2, v11

    if-eqz v8, :cond_6

    sub-long v2, v4, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    :cond_1
    const-string v2, "UpdatePoints"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v3, v2, v0}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;ILandroid/content/SharedPreferences;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v1, v0}, Lcom/waps/AppConnect;->e(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lcom/waps/AppConnect;->o()Lcom/waps/UpdatePointsNotifier;

    move-result-object v2

    sget-object v0, Lcom/waps/AppConnect;->H:Ljava/util/Map;

    const-string v3, "failed_to_update_points"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/waps/AppConnect;->f()Lcom/waps/aa;

    move-result-object v0

    const-string v2, "http://app.wapx.cn/action/account/getinfo?"

    iget-object v3, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-static {}, Lcom/waps/AppConnect;->f()Lcom/waps/aa;

    move-result-object v0

    const-string v2, "http://app.wapx.cn/action/account/getinfo?"

    iget-object v3, p0, Lcom/waps/n;->a:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-ltz v6, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/waps/AppConnect;->o()Lcom/waps/UpdatePointsNotifier;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ltz v6, :cond_7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/waps/AppConnect;->o()Lcom/waps/UpdatePointsNotifier;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/n;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
