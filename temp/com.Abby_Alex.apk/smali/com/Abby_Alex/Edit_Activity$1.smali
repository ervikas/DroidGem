.class Lcom/Abby_Alex/Edit_Activity$1;
.super Ljava/lang/Object;
.source "Edit_Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/Edit_Activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/Edit_Activity;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/Edit_Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/Edit_Activity$1;->this$0:Lcom/Abby_Alex/Edit_Activity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/Abby_Alex/Edit_Activity$1;->this$0:Lcom/Abby_Alex/Edit_Activity;

    invoke-virtual {v0}, Lcom/Abby_Alex/Edit_Activity;->finish()V

    .line 65
    return-void
.end method
