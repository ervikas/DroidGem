.class abstract Lbiz/nlnrnqn/noknlnkno/cc;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field d:Lbiz/nlnrnqn/noknlnkno/bg;


# direct methods
.method protected constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/cc;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/cc;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/cc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method final a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/cc;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/cc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method final c()I
    .locals 3

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/cc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "zt__waiting"

    invoke-static {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/cc;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/cc;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lbiz/nlnrnqn/noknlnkno/bg;->a(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lbiz/nlnrnqn/noknlnkno/cc;->setCancelable(Z)V

    invoke-virtual {p0, p0}, Lbiz/nlnrnqn/noknlnkno/cc;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/cc;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "layout"

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/cc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/cc;->setContentView(I)V

    :cond_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/cc;->a()V

    return-void
.end method
