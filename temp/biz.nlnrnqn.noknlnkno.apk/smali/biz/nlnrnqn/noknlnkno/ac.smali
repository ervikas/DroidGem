.class public final Lbiz/nlnrnqn/noknlnkno/ac;
.super Ljava/lang/Object;


# instance fields
.field final a:Lbiz/nlnrnqn/noknlnkno/ad;

.field final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/ad;Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ac;->a:Lbiz/nlnrnqn/noknlnkno/ad;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/ac;->b:Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "name"

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ad;->a(Lbiz/nlnrnqn/noknlnkno/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
