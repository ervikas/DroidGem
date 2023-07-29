.class public final Lbiz/nlnrnqn/noknlnkno/w;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/File;

.field b:I

.field c:J

.field d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/w;->a:Ljava/io/File;

    const/16 v0, 0x64

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/w;->b:I

    const-wide/32 v0, 0x337f9800

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/w;->c:J

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/w;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/w;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/w;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lbiz/nlnrnqn/noknlnkno/w;->a:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lbiz/nlnrnqn/noknlnkno/z;

    invoke-direct {v5, v6}, Lbiz/nlnrnqn/noknlnkno/z;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/w;->b:I

    if-le v1, v3, :cond_2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/w;->b:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int v3, v1, v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/z;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/z;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILbiz/nlnrnqn/noknlnkno/t;Lbiz/nlnrnqn/noknlnkno/x;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/w;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p4, v7, v0}, Lbiz/nlnrnqn/noknlnkno/x;->a(ZLandroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/w;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    const/16 v4, 0x3d

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, p2

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lbiz/nlnrnqn/noknlnkno/w;->c:J

    sub-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-ltz v1, :cond_2

    invoke-interface {p4}, Lbiz/nlnrnqn/noknlnkno/x;->a()I

    move-result v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ai;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/w;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v7, v1}, Lbiz/nlnrnqn/noknlnkno/x;->a(ZLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-interface {p4}, Lbiz/nlnrnqn/noknlnkno/x;->d()V

    if-eqz p3, :cond_0

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/y;

    invoke-direct {v1, p0, p4, p1, v0}, Lbiz/nlnrnqn/noknlnkno/y;-><init>(Lbiz/nlnrnqn/noknlnkno/w;Lbiz/nlnrnqn/noknlnkno/x;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, p3}, Lbiz/nlnrnqn/noknlnkno/q;->a(Lbiz/nlnrnqn/noknlnkno/t;)V

    invoke-interface {p4}, Lbiz/nlnrnqn/noknlnkno/x;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v0, v1, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/q;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
