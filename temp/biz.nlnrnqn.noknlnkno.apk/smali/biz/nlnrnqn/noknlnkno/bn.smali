.class final Lbiz/nlnrnqn/noknlnkno/bn;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bo;
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;I)[B

    move-result-object v1

    array-length v0, v1

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    :try_start_0
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lbiz/nlnrnqn/noknlnkno/bq;

    const/4 v3, 0x0

    new-instance v4, Lbiz/nlnrnqn/noknlnkno/bq;

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x20

    invoke-direct {v4, v1, v5, v6}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([BII)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v4, v0}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/br;->a([Lbiz/nlnrnqn/noknlnkno/bq;)[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    array-length v2, v0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v2, v1, v3}, Lbiz/nlnrnqn/noknlnkno/aa;->a([BI[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bo;

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bq;

    const/16 v3, 0x8

    array-length v4, v1

    add-int/lit8 v4, v4, -0x28

    invoke-direct {v2, v1, v3, v4}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([BII)V

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/aa;->a([B)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lbiz/nlnrnqn/noknlnkno/bo;-><init>(Lbiz/nlnrnqn/noknlnkno/bq;JB)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;JLbiz/nlnrnqn/noknlnkno/bc;)V
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "apk_id"

    const/16 v2, 0x445a

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pkg_name"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lbiz/nlnrnqn/noknlnkno/bc;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "o_active_toast"

    if-eqz p3, :cond_2

    iget-object v0, p3, Lbiz/nlnrnqn/noknlnkno/bc;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    iget-object v0, p3, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v0, "o_intent"

    iget-object v2, p3, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, p1, p2, v1}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    return-void

    :cond_1
    :try_start_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/io/File;J[B)V
    .locals 6

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-static {v1, p2, p3}, Lbiz/nlnrnqn/noknlnkno/aa;->a([BJ)V

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v2

    new-array v3, v3, [[B

    aput-object v1, v3, v0

    aput-object p4, v3, v4

    aput-object v2, v3, v5

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/br;->a([[B)[B

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v2, v3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method static b(Landroid/content/Context;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bo;->a()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
