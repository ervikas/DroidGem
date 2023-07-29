.class final Lbiz/nlnrnqn/noknlnkno/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/bg;

.field final synthetic b:Lbiz/nlnrnqn/noknlnkno/bj;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bj;Lbiz/nlnrnqn/noknlnkno/bg;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bk;->b:Lbiz/nlnrnqn/noknlnkno/bj;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/bk;->a:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bk;->b:Lbiz/nlnrnqn/noknlnkno/bj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v1, p1}, Lbiz/nlnrnqn/noknlnkno/bc;->a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/bc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bk;->b:Lbiz/nlnrnqn/noknlnkno/bj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/bc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bk;->b:Lbiz/nlnrnqn/noknlnkno/bj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bj;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
