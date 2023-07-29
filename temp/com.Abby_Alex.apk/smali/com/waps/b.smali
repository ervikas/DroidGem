.class Lcom/waps/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/waps/AdView;


# direct methods
.method constructor <init>(Lcom/waps/AdView;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    iput-object p2, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->a(Lcom/waps/AdView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    iget-boolean v0, v0, Lcom/waps/AdView;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->b(Lcom/waps/AdView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v1}, Lcom/waps/AdView;->c(Lcom/waps/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waps/AdView;->a(Lcom/waps/AdView;Z)Z

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v2}, Lcom/waps/AdView;->d(Lcom/waps/AdView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v2}, Lcom/waps/AdView;->e(Lcom/waps/AdView;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, -0x1f4

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->f(Lcom/waps/AdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v1}, Lcom/waps/AdView;->c(Lcom/waps/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waps/AdView;->b(Lcom/waps/AdView;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/waps/AdView;->a(Lcom/waps/AdView;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->a(Lcom/waps/AdView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/waps/AdView;->a:Z

    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/waps/AdView;->a(Lcom/waps/AdView;Z)Z

    iget-object v0, p0, Lcom/waps/b;->a:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/waps/b;->b:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->e(Lcom/waps/AdView;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/waps/b;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
