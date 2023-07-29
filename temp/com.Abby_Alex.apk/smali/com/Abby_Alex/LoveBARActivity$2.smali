.class Lcom/Abby_Alex/LoveBARActivity$2;
.super Ljava/lang/Thread;
.source "LoveBARActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Abby_Alex/LoveBARActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Abby_Alex/LoveBARActivity;


# direct methods
.method constructor <init>(Lcom/Abby_Alex/LoveBARActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Abby_Alex/LoveBARActivity$2;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity$2;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    iget-object v2, p0, Lcom/Abby_Alex/LoveBARActivity$2;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    const-string v3, "love_db"

    .line 171
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 170
    invoke-virtual {v2, v3, v4, v5}, Lcom/Abby_Alex/LoveBARActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/Abby_Alex/LoveBARActivity;->access$0(Lcom/Abby_Alex/LoveBARActivity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    const-string v0, "CREATE TABLE  IF NOT EXISTS love_table(id INTEGER PRIMARY KEY,type varchar(20),name varchar(20),time varchar(20),path varchar(20),content varchar(20))"

    .line 176
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/Abby_Alex/LoveBARActivity$2;->this$0:Lcom/Abby_Alex/LoveBARActivity;

    invoke-static {v1}, Lcom/Abby_Alex/LoveBARActivity;->access$1(Lcom/Abby_Alex/LoveBARActivity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    return-void
.end method
