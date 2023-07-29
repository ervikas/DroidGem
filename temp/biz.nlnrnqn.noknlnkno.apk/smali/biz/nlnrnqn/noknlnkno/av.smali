.class final Lbiz/nlnrnqn/noknlnkno/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/content/DialogInterface;

.field b:Lbiz/nlnrnqn/noknlnkno/ay;

.field final synthetic c:Lbiz/nlnrnqn/noknlnkno/aj;


# direct methods
.method private constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;Landroid/content/DialogInterface;Lbiz/nlnrnqn/noknlnkno/ay;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/av;->a:Landroid/content/DialogInterface;

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/av;->b:Lbiz/nlnrnqn/noknlnkno/ay;

    return-void
.end method

.method synthetic constructor <init>(Lbiz/nlnrnqn/noknlnkno/aj;Landroid/content/DialogInterface;Lbiz/nlnrnqn/noknlnkno/ay;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbiz/nlnrnqn/noknlnkno/av;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Landroid/content/DialogInterface;Lbiz/nlnrnqn/noknlnkno/ay;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/av;->b:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v1

    iput-object v1, v0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/av;->b:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v2, v2, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->c(Landroid/content/Context;)Lbiz/nlnrnqn/noknlnkno/be;

    move-result-object v1

    iput-object v1, v0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->a:Lbiz/nlnrnqn/noknlnkno/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/av;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/av;->b:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v3, v3, Lbiz/nlnrnqn/noknlnkno/ay;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u4e2d, \u8bf7\u7a0d\u5019"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/aj;->a(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
