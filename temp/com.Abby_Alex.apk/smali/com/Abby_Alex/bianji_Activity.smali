.class public Lcom/Abby_Alex/bianji_Activity;
.super Landroid/app/Activity;
.source "bianji_Activity.java"

# interfaces
.implements Lcom/Abby_Alex/Constant;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field cancle:Landroid/widget/Button;

.field private current_time:Ljava/lang/String;

.field edit:Landroid/widget/EditText;

.field file:Lcom/Abby_Alex_MediaFactory/FileClass;

.field id:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;

.field save:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method


# virtual methods
.method public getCurrentTime()V
    .locals 4

    .prologue
    .line 98
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 99
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss "

    .line 98
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 101
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->current_time:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 64
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/Abby_Alex/bianji_Activity;->getCurrentTime()V

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "type"

    const-string v3, "text"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "name"

    iget-object v3, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    iget-object v3, v3, Lcom/Abby_Alex_MediaFactory/FileClass;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "time"

    iget-object v3, p0, Lcom/Abby_Alex/bianji_Activity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "path"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "content"

    iget-object v3, p0, Lcom/Abby_Alex/bianji_Activity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "love_table"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 75
    invoke-virtual {p0}, Lcom/Abby_Alex/bianji_Activity;->finish()V

    goto :goto_0

    .line 78
    .end local v0    # "cv":Landroid/content/ContentValues;
    :pswitch_1
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/Abby_Alex/bianji_Activity;->finish()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x7f060007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/Abby_Alex/bianji_Activity;->setContentView(I)V

    .line 36
    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Lcom/Abby_Alex/bianji_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->save:Landroid/widget/Button;

    .line 37
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->save:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/Abby_Alex/bianji_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->cancle:Landroid/widget/Button;

    .line 39
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->cancle:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/Abby_Alex/bianji_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->edit:Landroid/widget/EditText;

    .line 41
    invoke-virtual {p0}, Lcom/Abby_Alex/bianji_Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->intent:Landroid/content/Intent;

    .line 42
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->id:Ljava/lang/String;

    .line 44
    new-instance v2, Lcom/Abby_Alex_MediaFactory/FileClass;

    invoke-direct {v2}, Lcom/Abby_Alex_MediaFactory/FileClass;-><init>()V

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    .line 45
    const-string v2, "love_db"

    .line 46
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, v2, v3, v5}, Lcom/Abby_Alex/bianji_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM love_table WHERE id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Abby_Alex/bianji_Activity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_type:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_name:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_create_time:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_path:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/Abby_Alex_MediaFactory/FileClass;->file_content:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/Abby_Alex/bianji_Activity;->edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/Abby_Alex/bianji_Activity;->file:Lcom/Abby_Alex_MediaFactory/FileClass;

    iget-object v3, v3, Lcom/Abby_Alex_MediaFactory/FileClass;->file_content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/Abby_Alex/bianji_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method
