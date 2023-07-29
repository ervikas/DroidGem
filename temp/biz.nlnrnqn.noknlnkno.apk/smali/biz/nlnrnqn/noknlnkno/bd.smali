.class final Lbiz/nlnrnqn/noknlnkno/bd;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    iput v2, p0, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    const-string v0, "mode"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    const-string v0, "wall_title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->c:Ljava/lang/String;

    const-string v0, "url_offer_pic"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->d:Ljava/lang/String;

    const-string v0, "offers"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v6, Lbiz/nlnrnqn/noknlnkno/ay;

    iget v7, p0, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    invoke-direct {v6, v0, v7}, Lbiz/nlnrnqn/noknlnkno/ay;-><init>(Lorg/json/JSONObject;I)V

    iget-object v0, v6, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v6, p1}, Lbiz/nlnrnqn/noknlnkno/ay;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Lbiz/nlnrnqn/noknlnkno/bd;->a(Lbiz/nlnrnqn/noknlnkno/ay;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Lbiz/nlnrnqn/noknlnkno/ay;)V
    .locals 4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bf;

    iget v2, v0, Lbiz/nlnrnqn/noknlnkno/bf;->a:I

    iget v3, p1, Lbiz/nlnrnqn/noknlnkno/ay;->b:I

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bf;

    invoke-direct {v1, p1}, Lbiz/nlnrnqn/noknlnkno/bf;-><init>(Lbiz/nlnrnqn/noknlnkno/ay;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bf;

    invoke-virtual {v0, p1}, Lbiz/nlnrnqn/noknlnkno/bf;->a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
