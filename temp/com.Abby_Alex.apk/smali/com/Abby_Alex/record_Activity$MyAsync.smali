.class Lcom/Abby_Alex/record_Activity$MyAsync;
.super Landroid/os/AsyncTask;
.source "record_Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Abby_Alex/record_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/record_Activity;


# direct methods
.method private constructor <init>(Lcom/Abby_Alex/record_Activity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/Abby_Alex/record_Activity;Lcom/Abby_Alex/record_Activity$MyAsync;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/Abby_Alex/record_Activity$MyAsync;-><init>(Lcom/Abby_Alex/record_Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/Abby_Alex/record_Activity$MyAsync;)Lcom/Abby_Alex/record_Activity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/Abby_Alex/record_Activity$MyAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    invoke-static {v1}, Lcom/Abby_Alex/record_Activity;->access$0(Lcom/Abby_Alex/record_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM love_table"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/Abby_Alex/record_Activity;->file_array:Ljava/util/ArrayList;

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    invoke-static {v1}, Lcom/Abby_Alex/record_Activity;->access$0(Lcom/Abby_Alex/record_Activity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    :cond_0
    return-object v3

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    new-instance v2, Lcom/Abby_Alex_MediaFactory/FileClass;

    invoke-direct {v2}, Lcom/Abby_Alex_MediaFactory/FileClass;-><init>()V

    iput-object v2, v1, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    .line 97
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_type:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_name:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_create_time:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/Abby_Alex_MediaFactory/FileClass;->file_path:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->file_array:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v2, v2, Lcom/Abby_Alex/record_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/Abby_Alex/record_Activity$MyAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v0, v0, Lcom/Abby_Alex/record_Activity;->file_array:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    new-instance v1, Lcom/Abby_Alex/record_Activity$Adapter;

    iget-object v2, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v3, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v3, v3, Lcom/Abby_Alex/record_Activity;->file_array:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/Abby_Alex/record_Activity$Adapter;-><init>(Lcom/Abby_Alex/record_Activity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/Abby_Alex/record_Activity;->mAdapter:Lcom/Abby_Alex/record_Activity$Adapter;

    .line 118
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v0, v0, Lcom/Abby_Alex/record_Activity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v1, v1, Lcom/Abby_Alex/record_Activity;->mAdapter:Lcom/Abby_Alex/record_Activity$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity$MyAsync;->this$0:Lcom/Abby_Alex/record_Activity;

    iget-object v0, v0, Lcom/Abby_Alex/record_Activity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/Abby_Alex/record_Activity$MyAsync$1;

    invoke-direct {v1, p0}, Lcom/Abby_Alex/record_Activity$MyAsync$1;-><init>(Lcom/Abby_Alex/record_Activity$MyAsync;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    :cond_0
    return-void
.end method
