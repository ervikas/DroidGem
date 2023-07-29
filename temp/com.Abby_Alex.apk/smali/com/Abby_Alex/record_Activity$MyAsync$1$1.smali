.class Lcom/Abby_Alex/record_Activity$MyAsync$1$1;
.super Ljava/lang/Object;
.source "record_Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/record_Activity$MyAsync$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

.field private final synthetic val$ff:Ljava/io/File;

.field private final synthetic val$id:I

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/record_Activity$MyAsync$1;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    iput-object p2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$id:I

    iput-object p4, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$ff:Ljava/io/File;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 139
    packed-switch p2, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$type:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    .line 146
    const-class v4, Lcom/Abby_Alex/bianji_Activity;

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$id:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    iget-object v3, v3, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/Abby_Alex/record_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$ff:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 159
    const-string v4, "image/*"

    .line 157
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    iget-object v3, v3, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/Abby_Alex/record_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$type:Ljava/lang/String;

    const-string v3, "vedio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "oneshot"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "configchange"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$ff:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 170
    const-string v4, "video/*"

    .line 168
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    iget-object v3, v3, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/Abby_Alex/record_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$type:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "oneshot"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    const-string v3, "configchange"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    .line 180
    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$ff:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 181
    const-string v4, "audio/*"

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    iget-object v3, v3, Lcom/Abby_Alex/record_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/Abby_Alex/record_Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :pswitch_1
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity;->access$0(Lcom/Abby_Alex/record_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v3

    invoke-static {v3}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v3

    const-string v4, "love_db"

    invoke-virtual {v3, v4, v5, v6}, Lcom/Abby_Alex/record_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/Abby_Alex/record_Activity;->access$1(Lcom/Abby_Alex/record_Activity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->this$2:Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1;->access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/Abby_Alex/record_Activity;->access$0(Lcom/Abby_Alex/record_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "love_db.db"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " where id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 192
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
