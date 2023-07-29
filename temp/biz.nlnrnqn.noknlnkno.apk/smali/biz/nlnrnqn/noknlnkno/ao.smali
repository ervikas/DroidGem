.class final Lbiz/nlnrnqn/noknlnkno/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/an;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/an;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ao;->a:Lbiz/nlnrnqn/noknlnkno/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ao;->a:Lbiz/nlnrnqn/noknlnkno/an;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/an;->dismiss()V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ao;->a:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ao;->a:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->g:Lbiz/nlnrnqn/noknlnkno/ar;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/ar;->show()V

    :cond_0
    return-void
.end method
