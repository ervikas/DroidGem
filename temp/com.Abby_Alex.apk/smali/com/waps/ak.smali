.class Lcom/waps/ak;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/waps/MiniAdView;


# direct methods
.method constructor <init>(Lcom/waps/MiniAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-static {v0}, Lcom/waps/MiniAdView;->b(Lcom/waps/MiniAdView;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/waps/MiniAdView;->e:J

    sub-long v1, v0, v2

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/waps/MiniAdView;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x3e8

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-static {v0}, Lcom/waps/MiniAdView;->c(Lcom/waps/MiniAdView;)I

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-static {v0}, Lcom/waps/MiniAdView;->d(Lcom/waps/MiniAdView;)I

    move-result v0

    invoke-static {}, Lcom/waps/MiniAdView;->a()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waps/MiniAdView;->a(Lcom/waps/MiniAdView;I)I

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-static {v0}, Lcom/waps/MiniAdView;->e(Lcom/waps/MiniAdView;)V

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/waps/MiniAdView;->a(I)I

    :cond_1
    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    iget-object v1, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    invoke-static {v1}, Lcom/waps/MiniAdView;->d(Lcom/waps/MiniAdView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/waps/MiniAdView;->b(Lcom/waps/MiniAdView;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/waps/MiniAdView;->e:J

    :cond_2
    sget v0, Lcom/waps/MiniAdView;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/waps/ak;->sleep(J)V

    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/waps/MiniAdView;->a()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/waps/ak;->a:Lcom/waps/MiniAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waps/MiniAdView;->a(Lcom/waps/MiniAdView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    return-void
.end method
