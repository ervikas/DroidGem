.class Lcom/Abby_Alex/record_Activity$1;
.super Landroid/os/Handler;
.source "record_Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Abby_Alex/record_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/record_Activity;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/record_Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity$1;->this$0:Lcom/Abby_Alex/record_Activity;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    .line 82
    return-void
.end method
