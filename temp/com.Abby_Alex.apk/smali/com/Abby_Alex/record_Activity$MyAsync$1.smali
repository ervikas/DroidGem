.class Lcom/Abby_Alex/record_Activity$MyAsync$1;
.super Ljava/lang/Object;
.source "record_Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Abby_Alex/record_Activity$MyAsync;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/Abby_Alex/record_Activity$MyAsync;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/record_Activity$MyAsync;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1;->this$1:Lcom/Abby_Alex/record_Activity$MyAsync;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/Abby_Alex/record_Activity$MyAsync$1;)Lcom/Abby_Alex/record_Activity$MyAsync;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1;->this$1:Lcom/Abby_Alex/record_Activity$MyAsync;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move v3, p3

    .line 126
    .local v3, "id":I
    iget-object v5, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1;->this$1:Lcom/Abby_Alex/record_Activity$MyAsync;

    invoke-static {v5}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v5

    iget-object v5, v5, Lcom/Abby_Alex/record_Activity;->file_array:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/Abby_Alex_MediaFactory/FileClass;

    .line 127
    .local v1, "f":Lcom/Abby_Alex_MediaFactory/FileClass;
    iget-object v4, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_type:Ljava/lang/String;

    .line 129
    .local v4, "type":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_path:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "ff":Ljava/io/File;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 131
    iget-object v5, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1;->this$1:Lcom/Abby_Alex/record_Activity$MyAsync;

    invoke-static {v5}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v5

    .line 130
    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/Abby_Alex/record_Activity$MyAsync$1;->this$1:Lcom/Abby_Alex/record_Activity$MyAsync;

    invoke-static {v5}, Lcom/Abby_Alex/record_Activity$MyAsync;->access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;

    move-result-object v5

    iget-object v5, v5, Lcom/Abby_Alex/record_Activity;->choice:[Ljava/lang/String;

    .line 133
    new-instance v6, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/Abby_Alex/record_Activity$MyAsync$1$1;-><init>(Lcom/Abby_Alex/record_Activity$MyAsync$1;Ljava/lang/String;ILjava/io/File;)V

    .line 132
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 203
    return-void
.end method
