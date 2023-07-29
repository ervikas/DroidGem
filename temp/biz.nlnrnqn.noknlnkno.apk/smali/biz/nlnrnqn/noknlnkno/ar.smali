.class final Lbiz/nlnrnqn/noknlnkno/ar;
.super Lbiz/nlnrnqn/noknlnkno/cc;


# instance fields
.field a:Lbiz/nlnrnqn/noknlnkno/w;

.field b:Landroid/widget/ListView;

.field final synthetic c:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method protected constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;)V
    .locals 1

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, p1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {p0, v0}, Lbiz/nlnrnqn/noknlnkno/cc;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/ar;ILandroid/widget/ImageView;)V
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, v0, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "drawable"

    const-string v2, "zt__icon_lack"

    invoke-static {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ar;->a:Lbiz/nlnrnqn/noknlnkno/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lbiz/nlnrnqn/noknlnkno/ay;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lbiz/nlnrnqn/noknlnkno/ay;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lbiz/nlnrnqn/noknlnkno/ay;->k:I

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ar;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/bg;->n:Lbiz/nlnrnqn/noknlnkno/t;

    new-instance v4, Lbiz/nlnrnqn/noknlnkno/au;

    invoke-direct {v4, p0, p2, p1}, Lbiz/nlnrnqn/noknlnkno/au;-><init>(Lbiz/nlnrnqn/noknlnkno/ar;Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lbiz/nlnrnqn/noknlnkno/w;->a(Ljava/lang/String;ILbiz/nlnrnqn/noknlnkno/t;Lbiz/nlnrnqn/noknlnkno/x;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/w;

    const-string v1, "opic"

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lbiz/nlnrnqn/noknlnkno/w;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->a:Lbiz/nlnrnqn/noknlnkno/w;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->e:Lbiz/nlnrnqn/noknlnkno/bd;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bd;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v3}, Lbiz/nlnrnqn/noknlnkno/bg;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v4, v4, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/bg;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zt__tv_title"

    invoke-virtual {p0, v1, v0}, Lbiz/nlnrnqn/noknlnkno/ar;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "zt__lv_list"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/ar;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->b:Landroid/widget/ListView;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/as;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/as;-><init>(Lbiz/nlnrnqn/noknlnkno/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ar;->b:Landroid/widget/ListView;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/at;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/at;-><init>(Lbiz/nlnrnqn/noknlnkno/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "zt__offerwall"

    return-object v0
.end method
