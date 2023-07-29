.class Lcom/waps/w;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/waps/AppConnect;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/waps/w;->b:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/w;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/w;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/w;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/w;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/waps/AppConnect;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/w;->b:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->n(Lcom/waps/AppConnect;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/waps/AppConnect;->f()Lcom/waps/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/w;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/w;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/w;->b:Lcom/waps/AppConnect;

    invoke-static {v0, v3}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;Z)Z

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/waps/w;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/w;->b:Lcom/waps/AppConnect;

    iget-object v1, p0, Lcom/waps/w;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->i(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/waps/w;->c:Ljava/lang/String;

    const-string v1, "push/api_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "APP_SDK"

    const-string v1, "== Get pushad by api =="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/w;->b:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PushAd_CreateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/w;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/waps/w;->a(Ljava/lang/Boolean;)V

    return-void
.end method
