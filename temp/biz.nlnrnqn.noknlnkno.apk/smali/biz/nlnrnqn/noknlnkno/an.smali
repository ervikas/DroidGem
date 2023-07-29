.class final Lbiz/nlnrnqn/noknlnkno/an;
.super Lbiz/nlnrnqn/noknlnkno/cc;


# instance fields
.field a:Lbiz/nlnrnqn/noknlnkno/ay;

.field b:Lbiz/nlnrnqn/noknlnkno/w;

.field final synthetic c:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method protected constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/ay;)V
    .locals 1

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/cc;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->b:Lbiz/nlnrnqn/noknlnkno/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    new-instance v4, Lbiz/nlnrnqn/noknlnkno/ap;

    invoke-direct {v4, p0, v0, p2}, Lbiz/nlnrnqn/noknlnkno/ap;-><init>(Lbiz/nlnrnqn/noknlnkno/an;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p3, v3, v4}, Lbiz/nlnrnqn/noknlnkno/w;->a(Ljava/lang/String;ILbiz/nlnrnqn/noknlnkno/t;Lbiz/nlnrnqn/noknlnkno/x;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/w;

    const-string v1, "opic"

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/w;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->b:Lbiz/nlnrnqn/noknlnkno/w;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/ay;->c(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    const-string v1, "zt__tv_name"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/ay;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "zt__tv_version"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7248\u672c : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lbiz/nlnrnqn/noknlnkno/az;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "zt__tv_size"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5927\u5c0f : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    int-to-long v3, v0

    invoke-static {v3, v4}, Lbiz/nlnrnqn/noknlnkno/by;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "zt__tv_coolword"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "zt__tv_action"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "zt__tv_provider"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "zt__tv_intro"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->p:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/av;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p0, v2, v3}, Lbiz/nlnrnqn/noknlnkno/av;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Landroid/content/DialogInterface;Lbiz/nlnrnqn/noknlnkno/ay;B)V

    const-string v0, "zt__btn_down"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "zt__btn_down_w"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "zt__img_back"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/ao;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/ao;-><init>(Lbiz/nlnrnqn/noknlnkno/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "zt__img_icon"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v2, "drawable"

    const-string v3, "zt__icon_lack"

    invoke-static {v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    const-string v0, "zt__img_sc1"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->i:Ljava/lang/String;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget v2, v2, Lbiz/nlnrnqn/noknlnkno/ay;->l:I

    invoke-direct {p0, v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "zt__img_sc2"

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ay;->j:Ljava/lang/String;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget v2, v2, Lbiz/nlnrnqn/noknlnkno/ay;->m:I

    invoke-direct {p0, v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/an;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/an;->b:Lbiz/nlnrnqn/noknlnkno/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget v3, v3, Lbiz/nlnrnqn/noknlnkno/ay;->k:I

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v4, v4, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    new-instance v5, Lbiz/nlnrnqn/noknlnkno/aq;

    invoke-direct {v5, p0, v0}, Lbiz/nlnrnqn/noknlnkno/aq;-><init>(Lbiz/nlnrnqn/noknlnkno/an;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lbiz/nlnrnqn/noknlnkno/w;->a(Ljava/lang/String;ILbiz/nlnrnqn/noknlnkno/t;Lbiz/nlnrnqn/noknlnkno/x;)V

    goto :goto_1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "zt__offerinfo"

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/cc;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ar;->show()V

    :cond_0
    return-void
.end method
