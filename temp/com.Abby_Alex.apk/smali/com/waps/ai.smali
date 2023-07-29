.class Lcom/waps/ai;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/waps/MiniAdView;


# direct methods
.method constructor <init>(Lcom/waps/MiniAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ai;->a:Lcom/waps/MiniAdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/waps/ai;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    const-string v1, "ShowAdFlag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_mini_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/ai;->a:Lcom/waps/MiniAdView;

    invoke-virtual {v0}, Lcom/waps/MiniAdView;->showADS()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/waps/MiniAdView;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-wide/32 v0, 0x6ddd00

    :try_start_1
    invoke-static {v0, v1}, Lcom/waps/ai;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/waps/ai;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
