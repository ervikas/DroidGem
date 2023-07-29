.class public Lbiz/nlnrnqn/noknlnkno/a57;
.super Lbiz/nlnrnqn/noknlnkno/a;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->b:Z

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/a57;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->a:Z

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a57;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->y()Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lbiz/nlnrnqn/noknlnkno/a57;)V
    .locals 2

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->a:Z

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lbiz/nlnrnqn/noknlnkno/a57;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/a57;->b:Z

    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a57;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/c;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/c;-><init>(Lbiz/nlnrnqn/noknlnkno/a57;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/d;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/d;-><init>(Lbiz/nlnrnqn/noknlnkno/a57;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private y()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a57;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a57;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->finish()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private z()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "cover"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pics"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ai;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final e()I
    .locals 1

    const/high16 v0, 0x7f030000

    return v0
.end method

.method protected final f()V
    .locals 5

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->z()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const-string v0, "intro"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->x()V

    :cond_2
    return-void
.end method

.method protected final g()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lbiz/nlnrnqn/noknlnkno/a57;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lbiz/nlnrnqn/noknlnkno/a57;->a:Z

    :cond_0
    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/a57;->x()V

    return-void
.end method

.method protected final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final i()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
