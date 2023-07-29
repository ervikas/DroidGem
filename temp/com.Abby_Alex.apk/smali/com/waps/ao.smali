.class Lcom/waps/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->a(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-static {}, Lcom/waps/OffersWebView;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "wrong_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    new-instance v1, Lcom/waps/x;

    iget-object v2, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    iget-object v3, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-static {v3}, Lcom/waps/OffersWebView;->b(Lcom/waps/OffersWebView;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-static {v4}, Lcom/waps/OffersWebView;->a(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/waps/x;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/waps/OffersWebView;->a:Lcom/waps/x;

    iget-object v0, p0, Lcom/waps/ao;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->c(Lcom/waps/OffersWebView;)V

    goto :goto_0
.end method
