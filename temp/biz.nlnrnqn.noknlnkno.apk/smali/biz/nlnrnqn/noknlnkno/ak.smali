.class final Lbiz/nlnrnqn/noknlnkno/ak;
.super Lbiz/nlnrnqn/noknlnkno/ab;


# instance fields
.field final synthetic k:Ljava/io/File;

.field final synthetic l:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/bg;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ak;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/ak;->k:Ljava/io/File;

    invoke-direct {p0, p2}, Lbiz/nlnrnqn/noknlnkno/ab;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    return-void
.end method


# virtual methods
.method protected final h()V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ak;->k:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ak;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ak;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/aj;->a(Lbiz/nlnrnqn/noknlnkno/aj;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ak;->k:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ak;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
