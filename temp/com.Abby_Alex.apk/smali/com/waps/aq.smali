.class Lcom/waps/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/x;->e:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    iget-object v3, v3, Lcom/waps/OffersWebView;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    iget-object v3, v3, Lcom/waps/OffersWebView;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v1, v0}, Lcom/waps/OffersWebView;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    new-instance v1, Lcom/waps/z;

    iget-object v2, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    iget-object v2, v2, Lcom/waps/OffersWebView;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/waps/z;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/waps/OffersWebView;->d:Lcom/waps/z;

    iget-object v0, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    iget-object v0, v0, Lcom/waps/OffersWebView;->a:Lcom/waps/x;

    iget-object v1, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    iget-object v1, v1, Lcom/waps/OffersWebView;->d:Lcom/waps/z;

    invoke-virtual {v0, v1}, Lcom/waps/x;->a(Lcom/waps/z;)V

    iget-object v0, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    invoke-static {v0}, Lcom/waps/OffersWebView;->d(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    invoke-static {v1}, Lcom/waps/OffersWebView;->d(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/aq;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    :cond_0
    return-void
.end method
