.class final Lbiz/nlnrnqn/noknlnkno/am;
.super Lbiz/nlnrnqn/noknlnkno/q;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field f:Landroid/app/ProgressDialog;

.field final synthetic g:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method public constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/am;->g:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/q;-><init>()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p1, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    iget-object v1, p1, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    iget v1, v1, Lbiz/nlnrnqn/noknlnkno/az;->b:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    if-nez p3, :cond_1

    const-string p3, "\u6fc0\u6d3b\u4e2d \u8bf7\u7a0d\u5019..."

    :cond_1
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/io/File;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->g:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/be;->a:Lbiz/nlnrnqn/noknlnkno/az;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/az;->b()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->g:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-static {v0, p1}, Lbiz/nlnrnqn/noknlnkno/aj;->a(Lbiz/nlnrnqn/noknlnkno/aj;Ljava/io/File;)V

    return-void
.end method

.method protected final synthetic a([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Long;

    iget-boolean v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/am;->g:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38\u8fde\u63a5\u518d\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/am;->a(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
