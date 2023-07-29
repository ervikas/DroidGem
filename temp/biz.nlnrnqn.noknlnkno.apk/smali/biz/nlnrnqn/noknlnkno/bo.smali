.class final Lbiz/nlnrnqn/noknlnkno/bo;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Lbiz/nlnrnqn/noknlnkno/bq;


# direct methods
.method private constructor <init>(Lbiz/nlnrnqn/noknlnkno/bq;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bo;->b:Lbiz/nlnrnqn/noknlnkno/bq;

    iput-wide p2, p0, Lbiz/nlnrnqn/noknlnkno/bo;->a:J

    return-void
.end method

.method synthetic constructor <init>(Lbiz/nlnrnqn/noknlnkno/bq;JB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbiz/nlnrnqn/noknlnkno/bo;-><init>(Lbiz/nlnrnqn/noknlnkno/bq;J)V

    return-void
.end method


# virtual methods
.method final a()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bo;->b:Lbiz/nlnrnqn/noknlnkno/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bo;->b:Lbiz/nlnrnqn/noknlnkno/bq;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
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
