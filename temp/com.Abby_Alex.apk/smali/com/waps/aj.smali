.class Lcom/waps/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/MiniAdView;


# direct methods
.method constructor <init>(Lcom/waps/MiniAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/aj;->a:Lcom/waps/MiniAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/waps/aj;->a:Lcom/waps/MiniAdView;

    invoke-static {v0}, Lcom/waps/MiniAdView;->a(Lcom/waps/MiniAdView;)V

    return-void
.end method
