.class Lcom/waps/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/u;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/u;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/waps/u;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/waps/AppConnect;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waps/AppConnect;->e(Z)Z

    invoke-static {}, Lcom/waps/AppConnect;->q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/waps/AppConnect;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/waps/u;->a:Lcom/waps/AppConnect;

    invoke-virtual {v0}, Lcom/waps/AppConnect;->getIconAd()V

    goto :goto_0
.end method
