.class Lcom/waps/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/i;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :cond_0
    const-wide/32 v0, 0x6ddd00

    :try_start_0
    invoke-static {v0, v1}, Lcom/waps/i;->sleep(J)V

    const/4 v0, 0x0

    sput-object v0, Lcom/waps/AppConnect;->K:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/waps/i;->a:Lcom/waps/AppConnect;

    invoke-static {v0}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
