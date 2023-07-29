.class abstract Lbiz/nlnrnqn/noknlnkno/a;
.super Lbiz/nlnrnqn/noknlnkno/bg;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bg;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/a;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/a;->a:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/a;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected a(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->o()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/bg;->finish()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->t()Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->openOptionsMenu()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->q()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->r()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090016
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected final b()V
    .locals 2

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbiz/nlnrnqn/noknlnkno/b17;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final c()V
    .locals 0

    invoke-static {p0}, Lbiz/nlnrnqn/noknlnkno/d1;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected final d()Ljava/lang/Class;
    .locals 1

    const-class v0, Lbiz/nlnrnqn/noknlnkno/d1;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->o()V

    invoke-super {p0, p1}, Lbiz/nlnrnqn/noknlnkno/bg;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->h()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/a;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
