.class final Lbiz/nlnrnqn/noknlnkno/aj;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Lbiz/nlnrnqn/noknlnkno/be;

.field final b:Lbiz/nlnrnqn/noknlnkno/bg;

.field c:Z

.field final d:I

.field e:Lbiz/nlnrnqn/noknlnkno/bd;

.field f:Ljava/util/List;

.field g:Lbiz/nlnrnqn/noknlnkno/ar;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;ILbiz/nlnrnqn/noknlnkno/bd;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iput p2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->d:I

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/aj;->e:Lbiz/nlnrnqn/noknlnkno/bd;

    iput-object p4, p0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;Lbiz/nlnrnqn/noknlnkno/be;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    const/4 v0, 0x0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->d:I

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/aj;)V
    .locals 2

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->c:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/aj;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lbiz/nlnrnqn/noknlnkno/aj;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, v1, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Lbiz/nlnrnqn/noknlnkno/bc;->a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bc;->a(Lbiz/nlnrnqn/noknlnkno/ay;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    new-instance v1, Lbiz/nlnrnqn/noknlnkno/ak;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v1, p0, v2, p1}, Lbiz/nlnrnqn/noknlnkno/ak;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/bg;Ljava/io/File;)V

    const/4 v2, 0x0

    const-string v3, "\u6fc0\u6d3b\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38\u8fde\u63a5\u518d\u91cd\u8bd5"

    new-array v4, v7, [Lbiz/nlnrnqn/noknlnkno/ac;

    new-array v5, v7, [Lbiz/nlnrnqn/noknlnkno/bc;

    aput-object v0, v5, v6

    invoke-static {v6, v5}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Z[Lbiz/nlnrnqn/noknlnkno/bc;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/ak;->a(Ljava/lang/String;Ljava/lang/String;[Lbiz/nlnrnqn/noknlnkno/ac;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bc;-><init>(Lbiz/nlnrnqn/noknlnkno/ay;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bc;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/aj;->a(ZLjava/lang/String;)V

    return-void
.end method

.method final a(ZLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/be;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/be;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/be;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/aj;->a(Ljava/io/File;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/be;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/az;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ay;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/aj;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/am;

    invoke-direct {v0, p0, p1, p2}, Lbiz/nlnrnqn/noknlnkno/am;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;ZLjava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/am;->a(Lbiz/nlnrnqn/noknlnkno/t;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ay;->a()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lbiz/nlnrnqn/noknlnkno/am;->e:Ljava/io/File;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/az;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/am;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final b()V
    .locals 1

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->c:Z

    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bg;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    if-nez v0, :cond_0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/ar;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ar;->show()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/aj;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/aj;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "a"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rec:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/aj;->b()V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v1, v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v2, v1}, Lbiz/nlnrnqn/noknlnkno/bn;->b(Landroid/content/Context;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-direct {v2, v1}, Lbiz/nlnrnqn/noknlnkno/bc;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/bc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/al;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v0, p0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/al;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/bg;Lbiz/nlnrnqn/noknlnkno/bc;)V

    const/4 v1, 0x0

    const-string v3, "\u6fc0\u6d3b\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38\u8fde\u63a5\u518d\u91cd\u8bd5"

    const/4 v4, 0x2

    new-array v4, v4, [Lbiz/nlnrnqn/noknlnkno/ac;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Lbiz/nlnrnqn/noknlnkno/bc;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Z[Lbiz/nlnrnqn/noknlnkno/bc;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/ab;->i()Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Ljava/lang/String;Ljava/lang/String;[Lbiz/nlnrnqn/noknlnkno/ac;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "a"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
