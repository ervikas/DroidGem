.class public abstract Lbiz/nlnrnqn/noknlnkno/bt;
.super Landroid/app/Service;

# interfaces
.implements Lbiz/nlnrnqn/noknlnkno/ah;


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field b:J

.field private c:Lbiz/nlnrnqn/noknlnkno/cd;

.field private final d:Lbiz/nlnrnqn/noknlnkno/bu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->b:J

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bu;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bu;-><init>(Lbiz/nlnrnqn/noknlnkno/bt;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->d:Lbiz/nlnrnqn/noknlnkno/bu;

    return-void
.end method

.method private a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/bt;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    return-object v0
.end method

.method private static b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 6

    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "allowCoreThreadTimeOut"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-wide/16 v2, 0xb4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c()Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->c:Lbiz/nlnrnqn/noknlnkno/cd;

    if-nez v0, :cond_0

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->b(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/cd;->a([B)Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lbiz/nlnrnqn/noknlnkno/cd;->a:J

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->c:Lbiz/nlnrnqn/noknlnkno/cd;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->c:Lbiz/nlnrnqn/noknlnkno/cd;

    return-object v0
.end method


# virtual methods
.method public final a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/cd;->a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p1, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v3, p1, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iget v4, p1, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->c:Lbiz/nlnrnqn/noknlnkno/cd;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->c:Lbiz/nlnrnqn/noknlnkno/cd;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Z)Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 5

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bw;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/bw;-><init>(Lbiz/nlnrnqn/noknlnkno/bt;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->c()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->c()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lbiz/nlnrnqn/noknlnkno/cd;->a:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lbiz/nlnrnqn/noknlnkno/bt;->b:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    iget-wide v3, p0, Lbiz/nlnrnqn/noknlnkno/bt;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bw;

    invoke-direct {v2, p0}, Lbiz/nlnrnqn/noknlnkno/bw;-><init>(Lbiz/nlnrnqn/noknlnkno/bt;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->d:Lbiz/nlnrnqn/noknlnkno/bu;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    const-wide/16 v9, 0x8ac

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba0

    const-wide/32 v4, 0x36ee80

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bw;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/bw;-><init>(Lbiz/nlnrnqn/noknlnkno/bt;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x258

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bv;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/bv;-><init>(Lbiz/nlnrnqn/noknlnkno/bt;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v9

    move-wide v4, v9

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bt;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
