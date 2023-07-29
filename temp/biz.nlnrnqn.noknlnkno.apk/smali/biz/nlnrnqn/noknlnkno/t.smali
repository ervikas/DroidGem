.class public final Lbiz/nlnrnqn/noknlnkno/t;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;

.field b:Ljava/util/concurrent/ConcurrentHashMap;

.field c:J

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->c:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/g;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/g;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lbiz/nlnrnqn/noknlnkno/g;->a(Z)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method
