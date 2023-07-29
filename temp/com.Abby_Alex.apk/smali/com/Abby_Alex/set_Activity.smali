.class public Lcom/Abby_Alex/set_Activity;
.super Landroid/app/Activity;
.source "set_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field about:Landroid/widget/LinearLayout;

.field advoice:Landroid/widget/LinearLayout;

.field count:Landroid/widget/LinearLayout;

.field intent:Landroid/content/Intent;

.field more:Landroid/widget/LinearLayout;

.field set:Landroid/widget/LinearLayout;

.field sp:Landroid/content/SharedPreferences;

.field text:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 57
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    return-void

    .line 59
    :pswitch_1
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/waps/AppConnect;->showOffers(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-virtual {p0}, Lcom/Abby_Alex/set_Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 63
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030009

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "layout":Landroid/view/View;
    const v5, 0x7f060025

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "content":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/Abby_Alex/set_Activity;->sp:Landroid/content/SharedPreferences;

    const-string v6, "content"

    const-string v7, "\u6211\u4eec\u5728\u4e00\u8d77\u5f88\u4e45\u4e86"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 68
    const v5, 0x7f060027

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 67
    check-cast v4, Landroid/widget/TextView;

    .line 69
    .local v4, "time":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/Abby_Alex/set_Activity;->sp:Landroid/content/SharedPreferences;

    const-string v6, "time"

    const-string v7, "2012/07/16"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 72
    const-string v6, "\u786e\u5b9a"

    .line 73
    new-instance v7, Lcom/Abby_Alex/set_Activity$1;

    invoke-direct {v7, p0, v0, v4}, Lcom/Abby_Alex/set_Activity$1;-><init>(Lcom/Abby_Alex/set_Activity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 72
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 89
    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 92
    .end local v0    # "content":Landroid/widget/TextView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "time":Landroid/widget/TextView;
    :pswitch_3
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waps/AppConnect;->showFeedback()V

    goto :goto_0

    .line 95
    :pswitch_4
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/Abby_Alex/about_Activity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/Abby_Alex/set_Activity;->intent:Landroid/content/Intent;

    .line 96
    iget-object v5, p0, Lcom/Abby_Alex/set_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/Abby_Alex/set_Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001c
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->setContentView(I)V

    .line 39
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->more:Landroid/widget/LinearLayout;

    .line 40
    iget-object v0, p0, Lcom/Abby_Alex/set_Activity;->more:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->set:Landroid/widget/LinearLayout;

    .line 42
    iget-object v0, p0, Lcom/Abby_Alex/set_Activity;->set:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->count:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/Abby_Alex/set_Activity;->count:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->about:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lcom/Abby_Alex/set_Activity;->about:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/set_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->advoice:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/Abby_Alex/set_Activity;->advoice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-string v0, "Config"

    .line 50
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/Abby_Alex/set_Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/set_Activity;->sp:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method
