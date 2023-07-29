.class public final Lcom/waps/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field b:Landroid/content/Context;

.field final synthetic c:Lcom/waps/MiniAdView;


# direct methods
.method public constructor <init>(Lcom/waps/MiniAdView;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/waps/an;->c:Lcom/waps/MiniAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/waps/an;->a:I

    iput p3, p0, Lcom/waps/an;->a:I

    iput-object p2, p0, Lcom/waps/an;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/waps/MiniAdView;->b()Ljava/util/List;

    move-result-object v1

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v3, p0, Lcom/waps/an;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/an;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/an;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->g()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/an;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->d()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/an;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->e()Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v1, ""

    iget-object v7, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :try_start_1
    iget-object v8, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "CLIENT_PACKAGE"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_7

    :goto_0
    move-object v1, v0

    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    iget-object v2, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/waps/AppConnect;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v1, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Lcom/waps/SDKUtils;->openUrlByBrowser(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/an;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/waps/AppConnect;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CLIENT_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "offers_webview_tag"

    const-string v2, "OffersWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "false"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "isFinshClose"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v1, p0, Lcom/waps/an;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method
