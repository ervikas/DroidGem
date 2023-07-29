.class Lcom/waps/ag;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/waps/ae;


# direct methods
.method private constructor <init>(Lcom/waps/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waps/ae;Lcom/waps/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/ag;-><init>(Lcom/waps/ae;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v1, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v1}, Lcom/waps/ae;->c(Lcom/waps/ae;)Lcom/waps/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v2}, Lcom/waps/ae;->a(Lcom/waps/ae;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v3}, Lcom/waps/ae;->b(Lcom/waps/ae;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waps/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v1}, Lcom/waps/ae;->d(Lcom/waps/ae;)Lcom/waps/DisplayAdNotifier;

    move-result-object v1

    const-string v2, "Network Error."

    invoke-interface {v1, v2}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v0, v1}, Lcom/waps/ae;->a(Lcom/waps/ae;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/waps/ag;->a:Lcom/waps/ae;

    invoke-static {v1}, Lcom/waps/ae;->d(Lcom/waps/ae;)Lcom/waps/DisplayAdNotifier;

    move-result-object v1

    const-string v2, "Ad content has error."

    invoke-interface {v1, v2}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waps/ag;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
