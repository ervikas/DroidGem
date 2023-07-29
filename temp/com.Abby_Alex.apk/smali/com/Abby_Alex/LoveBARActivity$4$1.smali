.class Lcom/Abby_Alex/LoveBARActivity$4$1;
.super Ljava/lang/Object;
.source "LoveBARActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/LoveBARActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/Abby_Alex/LoveBARActivity$4;

.field private final synthetic val$content:Landroid/widget/TextView;

.field private final synthetic val$time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/LoveBARActivity$4;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->this$1:Lcom/Abby_Alex/LoveBARActivity$4;

    iput-object p2, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->val$content:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->val$time:Landroid/widget/TextView;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 241
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->val$content:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 242
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "text_content":Ljava/lang/String;
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->val$time:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "text_time":Ljava/lang/String;
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->this$1:Lcom/Abby_Alex/LoveBARActivity$4;

    invoke-static {v4}, Lcom/Abby_Alex/LoveBARActivity$4;->access$0(Lcom/Abby_Alex/LoveBARActivity$4;)Lcom/Abby_Alex/LoveBARActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    .line 246
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 250
    :cond_0
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    const-string v4, "content"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v4, "time"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 257
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 258
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->this$1:Lcom/Abby_Alex/LoveBARActivity$4;

    invoke-static {v4}, Lcom/Abby_Alex/LoveBARActivity$4;->access$0(Lcom/Abby_Alex/LoveBARActivity$4;)Lcom/Abby_Alex/LoveBARActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/Abby_Alex/LoveBARActivity;->h:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity$4$1;->this$1:Lcom/Abby_Alex/LoveBARActivity$4;

    invoke-static {v4}, Lcom/Abby_Alex/LoveBARActivity$4;->access$0(Lcom/Abby_Alex/LoveBARActivity$4;)Lcom/Abby_Alex/LoveBARActivity;

    move-result-object v4

    .line 262
    const-string v5, "\u8bf7\u8f93\u5165\u6b63\u786e\u65e5\u671f\u683c\u5f0f\uff082011/07/16\uff09"

    .line 260
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 264
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
