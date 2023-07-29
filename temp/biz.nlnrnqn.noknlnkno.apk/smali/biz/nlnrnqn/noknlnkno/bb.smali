.class public final Lbiz/nlnrnqn/noknlnkno/bb;
.super Ljava/lang/Object;


# instance fields
.field final a:Lorg/json/JSONObject;

.field final b:Lorg/json/JSONObject;

.field final c:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bb;->b:Lorg/json/JSONObject;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v0, "_weight"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_weight"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->c:I

    return-void

    :cond_0
    const-string v0, "_weight"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lbiz/nlnrnqn/noknlnkno/bb;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bb;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bb;

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/bb;->c:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bb;

    iget v5, v0, Lbiz/nlnrnqn/noknlnkno/bb;->c:I

    add-int/2addr v1, v5

    if-le v1, v3, :cond_3

    goto :goto_0

    :cond_4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bb;

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v2, v1}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-static {v2, v0}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bb;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method
