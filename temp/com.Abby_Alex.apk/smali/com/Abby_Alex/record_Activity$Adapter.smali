.class public Lcom/Abby_Alex/record_Activity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "record_Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Abby_Alex/record_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Abby_Alex_MediaFactory/FileClass;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/Abby_Alex/record_Activity;


# direct methods
.method public constructor <init>(Lcom/Abby_Alex/record_Activity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Abby_Alex_MediaFactory/FileClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/Abby_Alex_MediaFactory/FileClass;>;"
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity$Adapter;->this$0:Lcom/Abby_Alex/record_Activity;

    .line 219
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/Abby_Alex/record_Activity$Adapter;->array:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$Adapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$Adapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 238
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$Adapter;->this$0:Lcom/Abby_Alex/record_Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 245
    const v3, 0x7f030004

    const/4 v4, 0x0

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 246
    const v2, 0x7f060009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, "name":Landroid/widget/TextView;
    const v2, 0x7f06000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, "time":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$Adapter;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$Adapter;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/Abby_Alex_MediaFactory/FileClass;

    iput-object v2, v3, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    .line 249
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$Adapter;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    iget-object v2, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$Adapter;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    iget-object v2, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_create_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-object p2
.end method
