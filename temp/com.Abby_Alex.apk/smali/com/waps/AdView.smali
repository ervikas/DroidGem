.class public Lcom/waps/AdView;
.super Ljava/lang/Object;


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/Thread;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/waps/aa;

.field private f:J

.field private g:Landroid/widget/RelativeLayout;

.field private h:I

.field private i:Z

.field private j:Landroid/webkit/WebView;

.field private k:Z

.field private l:I

.field private m:F

.field private final mHandler:Landroid/os/Handler;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ad/show?"

    sput-object v0, Lcom/waps/AdView;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AdView;->e:Lcom/waps/aa;

    iput-object v2, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    const/16 v0, 0xa

    iput v0, p0, Lcom/waps/AdView;->h:I

    iput-boolean v1, p0, Lcom/waps/AdView;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/waps/AdView;->a:Z

    iput-boolean v3, p0, Lcom/waps/AdView;->k:Z

    iput v1, p0, Lcom/waps/AdView;->l:I

    const v0, 0x40cccccd    # 6.4f

    iput v0, p0, Lcom/waps/AdView;->m:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ads.wapx.cn/action/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/waps/AdView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AdView;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AdView;->b:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AdView;->e:Lcom/waps/aa;

    iput-object v2, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    const/16 v0, 0xa

    iput v0, p0, Lcom/waps/AdView;->h:I

    iput-boolean v1, p0, Lcom/waps/AdView;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/waps/AdView;->a:Z

    iput-boolean v3, p0, Lcom/waps/AdView;->k:Z

    iput v1, p0, Lcom/waps/AdView;->l:I

    const v0, 0x40cccccd    # 6.4f

    iput v0, p0, Lcom/waps/AdView;->m:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ads.wapx.cn/action/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/waps/AdView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AdView;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AdView;->b:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/waps/AdView;->d:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AdView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/waps/AppConnect;

    invoke-direct {v1}, Lcom/waps/AppConnect;-><init>()V

    invoke-virtual {v1, p1}, Lcom/waps/AppConnect;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AdView;->o:Ljava/lang/String;

    new-instance v0, Lcom/waps/aa;

    invoke-direct {v0, p1}, Lcom/waps/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/AdView;->e:Lcom/waps/aa;

    iget-object v0, p0, Lcom/waps/AdView;->e:Lcom/waps/aa;

    invoke-static {p1, v0}, Lcom/waps/AppConnect;->a(Landroid/content/Context;Lcom/waps/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/waps/AdView;I)I
    .locals 0

    iput p1, p0, Lcom/waps/AdView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/waps/AdView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/waps/AdView;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/waps/AdView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/webkit/WebView;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    new-instance v2, Lcom/waps/SDKUtils;

    iget-object v3, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/waps/SDKUtils;->initAdWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/waps/AdView;->f:J

    new-instance v1, Lcom/waps/b;

    invoke-direct {v1, p0, v0}, Lcom/waps/b;-><init>(Lcom/waps/AdView;Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/waps/AdView;->b:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/waps/AdView;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/waps/AdView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/waps/AppConnect;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "down?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isFinshClose"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/waps/AdView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/AdView;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/waps/AdView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/waps/AdView;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/waps/AdView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/AdView;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/waps/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/waps/AdView;)J
    .locals 2

    iget-wide v0, p0, Lcom/waps/AdView;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/waps/AdView;)I
    .locals 1

    iget v0, p0, Lcom/waps/AdView;->h:I

    return v0
.end method

.method static synthetic f(Lcom/waps/AdView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/waps/AdView;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/waps/AdView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/waps/AdView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/waps/AdView;)I
    .locals 1

    iget v0, p0, Lcom/waps/AdView;->l:I

    return v0
.end method


# virtual methods
.method public DisplayAd()V
    .locals 1

    iget v0, p0, Lcom/waps/AdView;->h:I

    invoke-virtual {p0, v0}, Lcom/waps/AdView;->DisplayAd(I)V

    return-void
.end method

.method public DisplayAd(I)V
    .locals 5

    iget-object v0, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    const-string v1, "ShowAdFlag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_ad_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/waps/AdView;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v1, p0, Lcom/waps/AdView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/waps/AdView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/waps/AdView;->d:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    const-string v2, "SDKUtils"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    iget-object v0, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/waps/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waps/c;-><init>(Lcom/waps/AdView;Lcom/waps/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waps/AdView;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/AdView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waps/AdView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
