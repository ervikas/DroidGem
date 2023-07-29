.class final Lbiz/nlnrnqn/noknlnkno/au;
.super Ljava/lang/Object;

# interfaces
.implements Lbiz/nlnrnqn/noknlnkno/x;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lbiz/nlnrnqn/noknlnkno/ar;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/ar;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/au;->a:Landroid/widget/ImageView;

    iput p3, p0, Lbiz/nlnrnqn/noknlnkno/au;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bg;->a(F)I

    move-result v0

    return v0
.end method

.method public final a(ZLandroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->b:Landroid/widget/ListView;

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/au;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zt__img_icon"

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bz;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->a:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/au;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->e:Lbiz/nlnrnqn/noknlnkno/bd;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/bd;->d:Ljava/lang/String;

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->s()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/au;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/au;->c:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/ar;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
