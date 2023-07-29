.class final Lbiz/nlnrnqn/noknlnkno/at;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/ar;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/ar;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ar;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zt__offerwall_line_logo"

    invoke-static {v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    if-nez p2, :cond_2

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ar;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/ar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "zt__offerwall_line"

    invoke-static {v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    const-string v1, "zt__tv_name"

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/ay;->r:Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "zt__tv_coolword"

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/ay;->o:Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "zt__tv_action"

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/ay;->n:Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "zt__btn_down"

    invoke-static {p2, v1}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/av;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lbiz/nlnrnqn/noknlnkno/av;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Landroid/content/DialogInterface;Lbiz/nlnrnqn/noknlnkno/ay;B)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/at;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    const-string v0, "zt__img_icon"

    invoke-static {p2, v0}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, p1, v0}, Lbiz/nlnrnqn/noknlnkno/ar;->a(Lbiz/nlnrnqn/noknlnkno/ar;ILandroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
