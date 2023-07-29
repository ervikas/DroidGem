.class final Lbiz/nlnrnqn/noknlnkno/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lbiz/nlnrnqn/noknlnkno/x;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbiz/nlnrnqn/noknlnkno/an;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/an;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    iput-object p2, p0, Lbiz/nlnrnqn/noknlnkno/ap;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/ap;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/aj;->b:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->u()I

    move-result v0

    return v0
.end method

.method public final a(ZLandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ap;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/an;->a:Lbiz/nlnrnqn/noknlnkno/ay;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/an;->c:Lbiz/nlnrnqn/noknlnkno/aj;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/aj;->e:Lbiz/nlnrnqn/noknlnkno/bd;

    iget-object v1, v1, Lbiz/nlnrnqn/noknlnkno/bd;->d:Ljava/lang/String;

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    iget-object v0, v0, Lbiz/nlnrnqn/noknlnkno/an;->d:Lbiz/nlnrnqn/noknlnkno/bg;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/bg;->s()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ap;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/ap;->c:Lbiz/nlnrnqn/noknlnkno/an;

    invoke-virtual {v1}, Lbiz/nlnrnqn/noknlnkno/an;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
