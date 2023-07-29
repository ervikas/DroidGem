.class public Lcom/Abby_Alex/audio_Activity;
.super Landroid/app/Activity;
.source "audio_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/Abby_Alex/Constant;


# instance fields
.field audio_file:Ljava/io/File;

.field back:Landroid/widget/Button;

.field current_time:Ljava/lang/String;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;

.field start:Landroid/widget/Button;

.field stop:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    return-void
.end method


# virtual methods
.method public getCurrentTime()V
    .locals 4

    .prologue
    .line 141
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 142
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss "

    .line 141
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 144
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/audio_Activity;->current_time:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 65
    .local v4, "id":I
    packed-switch v4, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string v5, "\u5f00\u59cb\u5f55\u97f3"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 70
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 72
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 78
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 80
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 81
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/Abby_Alex/audio_Activity;->audio_path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "f":Ljava/io/File;
    :try_start_0
    const-string v5, "Vedio"

    const-string v6, ".amr"

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    .line 83
    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/Abby_Alex/audio_Activity;->audio_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/Abby_Alex/audio_Activity;->audio_file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 92
    :try_start_1
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :goto_2
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 102
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :pswitch_1
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->audio_file:Ljava/io/File;

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 112
    iput-object v7, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 113
    invoke-virtual {p0}, Lcom/Abby_Alex/audio_Activity;->getCurrentTime()V

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "type"

    const-string v6, "audio"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "name"

    const-string v6, "\u5f55 \u97f3"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v5, "time"

    iget-object v6, p0, Lcom/Abby_Alex/audio_Activity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "path"

    iget-object v6, p0, Lcom/Abby_Alex/audio_Activity;->audio_file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v5, "content"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "love_table"

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 121
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    const-string v5, "\u4fdd\u5b58\u5f55\u97f3\u6210\u529f"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 123
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 124
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "cv":Landroid/content/ContentValues;
    :pswitch_2
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 131
    iget-object v5, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 132
    iput-object v7, p0, Lcom/Abby_Alex/audio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/Abby_Alex/audio_Activity;->finish()V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f060003
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/audio_Activity;->setContentView(I)V

    .line 33
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/audio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Abby_Alex/audio_Activity;->start:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/audio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Abby_Alex/audio_Activity;->stop:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/audio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Abby_Alex/audio_Activity;->back:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "mounted"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "\u6ca1\u6709SD\u5361"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_0
    const-string v0, "love_db"

    .line 49
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v2, v1}, Lcom/Abby_Alex/audio_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/Abby_Alex/audio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    return-void
.end method
