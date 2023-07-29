.class public Lcom/waps/ae;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/LinearLayout;

.field final b:Ljava/lang/String;

.field private c:Lcom/waps/ag;

.field private d:Lcom/waps/DisplayAdNotifier;

.field private e:Lcom/waps/aa;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/waps/ae;->c:Lcom/waps/ag;

    iput-object v0, p0, Lcom/waps/ae;->e:Lcom/waps/aa;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ae;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ae;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ae;->i:Ljava/lang/String;

    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/waps/ae;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/waps/ae;->f:Landroid/content/Context;

    new-instance v0, Lcom/waps/aa;

    iget-object v1, p0, Lcom/waps/ae;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/waps/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/ae;->e:Lcom/waps/aa;

    return-void
.end method

.method static synthetic a(Lcom/waps/ae;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/ae;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/waps/ae;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/ae;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/waps/ae;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/waps/ae;->d:Lcom/waps/DisplayAdNotifier;

    invoke-interface {v1, v0}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponse(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waps/ae;->a:Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/waps/ae;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/ae;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/waps/ae;)Lcom/waps/aa;
    .locals 1

    iget-object v0, p0, Lcom/waps/ae;->e:Lcom/waps/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/waps/ae;)Lcom/waps/DisplayAdNotifier;
    .locals 1

    iget-object v0, p0, Lcom/waps/ae;->d:Lcom/waps/DisplayAdNotifier;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v0, "UTF-8"

    invoke-interface {v4, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_11

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v3, v0

    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v6, v0

    move-object v0, v3

    move v3, v6

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    goto :goto_1

    :pswitch_2
    const-string v3, "Ad"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/waps/a;

    invoke-direct {v2}, Lcom/waps/a;-><init>()V

    :cond_1
    if-eqz v2, :cond_0

    const-string v3, "Id"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->a(Ljava/lang/String;)V

    :cond_2
    const-string v3, "Title"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->h(Ljava/lang/String;)V

    :cond_3
    const-string v3, "Image"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->b(Ljava/lang/String;)V

    :cond_4
    const-string v3, "Content"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->c(Ljava/lang/String;)V

    :cond_5
    const-string v3, "ClickUrl"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->d(Ljava/lang/String;)V

    :cond_6
    const-string v3, "Show_detail"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->e(Ljava/lang/String;)V

    :cond_7
    const-string v3, "AdPackage"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->f(Ljava/lang/String;)V

    :cond_8
    const-string v3, "NewBrowser"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->g(Ljava/lang/String;)V

    :cond_9
    const-string v3, "Points"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->a(I)V

    :cond_a
    const-string v3, "Description"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->l(Ljava/lang/String;)V

    :cond_b
    const-string v3, "Version"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->m(Ljava/lang/String;)V

    :cond_c
    const-string v3, "Filesize"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->n(Ljava/lang/String;)V

    :cond_d
    const-string v3, "Provider"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->o(Ljava/lang/String;)V

    :cond_e
    const-string v3, "ImageUrls"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->a([Ljava/lang/String;)V

    :cond_f
    const-string v3, "DownUrl"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->p(Ljava/lang/String;)V

    :cond_10
    const-string v3, "Action"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waps/a;->q(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_1

    :pswitch_3
    const-string v3, "Ad"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/waps/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waps/SDKUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :cond_11
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/waps/DisplayAdNotifier;)V
    .locals 2

    iput-object p1, p0, Lcom/waps/ae;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/ae;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "miniad/ad?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ae;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/ae;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/ae;->d:Lcom/waps/DisplayAdNotifier;

    iget-object v0, p0, Lcom/waps/ae;->e:Lcom/waps/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/ae;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/ae;->e:Lcom/waps/aa;

    invoke-static {v0, v1}, Lcom/waps/AppConnect;->a(Landroid/content/Context;Lcom/waps/aa;)V

    :cond_0
    new-instance v0, Lcom/waps/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/ag;-><init>(Lcom/waps/ae;Lcom/waps/af;)V

    iput-object v0, p0, Lcom/waps/ae;->c:Lcom/waps/ag;

    iget-object v0, p0, Lcom/waps/ae;->c:Lcom/waps/ag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
