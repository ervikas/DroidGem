.class public Lcom/Abby_Alex/vedio_Activity;
.super Landroid/app/Activity;
.source "vedio_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/Abby_Alex/Constant;


# instance fields
.field back:Landroid/widget/Button;

.field current_time:Ljava/lang/String;

.field mMediaRecorder:Landroid/media/MediaRecorder;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceview:Landroid/view/SurfaceView;

.field pad_text:Ljava/lang/String;

.field start:Landroid/widget/Button;

.field stop:Landroid/widget/Button;

.field text:Landroid/widget/TextView;

.field vedio_file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->pad_text:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    return-void
.end method


# virtual methods
.method public getCurrentTime()V
    .locals 4

    .prologue
    .line 182
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 183
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss "

    .line 182
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 185
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/vedio_Activity;->current_time:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 80
    .local v4, "id":I
    packed-switch v4, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    invoke-virtual {v5, v7}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v5, :cond_0

    .line 85
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 89
    :goto_1
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 90
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 91
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 92
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 93
    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 94
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 95
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 96
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0xb0

    const/16 v7, 0x90

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 97
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 98
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/Abby_Alex/vedio_Activity;->vedio_path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "f":Ljava/io/File;
    :try_start_0
    const-string v5, "Vedio"

    const-string v6, ".m4v"

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    .line 100
    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->vedio_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_2
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/Abby_Alex/vedio_Activity;->vedio_file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 108
    :try_start_1
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 109
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 117
    :goto_3
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 87
    .end local v3    # "f":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->reset()V

    goto :goto_1

    .line 102
    .restart local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 110
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :pswitch_1
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 125
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 126
    iput-object v7, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 127
    invoke-virtual {p0}, Lcom/Abby_Alex/vedio_Activity;->getCurrentTime()V

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "type"

    const-string v6, "vedio"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v5, "name"

    const-string v6, "\u5f55 \u50cf"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v5, "time"

    iget-object v6, p0, Lcom/Abby_Alex/vedio_Activity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v5, "path"

    iget-object v6, p0, Lcom/Abby_Alex/vedio_Activity;->vedio_file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v5, "content"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "love_table"

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 135
    const-string v5, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/Abby_Alex/vedio_Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "cv":Landroid/content/ContentValues;
    :pswitch_2
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 144
    iget-object v5, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 145
    iput-object v7, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/Abby_Alex/vedio_Activity;->finish()V

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f060028
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/vedio_Activity;->setContentView(I)V

    .line 46
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/vedio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->start:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->start:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/vedio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->stop:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/vedio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->back:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/vedio_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    .line 53
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "mounted"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "\u6ca1\u6709SD\u5361"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 64
    .local v0, "holder":Landroid/view/SurfaceHolder;
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 65
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 66
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 68
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->stop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->back:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    const-string v1, "love_db"

    .line 72
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, v1, v3, v2}, Lcom/Abby_Alex/vedio_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/Abby_Alex/vedio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    return-void
.end method

.method public showPopupWindow(Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x12c

    const/4 v7, 0x0

    .line 190
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    check-cast v2, Landroid/view/LayoutInflater;

    .line 191
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 192
    .local v4, "vPopupWindow":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v8, v8, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 195
    .local v3, "pw":Landroid/widget/PopupWindow;
    const v5, 0x7f060018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 196
    .local v1, "btnOK":Landroid/widget/Button;
    new-instance v5, Lcom/Abby_Alex/vedio_Activity$1;

    invoke-direct {v5, p0, v4}, Lcom/Abby_Alex/vedio_Activity$1;-><init>(Lcom/Abby_Alex/vedio_Activity;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v5, 0x7f060019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 207
    .local v0, "btnCancel":Landroid/widget/Button;
    new-instance v5, Lcom/Abby_Alex/vedio_Activity$2;

    invoke-direct {v5, p0, v3}, Lcom/Abby_Alex/vedio_Activity$2;-><init>(Lcom/Abby_Alex/vedio_Activity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const/16 v5, 0x11

    invoke-virtual {v3, p2, v5, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 216
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 163
    iput-object p1, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 164
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 170
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceview:Landroid/view/SurfaceView;

    .line 176
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 177
    iput-object v0, p0, Lcom/Abby_Alex/vedio_Activity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 178
    return-void
.end method
