.class public Lcom/waps/y;
.super Ljava/lang/Object;


# static fields
.field protected static b:Z

.field public static c:Z

.field public static d:Ljava/lang/String;

.field static e:J


# instance fields
.field public a:Landroid/app/Notification;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/y;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/y;->c:Z

    const-string v0, ""

    sput-object v0, Lcom/waps/y;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/y;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/y;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/y;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/y;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/y;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/waps/y;->n:Z

    iput-boolean v1, p0, Lcom/waps/y;->o:Z

    iput-object p1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/waps/y;->e:J

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/y;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :goto_1
    return-object p1

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    :cond_1
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    const-string v2, "downloading"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    sget-wide v1, Lcom/waps/y;->e:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const/16 v2, 0x64

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v3, p0, Lcom/waps/y;->g:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    const-string v5, "finish_download"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    :cond_1
    iput-object p4, p0, Lcom/waps/y;->h:Ljava/lang/String;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const-string v1, ""

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v1, p0, Lcom/waps/y;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waps/y;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/waps/AppConnect;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/y;->p:Ljava/util/Map;

    :cond_1
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/waps/y;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/waps/y;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/waps/y;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/waps/y;->j:Ljava/lang/String;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const v2, 0x1080093

    iput v2, v1, Landroid/app/Notification;->icon:I

    :goto_0
    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/y;->k:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    :cond_2
    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waps/y;->o:Z

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v4}, Lcom/waps/AppConnect;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/waps/y;->o:Z

    if-eqz v2, :cond_4

    invoke-static/range {p9 .. p9}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    :try_start_1
    const-string v2, ""

    new-instance v2, Lcom/waps/SDKUtils;

    iget-object v4, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/waps/SDKUtils;->getBrowserPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Lcom/waps/SDKUtils;

    iget-object v5, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/waps/SDKUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/waps/y;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/waps/SDKUtils;->goToTargetBrowser_Intent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const/16 v4, 0x64

    const/high16 v5, 0x10000000

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/4 v4, 0x0

    iput v4, v2, Landroid/app/Notification;->number:I

    :try_start_2
    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "push_layout"

    const-string v5, "layout"

    iget-object v6, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "push_layout"

    const-string v6, "layout"

    iget-object v7, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/waps/y;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "notify_image"

    const-string v5, "id"

    iget-object v6, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "notify_text"

    const-string v5, "id"

    iget-object v6, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "content_text"

    const-string v4, "id"

    iget-object v5, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/waps/y;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waps/y;->b:Z

    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v2, "Start_Tag"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notify_start_tag"

    const-string v3, "Notify"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_6
    iget-object v1, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iput p2, v1, Landroid/app/Notification;->icon:I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v4, "APP_SDK"

    invoke-static {v2}, Lcom/waps/SDKUtils;->getErrorLog(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waps/y;->o:Z

    goto/16 :goto_2

    :cond_8
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/high16 v1, 0x10000000

    :try_start_4
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :goto_7
    const-string v4, "APP_SDK"

    invoke-static {v2}, Lcom/waps/SDKUtils;->getErrorLog(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/waps/AppConnect;->g(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v4, "Notify"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "Notify_Title"

    iget-object v5, p0, Lcom/waps/y;->j:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Notify_Content"

    iget-object v5, p0, Lcom/waps/y;->k:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Notify_UrlPath"

    iget-object v5, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "offers_webview_tag"

    const-string v5, "OffersWebView"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "NotifyAd_Tag"

    const-string v5, "true"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Notify_Show_detail"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_a
    :try_start_5
    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notify_full_image"

    const-string v4, "id"

    iget-object v5, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    const-string v2, "APP_SDK"

    invoke-static {v1}, Lcom/waps/SDKUtils;->getErrorLog(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_b
    :try_start_6
    const-string v2, "APP_SDK"

    const-string v3, "Please check and update the file which the name is \"push_layout.xml\""

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    iget-object v2, p0, Lcom/waps/y;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v4, p0, Lcom/waps/y;->g:Landroid/content/Context;

    iget-object v5, p0, Lcom/waps/y;->k:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/waps/y;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/y;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v2, v1, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_d
    const-string v1, "APP_SDK"

    const-string v2, "The notification is not getted,becuse the notifyTitle is null or \"push_layout.xml\" is not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/waps/AppConnect;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/y;->p:Ljava/util/Map;

    :cond_1
    iput-object p1, p0, Lcom/waps/y;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/y;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/y;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/waps/y;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/waps/y;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/waps/y;->j:Ljava/lang/String;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "icon"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/waps/y;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    :goto_0
    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v2, p0, Lcom/waps/y;->k:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    if-ne p6, v5, :cond_2

    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :cond_2
    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/waps/y;->l:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/waps/y;->l:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/y;->l:Ljava/lang/String;

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/waps/y;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const/16 v3, 0x64

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    iget-object v3, p0, Lcom/waps/y;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/waps/y;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    iget-boolean v0, p0, Lcom/waps/y;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waps/y;->f:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/y;->n:Z

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/y;->b:Z

    iget-object v0, p0, Lcom/waps/y;->g:Landroid/content/Context;

    const-string v1, "Start_Tag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_start_tag"

    const-string v2, "Notify"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_6
    iget-object v0, p0, Lcom/waps/y;->a:Landroid/app/Notification;

    const v2, 0x1080072

    iput v2, v0, Landroid/app/Notification;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APP_SDK"

    invoke-static {v0}, Lcom/waps/SDKUtils;->getErrorLog(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
