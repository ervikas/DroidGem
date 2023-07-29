.class Lcom/Abby_Alex/LoveBARActivity$4;
.super Ljava/lang/Object;
.source "LoveBARActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Abby_Alex/LoveBARActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/LoveBARActivity;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/LoveBARActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/Abby_Alex/LoveBARActivity$4;)Lcom/Abby_Alex/LoveBARActivity;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-class v7, Lcom/Abby_Alex/Edit_Activity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 201
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, v5, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    sget-object v5, Lcom/Abby_Alex/LoveBARActivity;->img_path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/Abby_Alex_MediaFactory/MediaFactory;->takePhoto(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-class v7, Lcom/Abby_Alex/audio_Activity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 208
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, v5, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-class v7, Lcom/Abby_Alex/vedio_Activity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 212
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, v5, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-class v7, Lcom/Abby_Alex/record_Activity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 216
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, v5, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 220
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v4, v4, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-class v6, Lcom/Abby_Alex/set_Activity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v5, v5, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    :pswitch_7
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    invoke-virtual {v4}, Lcom/Abby_Alex/LoveBARActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 225
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030009

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f060025

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, "content":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v4, v4, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "content"

    const-string v6, "\u6211\u4eec\u5728\u4e00\u8d77\u5f88\u4e45\u4e86"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 230
    const v4, 0x7f060027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 229
    check-cast v3, Landroid/widget/TextView;

    .line 231
    .local v3, "time":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v4, v4, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "time"

    const-string v6, "2011/07/16"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity$4;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 234
    const-string v5, "\u786e\u5b9a"

    .line 235
    new-instance v6, Lcom/Abby_Alex/LoveBARActivity$4$1;

    invoke-direct {v6, p0, v0, v3}, Lcom/Abby_Alex/LoveBARActivity$4$1;-><init>(Lcom/Abby_Alex/LoveBARActivity$4;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 234
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 272
    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x7f06000d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
