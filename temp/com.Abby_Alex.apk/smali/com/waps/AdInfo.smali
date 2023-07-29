.class public Lcom/waps/AdInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/waps/AdInfo;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/waps/AdInfo;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/waps/AdInfo;->j:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/AdInfo;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/waps/AdInfo;->e:I

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->a:Ljava/lang/String;

    return-void
.end method

.method protected a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->j:[Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->b:Ljava/lang/String;

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->c:Ljava/lang/String;

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->f:Ljava/lang/String;

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->g:Ljava/lang/String;

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->h:Ljava/lang/String;

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPoints()I
    .locals 1

    iget v0, p0, Lcom/waps/AdInfo;->e:I

    return v0
.end method

.method public getAdText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AdInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->k:Ljava/lang/String;

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/AdInfo;->l:Ljava/lang/String;

    return-void
.end method
