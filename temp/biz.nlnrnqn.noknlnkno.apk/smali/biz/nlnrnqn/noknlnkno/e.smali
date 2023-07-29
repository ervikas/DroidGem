.class final Lbiz/nlnrnqn/noknlnkno/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lbiz/nlnrnqn/noknlnkno/b;


# instance fields
.field a:Landroid/graphics/Matrix;

.field b:Landroid/graphics/Matrix;

.field c:I

.field d:Landroid/graphics/PointF;

.field e:Landroid/graphics/PointF;

.field f:F

.field g:Z

.field h:Landroid/view/GestureDetector;

.field final synthetic i:Lbiz/nlnrnqn/noknlnkno/b17;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/b17;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->e:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->f:F

    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->h:Landroid/view/GestureDetector;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Matrix;F)V
    .locals 4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/f;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-direct {v2, v3, v0, p1, p2}, Lbiz/nlnrnqn/noknlnkno/f;-><init>(Lbiz/nlnrnqn/noknlnkno/b17;Landroid/widget/ImageView;Landroid/graphics/Matrix;F)V

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(FFZ)Z
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v3

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v2, v2

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v6, v6, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v6, v6

    invoke-direct {v5, v0, v0, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v6, v3

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    int-to-float v6, v3

    sub-float v2, v6, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v2

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    iput v2, v5, Landroid/graphics/RectF;->right:F

    :cond_0
    if-eqz p3, :cond_3

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-boolean v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    if-nez v2, :cond_3

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v2, v6

    :goto_0
    cmpl-float v6, p1, v0

    if-lez v6, :cond_4

    iget v3, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v2

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_5

    iget v3, v5, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_1
    cmpl-float v3, p2, v0

    if-lez v3, :cond_6

    iget v3, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_1

    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    :goto_2
    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget v6, v5, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    sub-float v3, v6, v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_5

    neg-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    neg-float v0, v3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v1, p1, p2}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;II)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    if-ne v3, v0, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v2, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    :goto_0
    return v0

    :cond_0
    const/high16 v3, -0x3db80000    # -50.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v1, v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Lbiz/nlnrnqn/noknlnkno/e;->a(FFZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    :cond_0
    return v3
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 13

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v3}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v3

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v4, v4, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-boolean v6, v6, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    if-eqz v6, :cond_4

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v1, v1

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v3, v3, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v3, v3

    invoke-direct {v0, v9, v9, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    div-int/lit8 v1, v4, 0x3

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    const-wide v6, -0x4046666666666666L    # -0.1

    cmpl-double v1, v1, v6

    if-lez v1, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v10}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    :goto_0
    iput-boolean v10, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    :goto_1
    iput v10, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    return v11

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    mul-int/lit8 v1, v4, 0x7

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v5, v0}, Lbiz/nlnrnqn/noknlnkno/e;->a(Landroid/graphics/Matrix;F)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v4, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    int-to-double v6, v4

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double/2addr v6, v8

    cmpg-double v1, v1, v6

    if-gez v1, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v11}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v4

    sub-float/2addr v0, v1

    mul-int/lit8 v1, v4, 0x7

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v5, v0}, Lbiz/nlnrnqn/noknlnkno/e;->a(Landroid/graphics/Matrix;F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Lbiz/nlnrnqn/noknlnkno/b;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/b17;->b(Lbiz/nlnrnqn/noknlnkno/b17;)V

    goto :goto_0

    :cond_4
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v7, v7, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v7, v7

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v5, Landroid/graphics/RectF;

    add-int/lit8 v7, v3, 0x5

    int-to-float v7, v7

    add-int/lit8 v8, v4, 0x5

    int-to-float v8, v8

    invoke-direct {v5, v12, v12, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_9

    div-int/lit8 v0, v3, 0x3

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v10}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v0, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v11}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto/16 :goto_0

    :cond_6
    div-int/lit8 v0, v4, 0x3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v10}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto/16 :goto_0

    :cond_7
    mul-int/lit8 v0, v4, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0, v11}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/b17;->c(Lbiz/nlnrnqn/noknlnkno/b17;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v1, v3, v4}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;II)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-boolean v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v5, v5, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v5, v5

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v6, v6, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v6, v6

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v3, :cond_b

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_b

    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v5, v5, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    mul-float/2addr v1, v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v3, :cond_c

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v3}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;II)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto/16 :goto_1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Lbiz/nlnrnqn/noknlnkno/b;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->h:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    const/4 v2, 0x1

    iput v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    invoke-static {p2}, Lbiz/nlnrnqn/noknlnkno/cb;->a(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->f:F

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->f:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->e:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    const/4 v2, 0x2

    iput v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {p2}, Lbiz/nlnrnqn/noknlnkno/cb;->a(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->f:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v3}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v3

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v4, v4, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v8, v8

    iget-object v9, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v9, v9, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v7, v3

    div-float/2addr v7, v6

    int-to-float v8, v4

    div-float/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget-object v9, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v9, v9, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v9, v9

    div-float/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    mul-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    mul-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    div-float v6, v8, v6

    mul-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/e;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    invoke-static {v0, v2}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :sswitch_0
    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v3

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-boolean v5, v5, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    if-nez v5, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v1

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v4, v4, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget v8, v8, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget-object v7, p0, Lbiz/nlnrnqn/noknlnkno/e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v9, -0x3f600000    # -5.0f

    add-int/lit8 v10, v1, 0x5

    int-to-float v10, v10

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v7, v8, v9, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x42200000    # 40.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->g:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, v3, v2, v1}, Lbiz/nlnrnqn/noknlnkno/e;->a(FFZ)Z

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->a:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/e;->c:I

    goto/16 :goto_1

    :cond_5
    const/high16 v4, -0x3de00000    # -40.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v1

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    int-to-float v5, v1

    sub-float v4, v5, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v4

    iput v5, v6, Landroid/graphics/RectF;->left:F

    iget v5, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    iput v4, v6, Landroid/graphics/RectF;->right:F

    :cond_7
    int-to-double v4, v1

    const-wide v7, 0x3fd872b020c49ba6L    # 0.382

    mul-double/2addr v4, v7

    double-to-int v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    iget v5, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v4

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/high16 v5, -0x3de00000    # -40.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_9

    iget v5, v6, Landroid/graphics/RectF;->right:F

    sub-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_9

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/e;->i:Lbiz/nlnrnqn/noknlnkno/b17;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
