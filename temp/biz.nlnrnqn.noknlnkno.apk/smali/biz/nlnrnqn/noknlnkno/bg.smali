.class public abstract Lbiz/nlnrnqn/noknlnkno/bg;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field k:Lbiz/nlnrnqn/noknlnkno/ah;

.field l:F

.field m:F

.field n:Lbiz/nlnrnqn/noknlnkno/t;

.field o:J

.field p:Lbiz/nlnrnqn/noknlnkno/aj;

.field q:Z

.field r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->l:F

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->m:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->o:J

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/16 v1, 0x400

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eq v2, p1, :cond_1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private varargs a([I)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(F)I
    .locals 2

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->l:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->l:F

    :cond_0
    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->l:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method final a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/bg;->startActivity(Landroid/content/Intent;)V

    invoke-static {p2}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected abstract a(I)Z
.end method

.method protected final b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->b([B)[B

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public final b(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->v()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v3

    const/4 v2, -0x1

    if-eqz v3, :cond_2

    iget v2, v3, Lbiz/nlnrnqn/noknlnkno/cd;->b:I

    :cond_2
    if-gez v2, :cond_3

    move v2, v1

    :cond_3
    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->p()B

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bh;

    invoke-direct {v2, p0}, Lbiz/nlnrnqn/noknlnkno/bh;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    iget-boolean v2, v3, Lbiz/nlnrnqn/noknlnkno/cd;->c:Z

    if-eqz v2, :cond_0

    :cond_6
    if-nez v3, :cond_8

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bi;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bi;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbiz/nlnrnqn/noknlnkno/bi;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bj;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bj;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    const-string v2, "\u51c6\u5907\u4e2d"

    const-string v3, "\u6fc0\u6d3b\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38\u8fde\u63a5\u518d\u91cd\u8bd5"

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bj;->k()[Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/bj;->a(Ljava/lang/String;Ljava/lang/String;[Lbiz/nlnrnqn/noknlnkno/ac;)V

    move v0, v1

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected abstract d()Ljava/lang/Class;
.end method

.method protected abstract e()I
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected abstract h()I
.end method

.method protected abstract i()[I
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    return-void
.end method

.method protected final m()Z
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final n()V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/aj;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->o:J

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->t()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->o:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(I)Z

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(I)Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->c()V

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/t;

    invoke-direct {v0}, Lbiz/nlnrnqn/noknlnkno/t;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lbiz/nlnrnqn/noknlnkno/bg;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->j()Z

    move-result v0

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Z)V

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->setContentView(I)V

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->i()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a([I)V

    :cond_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->f()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->n()V

    invoke-virtual {p0, p0}, Lbiz/nlnrnqn/noknlnkno/bg;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/t;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(I)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->p()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->b()V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    check-cast p2, Lbiz/nlnrnqn/noknlnkno/bu;

    invoke-virtual {p2}, Lbiz/nlnrnqn/noknlnkno/bu;->a()Lbiz/nlnrnqn/noknlnkno/ah;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ah;->a(Z)Lbiz/nlnrnqn/noknlnkno/cd;

    :cond_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->g()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/t;->b()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method final p()B
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->v()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/cd;->f:I

    :goto_0
    iget-wide v6, v5, Lbiz/nlnrnqn/noknlnkno/bo;->a:J

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    iput-boolean v3, p0, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lbiz/nlnrnqn/noknlnkno/bo;->a()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v0, "pkg_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "o_intent"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v7, v0}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p0, v7}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    const-string v7, "o_active_toast"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Landroid/content/Intent;Ljava/lang/String;)V

    iget-wide v6, v5, Lbiz/nlnrnqn/noknlnkno/bo;->a:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iget-object v0, v5, Lbiz/nlnrnqn/noknlnkno/bo;->b:Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const/16 v8, 0x8

    new-array v8, v8, [B

    new-instance v9, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v9, v8}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V

    invoke-static {v8, v6, v7}, Lbiz/nlnrnqn/noknlnkno/aa;->a([BJ)V

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v7, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v7, v6}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V

    new-array v6, v10, [Lbiz/nlnrnqn/noknlnkno/bq;

    aput-object v9, v6, v3

    aput-object v0, v6, v2

    aput-object v7, v6, v1

    invoke-static {v6}, Lbiz/nlnrnqn/noknlnkno/br;->a([Lbiz/nlnrnqn/noknlnkno/bq;)[B

    move-result-object v1

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    const/4 v6, 0x3

    new-array v6, v6, [Lbiz/nlnrnqn/noknlnkno/bq;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    new-instance v7, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v7, v1}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V

    aput-object v7, v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v0, v6

    :goto_3
    if-ge v3, v0, :cond_3

    aget-object v4, v6, v3

    iget-object v5, v4, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v7, v4, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iget v4, v4, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    invoke-virtual {v1, v5, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    move v1, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_4
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v3

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto/16 :goto_2
.end method

.method public final q()V
    .locals 3

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ca;

    invoke-direct {v0}, Lbiz/nlnrnqn/noknlnkno/ca;-><init>()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5173\u4e8e"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u5173\u95ed"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected final r()V
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final s()Z
    .locals 1

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbiz/nlnrnqn/noknlnkno/bg;->o:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->finish()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->o:J

    const-string v0, "\u5feb\u901f\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u5c06\u9000\u51fa"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public final v()Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ah;->a(Z)Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->v()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lbiz/nlnrnqn/noknlnkno/cd;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
