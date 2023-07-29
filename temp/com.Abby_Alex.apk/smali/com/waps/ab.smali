.class public Lcom/waps/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcom/waps/ab;

.field private static c:Landroid/content/Context;

.field private static e:Lcom/waps/aa;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Lcom/waps/ad;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/waps/ab;->e:Lcom/waps/aa;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waps/aa;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ab;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    const-string v0, "errorLog.txt"

    iput-object v0, p0, Lcom/waps/ab;->h:Ljava/lang/String;

    sput-object p1, Lcom/waps/ab;->c:Landroid/content/Context;

    sput-object p2, Lcom/waps/ab;->e:Lcom/waps/aa;

    iput-object p3, p0, Lcom/waps/ab;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/waps/aa;Ljava/lang/String;)Lcom/waps/ab;
    .locals 1

    sget-object v0, Lcom/waps/ab;->b:Lcom/waps/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waps/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/waps/ab;-><init>(Landroid/content/Context;Lcom/waps/aa;Ljava/lang/String;)V

    sput-object v0, Lcom/waps/ab;->b:Lcom/waps/ab;

    :cond_0
    sget-object v0, Lcom/waps/ab;->b:Lcom/waps/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/waps/ab;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/waps/ab;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/waps/ac;

    invoke-direct {v1, p0, v0}, Lcom/waps/ac;-><init>(Lcom/waps/ab;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/waps/ac;->start()V

    invoke-direct {p0, p1}, Lcom/waps/ab;->b(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/waps/ab;->e:Lcom/waps/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/ab;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/waps/ab;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/waps/ab;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/waps/ab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/ab;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 5

    const/16 v4, 0x1388

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    const-string v0, "Exception"

    iget-object v2, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    const-string v0, "/Android/data/cache"

    :try_start_0
    iget-object v2, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object v2, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    new-instance v1, Lcom/waps/SDKUtils;

    sget-object v2, Lcom/waps/ab;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/waps/ab;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/ab;->h:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/waps/SDKUtils;->saveDataToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c()Lcom/waps/aa;
    .locals 1

    sget-object v0, Lcom/waps/ab;->e:Lcom/waps/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/waps/ab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/ab;->h:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v0, "/Android/data/cache"

    :try_start_0
    new-instance v1, Lcom/waps/SDKUtils;

    sget-object v2, Lcom/waps/ab;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/waps/ab;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/waps/SDKUtils;->loadStringFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ab;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v0, Lcom/waps/ab;->e:Lcom/waps/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/ab;->c:Landroid/content/Context;

    sget-object v1, Lcom/waps/ab;->e:Lcom/waps/aa;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->a(Landroid/content/Context;Lcom/waps/aa;)V

    sget-object v0, Lcom/waps/ab;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/waps/ab;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/waps/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/ad;-><init>(Lcom/waps/ab;Lcom/waps/ac;)V

    iput-object v0, p0, Lcom/waps/ab;->d:Lcom/waps/ad;

    iget-object v0, p0, Lcom/waps/ab;->d:Lcom/waps/ad;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/waps/ab;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/ab;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/ab;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
