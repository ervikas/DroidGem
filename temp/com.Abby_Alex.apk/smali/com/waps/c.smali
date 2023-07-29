.class Lcom/waps/c;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/waps/AdView;


# direct methods
.method private constructor <init>(Lcom/waps/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AdView;Lcom/waps/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/c;-><init>(Lcom/waps/AdView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->h(Lcom/waps/AdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/waps/e;

    invoke-direct {v1, p0, p1}, Lcom/waps/e;-><init>(Lcom/waps/c;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    :try_start_0
    const-string v1, ""

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->h(Lcom/waps/AdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/waps/d;

    invoke-direct {v1, p0}, Lcom/waps/d;-><init>(Lcom/waps/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/waps/AdView;->b(Lcom/waps/AdView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "_self"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    const-string v2, ""

    const-string v3, "browser"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "browser="

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "ad_type"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "ad_type="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cpc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0, p2}, Lcom/waps/AdView;->a(Lcom/waps/AdView;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v3, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v3}, Lcom/waps/AdView;->a(Lcom/waps/AdView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, p2}, Lcom/waps/SDKUtils;->openUrlByBrowser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0, p2}, Lcom/waps/AdView;->a(Lcom/waps/AdView;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0, p2}, Lcom/waps/AdView;->a(Lcom/waps/AdView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
