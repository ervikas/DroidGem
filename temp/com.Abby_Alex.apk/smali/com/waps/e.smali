.class Lcom/waps/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/waps/c;


# direct methods
.method constructor <init>(Lcom/waps/c;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iput-object p2, p0, Lcom/waps/e;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v0, v0, Lcom/waps/c;->a:Lcom/waps/AdView;

    new-instance v1, Lcom/waps/SDKUtils;

    iget-object v2, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v2, v2, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v2}, Lcom/waps/AdView;->a(Lcom/waps/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/waps/SDKUtils;->initAdWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/waps/AdView;->a(Lcom/waps/AdView;I)I

    const-string v0, "error"

    iget-object v1, p0, Lcom/waps/e;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v0, v0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->f(Lcom/waps/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v0, v0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->g(Lcom/waps/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v2, v2, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v2}, Lcom/waps/AdView;->i(Lcom/waps/AdView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v0, v0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->g(Lcom/waps/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/waps/e;->b:Lcom/waps/c;

    iget-object v2, v2, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v2}, Lcom/waps/AdView;->i(Lcom/waps/AdView;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
