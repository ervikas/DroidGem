.class Lcom/Abby_Alex/LoveBARActivity$3;
.super Landroid/os/Handler;
.source "LoveBARActivity.java"


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
    iput-object p1, p0, Lcom/Abby_Alex/LoveBARActivity$3;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity$3;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    invoke-static {v0}, Lcom/Abby_Alex/LoveBARActivity;->access$2(Lcom/Abby_Alex/LoveBARActivity;)V

    .line 189
    :cond_0
    return-void
.end method
