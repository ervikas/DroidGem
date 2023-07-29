.class Lcom/waps/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/MiniAdView;


# direct methods
.method constructor <init>(Lcom/waps/MiniAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    new-instance v1, Lcom/waps/am;

    invoke-direct {v1, p0}, Lcom/waps/am;-><init>(Lcom/waps/al;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
