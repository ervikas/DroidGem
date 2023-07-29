.class Lcom/waps/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/waps/al;


# direct methods
.method constructor <init>(Lcom/waps/al;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/am;->a:Lcom/waps/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v2, 0xb4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/waps/am;->a:Lcom/waps/al;

    iget-object v0, v0, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/waps/am;->a:Lcom/waps/al;

    iget-object v0, v0, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waps/am;->a:Lcom/waps/al;

    iget-object v1, v1, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    invoke-static {v1}, Lcom/waps/MiniAdView;->f(Lcom/waps/MiniAdView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/waps/am;->a:Lcom/waps/al;

    iget-object v0, v0, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    iget-object v0, v0, Lcom/waps/MiniAdView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waps/am;->a:Lcom/waps/al;

    iget-object v1, v1, Lcom/waps/al;->a:Lcom/waps/MiniAdView;

    invoke-static {v1}, Lcom/waps/MiniAdView;->f(Lcom/waps/MiniAdView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
