.class final Lbiz/nlnrnqn/noknlnkno/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/ay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    iget v0, p1, Lbiz/nlnrnqn/noknlnkno/ay;->b:I

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->a:I

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v0, p1}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-virtual {v0, p1}, Lbiz/nlnrnqn/noknlnkno/ay;->c(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lbiz/nlnrnqn/noknlnkno/bf;

    iget v0, p1, Lbiz/nlnrnqn/noknlnkno/bf;->a:I

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/bf;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
