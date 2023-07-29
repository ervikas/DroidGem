.class Lcom/waps/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/SDKUtils;


# direct methods
.method constructor <init>(Lcom/waps/SDKUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/au;->a:Lcom/waps/SDKUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/waps/au;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$100(Lcom/waps/SDKUtils;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/waps/au;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$200(Lcom/waps/SDKUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
