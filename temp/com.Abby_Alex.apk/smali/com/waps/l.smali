.class Lcom/waps/l;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/waps/AppConnect;


# direct methods
.method private constructor <init>(Lcom/waps/AppConnect;)V
    .locals 1

    iput-object p1, p0, Lcom/waps/l;->b:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/l;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/AppConnect;Lcom/waps/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/l;-><init>(Lcom/waps/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/waps/AppConnect;->f()Lcom/waps/aa;

    move-result-object v1

    const-string v2, "http://ads.wapx.cn/action/miniad/ad?"

    iget-object v3, p0, Lcom/waps/l;->b:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/l;->a:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/waps/l;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/waps/l;->a:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lcom/waps/ae;

    iget-object v3, p0, Lcom/waps/l;->b:Lcom/waps/AppConnect;

    invoke-static {v3}, Lcom/waps/AppConnect;->c(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/waps/ae;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/waps/ae;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/waps/AppConnect;->K:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
