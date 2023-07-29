.class public abstract Lbiz/nlnrnqn/noknlnkno/q;
.super Lbiz/nlnrnqn/noknlnkno/g;


# instance fields
.field public e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/g;-><init>()V

    return-void
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

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/q;->g()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/io/File;
    .locals 13

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/af;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/q;->b()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_6

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_7

    const-wide/32 v5, 0x20000

    move-wide v7, v5

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".tmp"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v9, 0x1000

    :try_start_3
    new-array v9, v9, [B

    :goto_1
    iget-boolean v10, p0, Lbiz/nlnrnqn/noknlnkno/q;->a:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_1

    invoke-static {v5}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v1, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Long;

    const/4 v11, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lbiz/nlnrnqn/noknlnkno/q;->b([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    :goto_3
    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v3, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result-object v2

    :try_start_8
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;

    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/q;->e:Ljava/io/File;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_3
    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {v5}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v5}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    throw v0

    :cond_6
    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v5, v0

    move-object v6, v0

    move-object v0, v1

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v1, v4

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move-object v1, v4

    move-object v2, v0

    move-object v3, v6

    goto/16 :goto_3

    :catchall_5
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :catchall_6
    move-exception v1

    goto :goto_4

    :cond_7
    move-wide v7, v5

    goto/16 :goto_0
.end method
