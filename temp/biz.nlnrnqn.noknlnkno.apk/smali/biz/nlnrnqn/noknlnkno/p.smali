.class public abstract Lbiz/nlnrnqn/noknlnkno/p;
.super Lbiz/nlnrnqn/noknlnkno/g;


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;-><init>()V

    return-void
.end method

.method private h()Lbiz/nlnrnqn/noknlnkno/bq;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/af;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/p;->b()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lbiz/nlnrnqn/noknlnkno/p;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/p;->g()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, v0}, Lbiz/nlnrnqn/noknlnkno/bp;->a([B[B)[B

    move-result-object v0

    move-object v3, v0

    :goto_0
    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/p;->e:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ae;->a([B)Lbiz/nlnrnqn/noknlnkno/bq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_1
    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v0, v3}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lbiz/nlnrnqn/noknlnkno/t;)V
    .locals 0

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/t;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/p;->h()Lbiz/nlnrnqn/noknlnkno/bq;

    move-result-object v0

    return-object v0
.end method

.method protected g()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
