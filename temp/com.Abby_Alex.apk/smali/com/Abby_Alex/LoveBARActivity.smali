.class public Lcom/Abby_Alex/LoveBARActivity;
.super Landroid/app/Activity;
.source "LoveBARActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/Abby_Alex/Constant;


# instance fields
.field check_dataBase:Ljava/lang/Thread;

.field check_file:Ljava/lang/Thread;

.field private click:Landroid/view/View$OnClickListener;

.field private current_time:Ljava/lang/String;

.field cv:Landroid/content/ContentValues;

.field h:Landroid/os/Handler;

.field img_audio:Landroid/widget/ImageView;

.field img_camera:Landroid/widget/ImageView;

.field img_edit:Landroid/widget/ImageView;

.field img_recode:Landroid/widget/ImageView;

.field img_set:Landroid/widget/ImageView;

.field img_vedio:Landroid/widget/ImageView;

.field intent:Landroid/content/Intent;

.field public mMediaFile:Ljava/io/File;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mediaFilePath:Ljava/lang/String;

.field sp:Landroid/content/SharedPreferences;

.field time:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    .line 134
    new-instance v0, Lcom/Abby_Alex/LoveBARActivity$1;

    invoke-direct {v0, p0}, Lcom/Abby_Alex/LoveBARActivity$1;-><init>(Lcom/Abby_Alex/LoveBARActivity;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->check_file:Ljava/lang/Thread;

    .line 166
    new-instance v0, Lcom/Abby_Alex/LoveBARActivity$2;

    invoke-direct {v0, p0}, Lcom/Abby_Alex/LoveBARActivity$2;-><init>(Lcom/Abby_Alex/LoveBARActivity;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->check_dataBase:Ljava/lang/Thread;

    .line 180
    new-instance v0, Lcom/Abby_Alex/LoveBARActivity$3;

    invoke-direct {v0, p0}, Lcom/Abby_Alex/LoveBARActivity$3;-><init>(Lcom/Abby_Alex/LoveBARActivity;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->h:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/Abby_Alex/LoveBARActivity$4;

    invoke-direct {v0, p0}, Lcom/Abby_Alex/LoveBARActivity$4;-><init>(Lcom/Abby_Alex/LoveBARActivity;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/Abby_Alex/LoveBARActivity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$1(Lcom/Abby_Alex/LoveBARActivity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$2(Lcom/Abby_Alex/LoveBARActivity;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/Abby_Alex/LoveBARActivity;->setText()V

    return-void
.end method

.method private setText()V
    .locals 15

    .prologue
    .line 114
    iget-object v10, p0, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    const-string v11, "content"

    const-string v12, "\u6211\u4eec\u5728\u4e00\u8d77"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "content":Ljava/lang/String;
    iget-object v10, p0, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    const-string v11, "time"

    const-string v12, "2011/07/16"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "days":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "data":[Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 118
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 117
    invoke-direct {v0, v10, v11, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 120
    .local v0, "c1":Ljava/util/Calendar;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 121
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 122
    iget v9, v7, Landroid/text/format/Time;->year:I

    .line 123
    .local v9, "year":I
    iget v10, v7, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v10, 0x1

    .line 124
    .local v6, "month":I
    iget v4, v7, Landroid/text/format/Time;->monthDay:I

    .line 126
    .local v4, "day":I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, v9, v6, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 127
    .local v1, "c2":Ljava/util/Calendar;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 128
    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "t1":Ljava/lang/String;
    iget-object v10, p0, Lcom/Abby_Alex/LoveBARActivity;->time:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5929\u4e86"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getCurrentTime()V
    .locals 4

    .prologue
    .line 281
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 282
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss "

    .line 281
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 284
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->current_time:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 434
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 365
    :pswitch_0
    const-string v0, "LoveBARActivity"

    const-string v2, "\u672a\u83b7\u53d6\u5230\u54cd\u5e94\u7684\u53cd\u9988"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 308
    :pswitch_1
    const-string v0, "love_db"

    .line 309
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 308
    invoke-virtual {p0, v0, v2, v4}, Lcom/Abby_Alex/LoveBARActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 310
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/Abby_Alex_MediaFactory/MediaFactory;->mMediaFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    .line 311
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->getCurrentTime()V

    .line 312
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    .line 313
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "type"

    const-string v4, "photo"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7167 \u7247"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "time"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "path"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "content"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "love_table"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 319
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    const-string v0, "\u7167\u7247\u4fdd\u5b58\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 323
    :pswitch_2
    const-string v0, "love_db"

    .line 324
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 323
    invoke-virtual {p0, v0, v2, v4}, Lcom/Abby_Alex/LoveBARActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 325
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, "uriRecorder":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 328
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mediaFilePath:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->mediaFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    .line 331
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->getCurrentTime()V

    .line 332
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    .line 333
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "type"

    const-string v4, "audio"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f55 \u97f3"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "time"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "path"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "content"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "love_table"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 341
    const-string v0, "\u5f55\u97f3\u4fdd\u5b58\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 344
    .end local v1    # "uriRecorder":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_3
    const-string v0, "love_db"

    .line 345
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0, v0, v2, v4}, Lcom/Abby_Alex/LoveBARActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 346
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 347
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 348
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 347
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 349
    .local v9, "cursor1":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mediaFilePath:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->mediaFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    .line 352
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->getCurrentTime()V

    .line 353
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    .line 354
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "type"

    const-string v4, "audio"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u89c6 \u9891"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "time"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->current_time:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "path"

    iget-object v4, p0, Lcom/Abby_Alex/LoveBARActivity;->mMediaFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    const-string v2, "content"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "love_table"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/Abby_Alex/LoveBARActivity;->cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 361
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 362
    const-string v0, "\u89c6\u9891\u4fdd\u5b58\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->setContentView(I)V

    .line 80
    const-string v1, "b5013b3cbdaff9ab1e55fda2681a0772"

    const-string v2, "WAPS"

    invoke-static {v1, v2, p0}, Lcom/waps/AppConnect;->getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/waps/AppConnect;

    .line 81
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Lcom/waps/AppConnect;->setPushIcon(I)V

    .line 82
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/waps/AppConnect;->setAdForeColor(I)V

    .line 84
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    .local v0, "miniLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/waps/MiniAdView;

    invoke-direct {v1, p0, v0}, Lcom/waps/MiniAdView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/waps/MiniAdView;->DisplayAd(I)V

    .line 87
    const-string v1, "Config"

    .line 88
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0, v1, v2}, Lcom/Abby_Alex/LoveBARActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->sp:Landroid/content/SharedPreferences;

    .line 90
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->vibrator:Landroid/os/Vibrator;

    .line 93
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_edit:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_edit:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_camera:Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_camera:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_audio:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_audio:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_vedio:Landroid/widget/ImageView;

    .line 100
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_vedio:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_recode:Landroid/widget/ImageView;

    .line 102
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_recode:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_set:Landroid/widget/ImageView;

    .line 104
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->img_set:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->time:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/Abby_Alex/LoveBARActivity;->setText()V

    .line 108
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->check_file:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 109
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->check_dataBase:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    const-string v0, "\u8bbe\u7f6e"

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 404
    const-string v0, "\u9000\u51fa"

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 299
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waps/AppConnect;->finalize()V

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 301
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 413
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 415
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    const-class v2, Lcom/Abby_Alex/set_Activity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/Abby_Alex/LoveBARActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    const v1, 0x7f040004

    const v2, 0x7f040005

    invoke-virtual {p0, v1, v2}, Lcom/Abby_Alex/LoveBARActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-virtual {p0}, Lcom/Abby_Alex/LoveBARActivity;->finish()V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 291
    const-string v0, "love_db"

    .line 292
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0, v0, v1, v2}, Lcom/Abby_Alex/LoveBARActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 293
    invoke-direct {p0}, Lcom/Abby_Alex/LoveBARActivity;->setText()V

    .line 294
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 377
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 378
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 379
    const/4 v2, 0x3

    .line 377
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 380
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    .line 440
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 442
    .local v0, "sensorType":I
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 443
    .local v1, "values":[F
    if-ne v0, v4, :cond_1

    .line 445
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 446
    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 454
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 395
    iget-object v0, p0, Lcom/Abby_Alex/LoveBARActivity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 397
    return-void
.end method
