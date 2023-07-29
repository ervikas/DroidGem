.class public abstract Lbiz/nlnrnqn/noknlnkno/s;
.super Lbiz/nlnrnqn/noknlnkno/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)V
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/s;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
