.class Lcom/waps/t;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/waps/AppConnect;


# direct methods
.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/waps/t;->c:Lcom/waps/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/t;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/t;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {}, Lcom/waps/AppConnect;->f()Lcom/waps/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/t;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/waps/t;->c:Lcom/waps/AppConnect;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->h(Lcom/waps/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/t;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
