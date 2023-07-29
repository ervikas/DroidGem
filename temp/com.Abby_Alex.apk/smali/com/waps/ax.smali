.class Lcom/waps/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/SDKUtils;


# direct methods
.method constructor <init>(Lcom/waps/SDKUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ax;->a:Lcom/waps/SDKUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/waps/ax;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$100(Lcom/waps/SDKUtils;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/waps/ax;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$000(Lcom/waps/SDKUtils;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/waps/ax;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$000(Lcom/waps/SDKUtils;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
