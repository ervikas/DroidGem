.class public Lcom/Abby_Alex/record_Activity;
.super Landroid/app/Activity;
.source "record_Activity.java"

# interfaces
.implements Lcom/Abby_Alex/Constant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Abby_Alex/record_Activity$Adapter;,
        Lcom/Abby_Alex/record_Activity$MyAsync;
    }
.end annotation


# instance fields
.field choice:[Ljava/lang/String;

.field file:Lcom/Abby_Alex_MediaFactory/FileClass;

.field file_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Abby_Alex_MediaFactory/FileClass;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/os/Handler;

.field intent:Landroid/content/Intent;

.field list:Landroid/widget/ListView;

.field mAdapter:Lcom/Abby_Alex/record_Activity$Adapter;

.field private mSQlite:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u67e5\u770b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/Abby_Alex/record_Activity;->choice:[Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/Abby_Alex/record_Activity$1;

    invoke-direct {v0, p0}, Lcom/Abby_Alex/record_Activity$1;-><init>(Lcom/Abby_Alex/record_Activity;)V

    iput-object v0, p0, Lcom/Abby_Alex/record_Activity;->h:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/Abby_Alex/record_Activity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/Abby_Alex/record_Activity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/record_Activity;->setContentView(I)V

    .line 57
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/record_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/Abby_Alex/record_Activity;->list:Landroid/widget/ListView;

    .line 58
    const-string v0, "love_db"

    invoke-virtual {p0, v0, v1, v2}, Lcom/Abby_Alex/record_Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    new-instance v0, Lcom/Abby_Alex/record_Activity$MyAsync;

    invoke-direct {v0, p0, v2}, Lcom/Abby_Alex/record_Activity$MyAsync;-><init>(Lcom/Abby_Alex/record_Activity;Lcom/Abby_Alex/record_Activity$MyAsync;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/Abby_Alex/record_Activity$MyAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/Abby_Alex/record_Activity;->mSQlite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method
