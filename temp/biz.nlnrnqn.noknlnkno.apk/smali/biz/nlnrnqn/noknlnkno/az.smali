.class final Lbiz/nlnrnqn/noknlnkno/az;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Lbiz/nlnrnqn/noknlnkno/ay;

.field final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/ay;Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    const-string v0, "k_bytes"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    const-string v0, "k_sdk_min"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->c:I

    const-string v0, "k_sdk_max"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->d:I

    const-string v0, "k_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->a:Ljava/lang/String;

    const-string v0, "k_sha"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->e:Ljava/lang/String;

    const-string v0, "k_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->f:Ljava/lang/String;

    const-string v0, "k_versionName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ag;->b(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->b([B)[B

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()[B
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "k_id"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "k_sha"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/az;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lbiz/nlnrnqn/noknlnkno/be;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ay;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ay;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/az;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/az;->a:Ljava/lang/String;

    const-string v5, "k_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/az;->e:Ljava/lang/String;

    const-string v5, "k_sha"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/be;

    invoke-direct {v0, p0, v3}, Lbiz/nlnrnqn/noknlnkno/be;-><init>(Lbiz/nlnrnqn/noknlnkno/az;Ljava/io/File;)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v4, Lbiz/nlnrnqn/noknlnkno/v;->a:[Lbiz/nlnrnqn/noknlnkno/ba;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    if-eqz v6, :cond_3

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    iget v7, v6, Lbiz/nlnrnqn/noknlnkno/ba;->c:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->a:Ljava/lang/String;

    iget-object v7, v6, Lbiz/nlnrnqn/noknlnkno/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/az;->e:Ljava/lang/String;

    iget-object v7, v6, Lbiz/nlnrnqn/noknlnkno/ba;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v1, v6, Lbiz/nlnrnqn/noknlnkno/ba;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lbiz/nlnrnqn/noknlnkno/be;-><init>(Lbiz/nlnrnqn/noknlnkno/az;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/az;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ay;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/az;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->g:Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ay;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->c:I

    if-lt v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->d:I

    if-lez v1, :cond_1

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/az;->d:I

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
