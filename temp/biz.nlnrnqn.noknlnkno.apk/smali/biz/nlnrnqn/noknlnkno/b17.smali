.class public Lbiz/nlnrnqn/noknlnkno/b17;
.super Lbiz/nlnrnqn/noknlnkno/a;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONArray;

.field c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

.field d:Lbiz/nlnrnqn/noknlnkno/e;

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a;-><init>()V

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->j:Z

    return-void
.end method

.method private a(II)Landroid/graphics/Matrix;
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v1, v1

    div-float v1, v0, v1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    return-object v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v2, p1

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    int-to-float v3, p2

    iget v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/b17;II)Landroid/graphics/Matrix;
    .locals 1

    invoke-direct {p0, p1, p2}, Lbiz/nlnrnqn/noknlnkno/b17;->a(II)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lbiz/nlnrnqn/noknlnkno/b17;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/b17;)V
    .locals 0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->o()V

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/b17;Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    add-int/2addr v0, v3

    rem-int/2addr v0, v2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->j:Z

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    invoke-virtual {v0, v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Lbiz/nlnrnqn/noknlnkno/b;)V

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->x()V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    if-eqz p1, :cond_1

    const v0, 0x7f040001

    :goto_1
    invoke-virtual {v2, p0, v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    if-eqz p1, :cond_2

    const v0, 0x7f040002

    :goto_2
    invoke-virtual {v2, p0, v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7f040000

    goto :goto_1

    :cond_2
    const v0, 0x7f040003

    goto :goto_2
.end method

.method private a(Z)V
    .locals 9

    const/4 v0, 0x0

    const/16 v6, 0x800

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    invoke-virtual {p0, v3}, Lbiz/nlnrnqn/noknlnkno/b17;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    iget v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ai;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    iget v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    iget v5, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    mul-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_6

    iget v4, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_6

    :goto_1
    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->h:Z

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->f:I

    if-ge v1, v6, :cond_2

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->g:I

    if-lt v1, v6, :cond_4

    :cond_2
    iget-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->i:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setLayerType"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Paint;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->i:Z

    :cond_4
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getWidth()I

    move-result v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/b17;->a(II)Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz p1, :cond_7

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2, v3, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->b(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->j:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    :try_start_4
    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v2, v3, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_8

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ag;->a(Ljava/io/Closeable;)V

    :cond_8
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic b(Lbiz/nlnrnqn/noknlnkno/b17;)V
    .locals 0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->r()V

    return-void
.end method

.method static synthetic c(Lbiz/nlnrnqn/noknlnkno/b17;)V
    .locals 0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->r()V

    return-void
.end method

.method private x()V
    .locals 3

    const/high16 v1, 0x7f090000

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(ILjava/lang/String;)V

    const v0, 0x7f090005

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/b17;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)Z
    .locals 4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/a;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "\u8bbe\u7f6e\u58c1\u7eb8\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f09001a
        :pswitch_0
    .end packed-switch
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f030001

    return v0
.end method

.method protected final f()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->a:Ljava/lang/String;

    const-string v1, "pics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->b:Lorg/json/JSONArray;

    :cond_0
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/b17;->x()V

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/e;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/e;-><init>(Lbiz/nlnrnqn/noknlnkno/b17;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    invoke-virtual {v0, p0}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Lbiz/nlnrnqn/noknlnkno/b;)V

    iput v3, p0, Lbiz/nlnrnqn/noknlnkno/b17;->e:I

    invoke-direct {p0, v3}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Z)V

    return-void
.end method

.method protected final g()V
    .locals 1

    invoke-super {p0}, Lbiz/nlnrnqn/noknlnkno/a;->g()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Z)V

    return-void
.end method

.method protected final h()I
    .locals 1

    const v0, 0x7f080002

    return v0
.end method

.method protected final i()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final k()V
    .locals 1

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Z)V

    :cond_0
    return-void
.end method

.method protected final l()V
    .locals 1

    invoke-super {p0}, Lbiz/nlnrnqn/noknlnkno/a;->l()V

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/b17;->a(Z)V

    :cond_0
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/b17;->c:Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/b17;->d:Lbiz/nlnrnqn/noknlnkno/e;

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/MyImageSwitcher;->a(Lbiz/nlnrnqn/noknlnkno/b;)V

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
