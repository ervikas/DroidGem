.class final Lbiz/nlnrnqn/noknlnkno/bi;
.super Lbiz/nlnrnqn/noknlnkno/p;


# instance fields
.field final synthetic f:Lbiz/nlnrnqn/noknlnkno/bg;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bg;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bi;->f:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lbiz/nlnrnqn/noknlnkno/bq;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bi;->f:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bi;->f:Lbiz/nlnrnqn/noknlnkno/bg;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/bg;->k:Lbiz/nlnrnqn/noknlnkno/ah;

    invoke-interface {v0, p1}, Lbiz/nlnrnqn/noknlnkno/ah;->a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/cd;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bi;->f:Lbiz/nlnrnqn/noknlnkno/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbiz/nlnrnqn/noknlnkno/bg;->b(I)Z

    return-void
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bi;->f:Lbiz/nlnrnqn/noknlnkno/bg;

    const-string v1, "\u8bf7\u8054\u7f51\u6fc0\u6d3b\u672c\u5e94\u7528"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0}, Lbiz/nlnrnqn/noknlnkno/p;->c()V

    return-void
.end method
