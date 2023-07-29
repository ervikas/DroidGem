.class Lcom/Abby_Alex/vedio_Activity$1;
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

.field private final synthetic val$vPopupWindow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/vedio_Activity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/vedio_Activity$1;->this$0:Lcom/Abby_Alex/vedio_Activity;

    iput-object p2, p0, Lcom/Abby_Alex/vedio_Activity$1;->val$vPopupWindow:Landroid/view/View;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity$1;->val$vPopupWindow:Landroid/view/View;

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 201
    .local v0, "pad":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity$1;->this$0:Lcom/Abby_Alex/vedio_Activity;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/Abby_Alex/vedio_Activity;->pad_text:Ljava/lang/String;

    .line 202
    return-void
.end method
