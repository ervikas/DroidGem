.class final Lbiz/nlnrnqn/noknlnkno/y;
.super Lbiz/nlnrnqn/noknlnkno/q;


# instance fields
.field f:Lbiz/nlnrnqn/noknlnkno/x;

.field g:Ljava/lang/String;

.field h:Ljava/io/File;

.field i:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/w;Lbiz/nlnrnqn/noknlnkno/x;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/q;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->i:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    iput-object p4, p0, Lbiz/nlnrnqn/noknlnkno/y;->h:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/io/File;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/w;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    invoke-interface {v1}, Lbiz/nlnrnqn/noknlnkno/x;->a()I

    move-result v1

    invoke-static {p1, v1}, Lbiz/nlnrnqn/noknlnkno/ai;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    const/4 v3, 0x1

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lbiz/nlnrnqn/noknlnkno/x;->a(ZLandroid/graphics/Bitmap;)V

    :cond_0
    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/w;->a(Lbiz/nlnrnqn/noknlnkno/w;)V

    :cond_1
    return-void
.end method

.method protected final c()V
    .locals 1

    invoke-super {p0}, Lbiz/nlnrnqn/noknlnkno/q;->c()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    return-void
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/y;->g()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/io/File;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/w;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbiz/nlnrnqn/noknlnkno/w;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->h:Ljava/io/File;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/y;->h:Ljava/io/File;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    invoke-interface {v3}, Lbiz/nlnrnqn/noknlnkno/x;->a()I

    move-result v3

    invoke-static {v2, v3}, Lbiz/nlnrnqn/noknlnkno/ai;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    const/4 v3, 0x1

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/y;->g:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lbiz/nlnrnqn/noknlnkno/x;->a(ZLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->h:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/y;->f:Lbiz/nlnrnqn/noknlnkno/x;

    invoke-interface {v0}, Lbiz/nlnrnqn/noknlnkno/x;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Lbiz/nlnrnqn/noknlnkno/q;->g()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
