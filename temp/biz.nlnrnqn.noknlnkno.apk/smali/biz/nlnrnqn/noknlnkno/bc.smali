.class final Lbiz/nlnrnqn/noknlnkno/bc;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lorg/json/JSONObject;

.field d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/ay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/aa;->a()[B

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->a:Ljava/lang/String;

    iget v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->c:I

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->f:I

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->d:Ljava/lang/String;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->b:Ljava/lang/String;

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->e:Lorg/json/JSONObject;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    iget v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->g:I

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->d:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pkg_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    const-string v0, "award_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->a:Ljava/lang/String;

    const-string v0, "o_active_toast"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->b:Ljava/lang/String;

    const-string v0, "o_intent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    const-string v0, "o_price"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->f:I

    const-string v0, "mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->d:I

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bc;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lbiz/nlnrnqn/noknlnkno/bn;->b(Landroid/content/Context;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bc;-><init>(Lorg/json/JSONObject;)V
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


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "award_id"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pkg_name"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "o_active_toast"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mode"

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "o_intent"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "o_price"

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Z)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "award_id"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pkg_name"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "o_price"

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mode"

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bc;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "finish"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lbiz/nlnrnqn/noknlnkno/ay;)Z
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    iget-object v1, p1, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->f:I

    iget v1, p1, Lbiz/nlnrnqn/noknlnkno/ay;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->d:I

    iget v1, p1, Lbiz/nlnrnqn/noknlnkno/ay;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pre"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bc;->e:Ljava/lang/String;

    return-object v0
.end method
