.class final Lbiz/nlnrnqn/noknlnkno/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/ar;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/ar;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/as;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/as;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/as;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ar;->dismiss()V

    new-instance v1, Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/as;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v2, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/as;->a:Lbiz/nlnrnqn/noknlnkno/ar;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/ar;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiz/nlnrnqn/noknlnkno/ay;

    invoke-direct {v1, v2, v0}, Lbiz/nlnrnqn/noknlnkno/an;-><init>(Lbiz/nlnrnqn/noknlnkno/aj;Lbiz/nlnrnqn/noknlnkno/ay;)V

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/an;->show()V

    :cond_0
    return-void
.end method
