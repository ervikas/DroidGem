.class Lcom/waps/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/c;


# direct methods
.method constructor <init>(Lcom/waps/c;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/d;->a:Lcom/waps/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/waps/d;->a:Lcom/waps/c;

    iget-object v0, v0, Lcom/waps/c;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->g(Lcom/waps/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
