.class public Lcom/Abby_Alex/Edit_Activity;
.super Landroid/app/Activity;
.source "Edit_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/Abby_Alex/Constant;


# instance fields
.field cancle:Landroid/widget/Button;

.field private current_time:Ljava/lang/String;

.field edit:Landroid/widget/EditText;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;

.field save:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    return-void
.end method


# virtual methods
.method public getCurrentTime()V
    .locals 4

    .prologue
    .line 105
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 106
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss "

    .line 105
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 108
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/Edit_Activity;->current_time:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 52
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 54
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 56
    const-string v4, "\u786e\u8ba4\u9000\u51fa\u7f16\u8f91\uff1f"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 57
    const-string v4, "\u786e\u5b9a"

    .line 58
    new-instance v5, Lcom/Abby_Alex/Edit_Activity$1;

    invoke-direct {v5, p0}, Lcom/Abby_Alex/Edit_Activity$1;-><init>(Lcom/Abby_Alex/Edit_Activity;)V

    .line 57
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 67
    const-string v4, "\u53d6\u6d88"

    .line 68
    new-instance v5, Lcom/Abby_Alex/Edit_Activity$2;

    invoke-direct {v5, p0}, Lcom/Abby_Alex/Edit_Activity$2;-><init>(Lcom/Abby_Alex/Edit_Activity;)V

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 77
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/Abby_Alex/Edit_Activity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/Abby_Alex/Edit_Activity;->finish()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 84
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    iget-object v3, p0, Lcom/Abby_Alex/Edit_Activity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/Abby_Alex/Edit_Activity;->getCurrentTime()V

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "type"

    const-string v4, "text"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "name"

    const-string v4, "\u4fbf \u7b7e"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "time"

    iget-object v4, p0, Lcom/Abby_Alex/Edit_Activity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "path"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "content"

    iget-object v4, p0, Lcom/Abby_Alex/Edit_Activity;->edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/Abby_Alex/Edit_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "love_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 93
    iget-object v3, p0, Lcom/Abby_Alex/Edit_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 94
    const-string v3, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Lcom/Abby_Alex/Edit_Activity;->finish()V

    goto/16 :goto_0

    .line 98
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string v3, "\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x7f060007
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/Edit_Activity;->setContentView(I)V

    .line 39
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/Edit_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->edit:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/Edit_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->cancle:Landroid/widget/Button;

    .line 41
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/Edit_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->save:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->cancle:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-string v0, "love_db"

    .line 45
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/Abby_Alex/Edit_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/Abby_Alex/Edit_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method
