.class final Lbiz/nlnrnqn/noknlnkno/bj;
.super Lbiz/nlnrnqn/noknlnkno/ab;


# instance fields
.field k:Ljava/util/ArrayList;

.field l:Lbiz/nlnrnqn/noknlnkno/bc;

.field final synthetic m:Lbiz/nlnrnqn/noknlnkno/bg;


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;)V
    .locals 2

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {p0, p1}, Lbiz/nlnrnqn/noknlnkno/ab;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Lbiz/nlnrnqn/noknlnkno/ae;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bk;

    invoke-direct {v1, p0, p1}, Lbiz/nlnrnqn/noknlnkno/bk;-><init>(Lbiz/nlnrnqn/noknlnkno/bj;Lbiz/nlnrnqn/noknlnkno/bg;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected final h()V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->a:Lbiz/nlnrnqn/noknlnkno/ad;

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bj;->a(Lbiz/nlnrnqn/noknlnkno/ad;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "awards"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "pkg_name"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbiz/nlnrnqn/noknlnkno/by;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v6, v5}, Lbiz/nlnrnqn/noknlnkno/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v7, v6}, Lbiz/nlnrnqn/noknlnkno/bc;->a(Landroid/content/Context;Ljava/io/File;)Lbiz/nlnrnqn/noknlnkno/bc;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iput-boolean v3, v8, Lbiz/nlnrnqn/noknlnkno/bg;->r:Z

    iput-object v7, p0, Lbiz/nlnrnqn/noknlnkno/bj;->l:Lbiz/nlnrnqn/noknlnkno/bc;

    iget-object v7, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-static {v5, v7}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v6}, Lbiz/nlnrnqn/noknlnkno/ag;->c(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->p()B

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->b()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->l:Lbiz/nlnrnqn/noknlnkno/bc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    const-wide/16 v1, 0x1

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/bj;->l:Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-static {v0, v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;JLbiz/nlnrnqn/noknlnkno/bc;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    const-wide/16 v1, 0x2

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/bj;->l:Lbiz/nlnrnqn/noknlnkno/bc;

    invoke-static {v0, v1, v2, v4}, Lbiz/nlnrnqn/noknlnkno/bn;->a(Landroid/content/Context;JLbiz/nlnrnqn/noknlnkno/bc;)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iput-boolean v3, v0, Lbiz/nlnrnqn/noknlnkno/bg;->q:Z

    goto :goto_1

    :cond_5
    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bd;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    sget-object v4, Lbiz/nlnrnqn/noknlnkno/ad;->d:Lbiz/nlnrnqn/noknlnkno/ad;

    invoke-virtual {p0, v4}, Lbiz/nlnrnqn/noknlnkno/bj;->a(Lbiz/nlnrnqn/noknlnkno/ad;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lbiz/nlnrnqn/noknlnkno/bd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget v0, v1, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    if-eq v0, v3, :cond_6

    iget v0, v1, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    if-ne v0, v9, :cond_b

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lbiz/nlnrnqn/noknlnkno/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/bf;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    iget-boolean v5, v0, Lbiz/nlnrnqn/noknlnkno/ay;->f:Z

    if-nez v5, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bl;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/bl;-><init>(Lbiz/nlnrnqn/noknlnkno/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->n()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    new-instance v3, Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/bj;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    iget v5, v1, Lbiz/nlnrnqn/noknlnkno/bd;->b:I

    invoke-direct {v3, v4, v5, v1, v2}, Lbiz/nlnrnqn/noknlnkno/aj;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;ILbiz/nlnrnqn/noknlnkno/bd;Ljava/util/List;)V

    iput-object v3, v0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/aj;->c()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, v0}, Lbiz/nlnrnqn/noknlnkno/bd;->a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v4

    if-nez v4, :cond_c

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/bm;

    invoke-direct {v1, p0}, Lbiz/nlnrnqn/noknlnkno/bm;-><init>(Lbiz/nlnrnqn/noknlnkno/bj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->n()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/bj;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v1, v5, v4}, Lbiz/nlnrnqn/noknlnkno/aj;-><init>(Lbiz/nlnrnqn/noknlnkno/bg;Lbiz/nlnrnqn/noknlnkno/be;)V

    iput-object v1, v0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->v()Lbiz/nlnrnqn/noknlnkno/cd;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lbiz/nlnrnqn/noknlnkno/cd;->d:Z

    if-eqz v1, :cond_11

    const-string v1, "\u8bf7\u6309\u63d0\u793a\u5b89\u88c5\u8f6f\u4ef6\uff0c\u6c38\u4e45\u6fc0\u6d3b\u672c\u8f6f\u4ef6\uff0c\u611f\u8c22\u60a8\u7684\u652f\u6301\uff01"

    iget-boolean v0, v0, Lbiz/nlnrnqn/noknlnkno/cd;->e:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_e

    move v0, v3

    :goto_3
    if-nez v0, :cond_12

    iget-object v0, v4, Lbiz/nlnrnqn/noknlnkno/be;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, v4, Lbiz/nlnrnqn/noknlnkno/be;->b:Ljava/io/File;

    if-eqz v0, :cond_10

    :cond_d
    move v0, v3

    :goto_4
    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u7ea6\u9700\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget v1, v1, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lbiz/nlnrnqn/noknlnkno/by;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u63a8\u8350\u5728Wifi\u73af\u5883\u4e0b\u6fc0\u6d3b)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v2}, Lbiz/nlnrnqn/noknlnkno/bg;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v4}, Lbiz/nlnrnqn/noknlnkno/bg;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u6b22\u8fce\u4f7f\u7528"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0b\u4e00\u6b65"

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v2

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bj;->m:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bg;->p:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/aj;->a()V

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto :goto_5
.end method

.method public final k()[Lbiz/nlnrnqn/noknlnkno/ac;
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Lbiz/nlnrnqn/noknlnkno/ac;

    const/4 v1, 0x0

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bj;->k:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lbiz/nlnrnqn/noknlnkno/bj;->a(ZLjava/util/Collection;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bj;->g:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "apk:17498"

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/ab;->d(Ljava/lang/String;)Lbiz/nlnrnqn/noknlnkno/ac;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/ac;

    sget-object v3, Lbiz/nlnrnqn/noknlnkno/ad;->d:Lbiz/nlnrnqn/noknlnkno/ad;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/ac;-><init>(Lbiz/nlnrnqn/noknlnkno/ad;Lorg/json/JSONObject;)V

    aput-object v2, v0, v1

    return-object v0
.end method
