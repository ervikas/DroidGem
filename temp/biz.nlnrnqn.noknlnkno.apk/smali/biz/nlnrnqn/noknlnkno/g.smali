.class abstract Lbiz/nlnrnqn/noknlnkno/g;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static i:Lbiz/nlnrnqn/noknlnkno/n;


# instance fields
.field protected a:Z

.field b:Ljava/lang/ref/WeakReference;

.field c:J

.field d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lorg/apache/http/HttpEntity;

.field private final j:Ljava/util/concurrent/FutureTask;

.field private volatile k:Lbiz/nlnrnqn/noknlnkno/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/h;

    invoke-direct {v0}, Lbiz/nlnrnqn/noknlnkno/h;-><init>()V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/g;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->g:Z

    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->a:Z

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/o;->a:Lbiz/nlnrnqn/noknlnkno/o;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->k:Lbiz/nlnrnqn/noknlnkno/o;

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/g;->i:Lbiz/nlnrnqn/noknlnkno/n;

    if-nez v0, :cond_0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/n;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/n;-><init>(B)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/g;->i:Lbiz/nlnrnqn/noknlnkno/n;

    :cond_0
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/j;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/j;-><init>(Lbiz/nlnrnqn/noknlnkno/g;)V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/k;

    invoke-direct {v1, p0, v0}, Lbiz/nlnrnqn/noknlnkno/k;-><init>(Lbiz/nlnrnqn/noknlnkno/g;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->j:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v7, Lbiz/nlnrnqn/noknlnkno/g;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Lbiz/nlnrnqn/noknlnkno/i;

    invoke-direct {v8}, Lbiz/nlnrnqn/noknlnkno/i;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/g;)V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;->h()V

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/g;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lbiz/nlnrnqn/noknlnkno/o;->c:Lbiz/nlnrnqn/noknlnkno/o;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->k:Lbiz/nlnrnqn/noknlnkno/o;

    return-void

    :cond_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/g;->c()V

    goto :goto_0
.end method

.method static synthetic f()Lbiz/nlnrnqn/noknlnkno/n;
    .locals 1

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/g;->i:Lbiz/nlnrnqn/noknlnkno/n;

    return-object v0
.end method

.method private g()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/t;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return-void

    :cond_0
    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/g;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->k:Lbiz/nlnrnqn/noknlnkno/o;

    sget-object v2, Lbiz/nlnrnqn/noknlnkno/o;->a:Lbiz/nlnrnqn/noknlnkno/o;

    if-eq v0, v2, :cond_2

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/l;->a:[I

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/g;->k:Lbiz/nlnrnqn/noknlnkno/o;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/o;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_2
    sget-object v0, Lbiz/nlnrnqn/noknlnkno/o;->b:Lbiz/nlnrnqn/noknlnkno/o;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->k:Lbiz/nlnrnqn/noknlnkno/o;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lbiz/nlnrnqn/noknlnkno/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, v0, Lbiz/nlnrnqn/noknlnkno/t;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/g;->d:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->j:Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/t;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lbiz/nlnrnqn/noknlnkno/g;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbiz/nlnrnqn/noknlnkno/t;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Lbiz/nlnrnqn/noknlnkno/t;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p1, Lbiz/nlnrnqn/noknlnkno/t;->c:J

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->c:J

    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 1

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/g;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->g:Z

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/g;->h:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;->g()V

    return-void
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/t;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/g;->d:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->a:Z

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected final a(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    iget-boolean v3, p0, Lbiz/nlnrnqn/noknlnkno/g;->a:Z

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected final b()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->h:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->h:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/g;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/g;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/g;->g:Z

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;->g()V

    return-void
.end method

.method protected final varargs b([Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/g;->i:Lbiz/nlnrnqn/noknlnkno/n;

    const/4 v1, 0x2

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/m;

    invoke-direct {v2, p0, p1}, Lbiz/nlnrnqn/noknlnkno/m;-><init>(Lbiz/nlnrnqn/noknlnkno/g;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/n;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected abstract d()Ljava/lang/Object;
.end method

.method protected final e()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;->h()V

    return-void
.end method
