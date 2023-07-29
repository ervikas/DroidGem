.class abstract Lbiz/nlnrnqn/noknlnkno/ab;
.super Lbiz/nlnrnqn/noknlnkno/s;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field g:Lbiz/nlnrnqn/noknlnkno/bg;

.field h:Landroid/app/ProgressDialog;

.field i:Ljava/lang/String;

.field j:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;)V
    .locals 1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/s;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Lbiz/nlnrnqn/noknlnkno/t;)V

    return-void
.end method

.method static a(ZLjava/util/Collection;)Lbiz/nlnrnqn/noknlnkno/ac;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bc;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bc;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "awards"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ac;

    sget-object v3, Lbiz/nlnrnqn/noknlnkno/ad;->a:Lbiz/nlnrnqn/noknlnkno/ad;

    invoke-direct {v0, v3, v2}, Lbiz/nlnrnqn/noknlnkno/ac;-><init>(Lbiz/nlnrnqn/noknlnkno/ad;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static varargs a(Z[Lbiz/nlnrnqn/noknlnkno/bc;)Lbiz/nlnrnqn/noknlnkno/ac;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lbiz/nlnrnqn/noknlnkno/ab;->a(ZLjava/util/Collection;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a([Lbiz/nlnrnqn/noknlnkno/ac;)[B
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    if-eqz v5, :cond_0

    iget-object v5, v5, Lbiz/nlnrnqn/noknlnkno/ac;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "actions"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_id"

    sget v3, Lbiz/nlnrnqn/noknlnkno/ae;->a:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "apk_id"

    const/16 v3, 0x445a

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "c_id"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sv"

    const/16 v3, 0x44

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "m_id"

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ae;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m_imsi"

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m_model"

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/ae;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sim"

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/ae;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sdk"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "net_type"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/bs;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/aw;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/aw;-><init>(Landroid/content/Context;)V

    const-string v1, "device"

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/aw;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/ae;->a()[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bp;->a([B[B)[B

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static d(Ljava/lang/String;)Lbiz/nlnrnqn/noknlnkno/ac;
    .locals 3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "target"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "points"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ac;

    sget-object v2, Lbiz/nlnrnqn/noknlnkno/ad;->b:Lbiz/nlnrnqn/noknlnkno/ad;

    invoke-direct {v0, v2, v1}, Lbiz/nlnrnqn/noknlnkno/ac;-><init>(Lbiz/nlnrnqn/noknlnkno/ad;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i()Lbiz/nlnrnqn/noknlnkno/ac;
    .locals 1

    const-string v0, "apk:17498"

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ab;->d(Ljava/lang/String;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lbiz/nlnrnqn/noknlnkno/ad;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->j:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->j:Lorg/json/JSONObject;

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ad;->a(Lbiz/nlnrnqn/noknlnkno/ad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Lbiz/nlnrnqn/noknlnkno/ac;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/ab;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "http://a1.adchitu.com/ct/"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "req.jsp?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lbiz/nlnrnqn/noknlnkno/ae;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p3}, Lbiz/nlnrnqn/noknlnkno/ab;->a([Lbiz/nlnrnqn/noknlnkno/ac;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/ab;->h()V

    :cond_1
    return-void
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ab;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ab;->i:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method protected final g()[B
    .locals 1

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/ae;->a()[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract h()V
.end method

.method protected final j()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/ad;->b:Lbiz/nlnrnqn/noknlnkno/ad;

    invoke-virtual {p0, v1}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Lbiz/nlnrnqn/noknlnkno/ad;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/ab;->a(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
