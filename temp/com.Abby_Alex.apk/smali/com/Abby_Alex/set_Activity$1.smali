.class Lcom/Abby_Alex/set_Activity$1;
.super Ljava/lang/Object;
.source "set_Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/set_Activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/set_Activity;

.field private final synthetic val$content:Landroid/widget/TextView;

.field private final synthetic val$time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/set_Activity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/set_Activity$1;->this$0:Lcom/Abby_Alex/set_Activity;

    iput-object p2, p0, Lcom/Abby_Alex/set_Activity$1;->val$content:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/Abby_Alex/set_Activity$1;->val$time:Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    iget-object v3, p0, Lcom/Abby_Alex/set_Activity$1;->val$content:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "text_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/Abby_Alex/set_Activity$1;->val$time:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 82
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "text_time":Ljava/lang/String;
    iget-object v3, p0, Lcom/Abby_Alex/set_Activity$1;->this$0:Lcom/Abby_Alex/set_Activity;

    iget-object v3, v3, Lcom/Abby_Alex/set_Activity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v3, "content"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v3, "time"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method
