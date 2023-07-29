.class public Lcom/waps/MiniAdView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/waps/DisplayAdNotifier;


# static fields
.field private static final DELETE_ICON_LIMIT_TIME:J = 0x240c8400L

.field static e:J

.field static f:I

.field protected static g:Ljava/util/List;

.field private static p:Ljava/util/List;

.field private static v:I


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Z

.field c:Landroid/view/View;

.field d:Landroid/content/Context;

.field h:Landroid/widget/TextView;

.field private i:[I

.field private j:I

.field private k:Lcom/waps/AnimationType;

.field private l:I

.field private m:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private n:I

.field private o:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/content/SharedPreferences;

.field private z:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/waps/MiniAdView;->e:J

    const/4 v0, 0x5

    sput v0, Lcom/waps/MiniAdView;->f:I

    const/4 v0, 0x0

    sput v0, Lcom/waps/MiniAdView;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/waps/MiniAdView;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/waps/MiniAdView;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/MiniAdView;->m:Ljava/lang/String;

    sget v0, Lcom/waps/AppConnect;->J:I

    iput v0, p0, Lcom/waps/MiniAdView;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->o:Z

    iput v1, p0, Lcom/waps/MiniAdView;->q:I

    const-string v0, "/Android/data/cache/iconCache"

    iput-object v0, p0, Lcom/waps/MiniAdView;->w:Ljava/lang/String;

    const-string v0, "CacheTime"

    iput-object v0, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/waps/aj;

    invoke-direct {v0, p0}, Lcom/waps/aj;-><init>(Lcom/waps/MiniAdView;)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/waps/MiniAdView;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/waps/MiniAdView;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/MiniAdView;->m:Ljava/lang/String;

    sget v0, Lcom/waps/AppConnect;->J:I

    iput v0, p0, Lcom/waps/MiniAdView;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->o:Z

    iput v1, p0, Lcom/waps/MiniAdView;->q:I

    const-string v0, "/Android/data/cache/iconCache"

    iput-object v0, p0, Lcom/waps/MiniAdView;->w:Ljava/lang/String;

    const-string v0, "CacheTime"

    iput-object v0, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/waps/aj;

    invoke-direct {v0, p0}, Lcom/waps/aj;-><init>(Lcom/waps/MiniAdView;)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/waps/MiniAdView;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/waps/MiniAdView;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/MiniAdView;->m:Ljava/lang/String;

    sget v0, Lcom/waps/AppConnect;->J:I

    iput v0, p0, Lcom/waps/MiniAdView;->n:I

    iput-boolean v4, p0, Lcom/waps/MiniAdView;->o:Z

    iput v2, p0, Lcom/waps/MiniAdView;->q:I

    const-string v0, "/Android/data/cache/iconCache"

    iput-object v0, p0, Lcom/waps/MiniAdView;->w:Ljava/lang/String;

    const-string v0, "CacheTime"

    iput-object v0, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/waps/aj;

    invoke-direct {v0, p0}, Lcom/waps/aj;-><init>(Lcom/waps/MiniAdView;)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/waps/MiniAdView;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/waps/MiniAdView;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/waps/AppConnect;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-array v0, v4, [I

    aput v3, v0, v2

    iput-object v0, p0, Lcom/waps/MiniAdView;->i:[I

    iput v3, p0, Lcom/waps/MiniAdView;->j:I

    iput v2, p0, Lcom/waps/MiniAdView;->l:I

    const-string v0, "AppSettings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/waps/MiniAdView;->v:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/waps/MiniAdView;->v:I

    return p0
.end method

.method static synthetic a(Lcom/waps/MiniAdView;I)I
    .locals 0

    iput p1, p0, Lcom/waps/MiniAdView;->q:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x41800000    # 16.0f

    int-to-float v2, p4

    div-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, p4

    div-float v1, v3, v1

    float-to-int v1, v1

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    iget v2, p0, Lcom/waps/MiniAdView;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    const v1, 0x108000c

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/waps/MiniAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/MiniAdView;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/waps/SDKUtils;->loadStringFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/waps/SDKUtils;->saveDataToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/waps/SDKUtils;

    iget-object v2, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/waps/SDKUtils;->deleteLocalFiles(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    new-instance v0, Lcom/waps/SDKUtils;

    iget-object v1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/MiniAdView;->x:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/waps/SDKUtils;->saveDataToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/waps/MiniAdView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/MiniAdView;->o:Z

    return p1
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    :try_start_0
    iput p1, p0, Lcom/waps/MiniAdView;->u:I

    sget v0, Lcom/waps/MiniAdView;->v:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->b:Z

    iget-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/MiniAdView;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->r:Ljava/lang/String;

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/MiniAdView;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->s:Ljava/lang/String;

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    iget v1, p0, Lcom/waps/MiniAdView;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/MiniAdView;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/MiniAdView;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/MiniAdView;->w:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/waps/MiniAdView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/waps/SDKUtils;

    iget-object v2, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/waps/SDKUtils;->initAdWidth()I

    move-result v1

    const v2, 0x41555555

    int-to-float v3, v1

    div-float v2, v3, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/waps/MiniAdView;->t:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4, v1}, Lcom/waps/MiniAdView;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/waps/al;

    invoke-direct {v1, p0}, Lcom/waps/al;-><init>(Lcom/waps/MiniAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    iget v2, p0, Lcom/waps/MiniAdView;->u:I

    invoke-virtual {p0, v1, v2}, Lcom/waps/MiniAdView;->getMiniAdClickListener(Landroid/content/Context;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->b:Z

    iget-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    const-string v1, "MiniAd_ShowTag"

    iget v2, p0, Lcom/waps/MiniAdView;->u:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/MiniAdView;->z:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/waps/MiniAdView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/MiniAdView;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/waps/MiniAdView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/waps/MiniAdView;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/waps/MiniAdView;)I
    .locals 2

    iget v0, p0, Lcom/waps/MiniAdView;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/waps/MiniAdView;->q:I

    return v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waps/MiniAdView;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/waps/MiniAdView;->v:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearDisappearingChildren()V

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/MiniAdView;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/MiniAdView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget v0, p0, Lcom/waps/MiniAdView;->l:I

    if-nez v0, :cond_3

    new-instance v0, Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/MiniAdView;->i:[I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>([I)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->k:Lcom/waps/AnimationType;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/waps/MiniAdView;->k:Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/MiniAdView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/waps/AnimationType;->startAnimation(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/waps/MiniAdView;->l:I

    if-ne v0, v3, :cond_4

    new-instance v0, Lcom/waps/AnimationType;

    iget v1, p0, Lcom/waps/MiniAdView;->j:I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>(I)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->k:Lcom/waps/AnimationType;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/waps/MiniAdView;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/waps/AnimationType;

    iget-object v1, p0, Lcom/waps/MiniAdView;->i:[I

    invoke-direct {v0, v1}, Lcom/waps/AnimationType;-><init>([I)V

    iput-object v0, p0, Lcom/waps/MiniAdView;->k:Lcom/waps/AnimationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic d(Lcom/waps/MiniAdView;)I
    .locals 1

    iget v0, p0, Lcom/waps/MiniAdView;->q:I

    return v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/waps/MiniAdView;->e:J

    iget-object v0, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    const-string v1, "AppSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/waps/MiniAdView;->y:Landroid/content/SharedPreferences;

    const-string v1, "MiniAd_ShowTag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waps/MiniAdView;->q:I

    :cond_0
    iget v0, p0, Lcom/waps/MiniAdView;->q:I

    sget v1, Lcom/waps/MiniAdView;->v:I

    if-lt v0, v1, :cond_1

    iput v3, p0, Lcom/waps/MiniAdView;->q:I

    :cond_1
    iget v0, p0, Lcom/waps/MiniAdView;->q:I

    invoke-direct {p0, v0}, Lcom/waps/MiniAdView;->b(I)V

    new-instance v0, Lcom/waps/ak;

    invoke-direct {v0, p0}, Lcom/waps/ak;-><init>(Lcom/waps/MiniAdView;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    move v3, v2

    :goto_1
    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/a;

    invoke-virtual {v0}, Lcom/waps/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    sget-object v4, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waps/MiniAdView;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic e(Lcom/waps/MiniAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/MiniAdView;->e()V

    return-void
.end method

.method static synthetic f(Lcom/waps/MiniAdView;)I
    .locals 1

    iget v0, p0, Lcom/waps/MiniAdView;->n:I

    return v0
.end method


# virtual methods
.method public DisplayAd()V
    .locals 1

    sget v0, Lcom/waps/MiniAdView;->f:I

    invoke-virtual {p0, v0}, Lcom/waps/MiniAdView;->DisplayAd(I)V

    return-void
.end method

.method public DisplayAd(I)V
    .locals 1

    const/4 v0, 0x5

    sput p1, Lcom/waps/MiniAdView;->f:I

    if-ge p1, v0, :cond_0

    sput v0, Lcom/waps/MiniAdView;->f:I

    :cond_0
    new-instance v0, Lcom/waps/ai;

    invoke-direct {v0, p0}, Lcom/waps/ai;-><init>(Lcom/waps/MiniAdView;)V

    invoke-virtual {v0}, Lcom/waps/ai;->start()V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waps/AppConnect;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getDisplayAdResponse(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    sput-object p1, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    sget-object v0, Lcom/waps/MiniAdView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/waps/MiniAdView;->v:I

    invoke-direct {p0}, Lcom/waps/MiniAdView;->d()V

    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/MiniAdView;->b:Z

    iget-object v0, p0, Lcom/waps/MiniAdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waps/MiniAdView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMiniAdClickListener(Landroid/content/Context;I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/waps/an;

    invoke-direct {v0, p0, p1, p2}, Lcom/waps/an;-><init>(Lcom/waps/MiniAdView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public setAnimationType(I)Lcom/waps/MiniAdView;
    .locals 1

    iput p1, p0, Lcom/waps/MiniAdView;->j:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/waps/MiniAdView;->l:I

    return-object p0
.end method

.method public setAnimationType([I)Lcom/waps/MiniAdView;
    .locals 1

    iput-object p1, p0, Lcom/waps/MiniAdView;->i:[I

    const/4 v0, 0x2

    iput v0, p0, Lcom/waps/MiniAdView;->l:I

    return-object p0
.end method

.method public showADS()V
    .locals 1

    iget-object v0, p0, Lcom/waps/MiniAdView;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waps/AppConnect;->a(Lcom/waps/DisplayAdNotifier;)V

    return-void
.end method
