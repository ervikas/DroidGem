.class final Lbiz/nlnrnqn/noknlnkno/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/graphics/Matrix;

.field c:F

.field d:J

.field e:Z

.field f:I

.field final synthetic g:Lbiz/nlnrnqn/noknlnkno/b17;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/b17;Landroid/widget/ImageView;Landroid/graphics/Matrix;F)V
    .locals 2

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/f;->g:Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->d:J

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/f;->a:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->b:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->e:Z

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->f:I

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->c:F

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbiz/nlnrnqn/noknlnkno/f;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/f;->c:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/f;->c:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->e:Z

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->c:F

    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/f;->b:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/f;->f:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->g:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/f;->g:Lbiz/nlnrnqn/noknlnkno/b17;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0, p0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
