.class final Lbiz/nlnrnqn/noknlnkno/ay;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lorg/json/JSONObject;

.field f:Z

.field final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field s:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/ay;->f:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    iput p2, p0, Lbiz/nlnrnqn/noknlnkno/ay;->g:I

    const-string v1, "pkg_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    const-string v1, "o_priority"

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->b:I

    const-string v1, "o_price"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->c:I

    const-string v1, "o_active_toast"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->d:Ljava/lang/String;

    const-string v1, "o_intent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->e:Lorg/json/JSONObject;

    const-string v1, "o_icon_bytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->k:I

    const-string v1, "o_sc1_bytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->l:I

    const-string v1, "o_sc2_bytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->m:I

    const-string v1, "o_icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    const-string v1, "o_sc1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->i:Ljava/lang/String;

    const-string v1, "o_sc2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->j:Ljava/lang/String;

    const-string v1, "o_action"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->n:Ljava/lang/String;

    const-string v1, "o_coolword"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->o:Ljava/lang/String;

    const-string v1, "o_intro"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->p:Ljava/lang/String;

    const-string v1, "o_provider"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->q:Ljava/lang/String;

    const-string v1, "o_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->r:Ljava/lang/String;

    const-string v1, "apks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v4, Lbiz/nlnrnqn/noknlnkno/az;

    invoke-direct {v4, p0, v3}, Lbiz/nlnrnqn/noknlnkno/az;-><init>(Lbiz/nlnrnqn/noknlnkno/ay;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/az;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "options"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bb;

    const/4 v6, 0x0

    invoke-direct {v2, p1, v6}, Lbiz/nlnrnqn/noknlnkno/bb;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Ljava/util/List;)Lbiz/nlnrnqn/noknlnkno/bb;

    move-result-object v4

    const-string v2, "action"

    invoke-virtual {v4, v2}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "flags"

    iget-object v6, v4, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v4, Lbiz/nlnrnqn/noknlnkno/bb;->a:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    const-string v2, "categories"

    invoke-virtual {v4, v2}, Lbiz/nlnrnqn/noknlnkno/bb;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_6

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_1

    new-instance v8, Lbiz/nlnrnqn/noknlnkno/bb;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lbiz/nlnrnqn/noknlnkno/bb;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v6, v4, Lbiz/nlnrnqn/noknlnkno/bb;->b:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_6
    const-string v2, "data"

    invoke-virtual {v4, v2}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "type"

    invoke-virtual {v4, v7}, Lbiz/nlnrnqn/noknlnkno/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v7}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    :goto_3
    const-string v2, "extra"

    invoke-virtual {v4, v2}, Lbiz/nlnrnqn/noknlnkno/bb;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v2, v3

    :goto_4
    if-ge v2, v7, :cond_b

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "bool"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v4}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "yes"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "on"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_8
    move v4, v5

    :goto_5
    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_b
    return-object v0

    :cond_c
    invoke-static {v7}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto :goto_5

    :cond_e
    const-string v10, "str"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_f
    const-string v10, "byte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    goto :goto_6

    :cond_10
    const-string v10, "short"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    goto :goto_6

    :cond_11
    const-string v10, "int"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    :cond_12
    const-string v10, "long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_6

    :cond_13
    const-string v10, "float"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_6

    :cond_14
    const-string v10, "double"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6
.end method

.method private a(Landroid/content/Context;Z)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "p/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ae;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "p/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ae;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    invoke-static {p1, v2, v0, v1, v3}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    invoke-static {p1, v2, v0, v1, v3}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/ay;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/az;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/az;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/az;->a()Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final a()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "o/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "p"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "o/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mdb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/ay;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, v1}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1, v0}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v0}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    invoke-static {p1, v4, v2, v3, v5}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    :cond_3
    invoke-direct {p0, p1, v1}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    invoke-static {p1, v4, v2, v3, v5}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;Ljava/io/File;J[B)V

    :cond_4
    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    :cond_5
    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/ay;->f:Z

    move v0, v1

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_1
.end method

.method final c(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/ay;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ay;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/az;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/az;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/be;

    invoke-direct {v1, v0}, Lbiz/nlnrnqn/noknlnkno/be;-><init>(Lbiz/nlnrnqn/noknlnkno/az;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
