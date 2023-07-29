.class final Lbiz/nlnrnqn/noknlnkno/al;
.super Lbiz/nlnrnqn/noknlnkno/ab;


# instance fields
.field final synthetic k:Lbiz/nlnrnqn/noknlnkno/bc;

.field final synthetic l:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/bg;Lbiz/nlnrnqn/noknlnkno/bc;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/al;->k:Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-direct {p0, p2}, Lbiz/nlnrnqn/noknlnkno/ab;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    return-void
.end method


# virtual methods
.method protected final h()V
    .locals 5

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/al;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/al;->k:Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bc;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v2, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/al;->k:Lbiz/nlnrnqn/noknlnkno/bc;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/bc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/bg;->a(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/al;->k:Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-static {v1, v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;JLbiz/nlnrnqn/noknlnkno/bc;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v1, v0}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->c(Ljava/io/File;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/al;->l:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    :cond_0
    return-void
.end method
