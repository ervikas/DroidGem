.class Lcom/Abby_Alex/vedio_Activity$2;
.super Ljava/lang/Object;
.source "vedio_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/vedio_Activity;->showPopupWindow(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/vedio_Activity;

.field private final synthetic val$pw:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/vedio_Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/vedio_Activity$2;->this$0:Lcom/Abby_Alex/vedio_Activity;

    iput-object p2, p0, Lcom/Abby_Alex/vedio_Activity$2;->val$pw:Landroid/widget/PopupWindow;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/Abby_Alex/vedio_Activity$2;->this$0:Lcom/Abby_Alex/vedio_Activity;

    const-string v1, ""

    iput-object v1, v0, Lcom/Abby_Alex/vedio_Activity;->pad_text:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/Abby_Alex/vedio_Activity$2;->val$pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 212
    return-void
.end method
