.class final Lbiz/nlnrnqn/noknlnkno/cd;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field final b:I

.field final c:Z

.field final d:Z

.field final e:Z

.field final f:I


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lbiz/nlnrnqn/noknlnkno/cd;->a:J

    const-string v0, "k_frees"

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/cd;->b:I

    const-string v0, "p_offerTimes"

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/cd;->f:I

    const-string v0, "p_audited"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/cd;->c:Z

    const-string v0, "p_notice_install"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/cd;->d:Z

    const-string v0, "p_show_size_nwifi"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/cd;->e:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/bq;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lbiz/nlnrnqn/noknlnkno/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/cd;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/cd;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([B)Lbiz/nlnrnqn/noknlnkno/cd;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/ae;->a([B)Lbiz/nlnrnqn/noknlnkno/bq;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lbiz/nlnrnqn/noknlnkno/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/cd;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/cd;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
