.class public Lcom/waps/ah;
.super Ljava/lang/Object;


# instance fields
.field protected a:[Ljava/lang/String;

.field protected b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u65e0\u6cd5\u66f4\u65b0\u79ef\u5206\u3002"

    aput-object v1, v0, v3

    const-string v1, "\u6d88\u8d39\u79ef\u5206\u5931\u8d25\u3002"

    aput-object v1, v0, v4

    const-string v1, "\u5956\u52b1\u79ef\u5206\u5931\u8d25\u3002"

    aput-object v1, v0, v5

    const-string v1, "\u65b0\u7248\u672c\u63d0\u793a"

    aput-object v1, v0, v6

    const-string v1, "\u6709\u65b0\u7248\u672c\uff08"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\uff09\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u6587\u4ef6\u540d..."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u53d1\u73b0\u65b0\u5e94\u7528"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u60a8\u6709\u65b0\u5e94\u7528\u5b89\u88c5\uff0c\u70b9\u51fb\u67e5\u770b\uff01"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u5df2\u5b8c\u6210"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38\uff1a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u8be5\u5b89\u88c5\u6587\u4ef6\u5df2\u5b58\u5728\u4e8e/sdcard/download/\u76ee\u5f55\u4e0b\uff0c\u60a8\u53ef\u4ee5\u76f4\u63a5\u5b89\u88c5\u6216\u91cd\u65b0\u4e0b\u8f7d\uff01"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5b89\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u91cd\u65b0\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u786e\u5b9a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5173\u95ed"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528\u5217\u8868"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u63d0\u793a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/waps/ah;->a:[Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Failed to update points."

    aput-object v1, v0, v3

    const-string v1, "Failed to spend points."

    aput-object v1, v0, v4

    const-string v1, "Failed to award points."

    aput-object v1, v0, v5

    const-string v1, "Update For Version"

    aput-object v1, v0, v6

    const-string v1, "New version("

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ")is found. Download now?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Download"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Next time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "File name is getting..."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Failed to download!Please try again!"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "The download is complete.Click to install!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "The download is complete."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "New Application is found!"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "New Application is installed.Click to check."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "New Application"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Downloading"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "The download is finish."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Exception:"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Reminder"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "The application is already exists in \"/sdcard/download/\",you can install or download again."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Install"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Download"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Prepare to download,please wait..."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Cancel"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Downloading,please wait..."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "The network links failure,please check."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Close"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "New Application List"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Message"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/waps/ah;->b:[Ljava/lang/String;

    return-void
.end method

.method protected static a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "failed_to_update_points"

    const-string v2, "\u65e0\u6cd5\u66f4\u65b0\u79ef\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_spend_points"

    const-string v2, "\u6d88\u8d39\u79ef\u5206\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_award_points"

    const-string v2, "\u5956\u52b1\u79ef\u5206\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update_version"

    const-string v2, "\u65b0\u7248\u672c\u63d0\u793a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_newest_version"

    const-string v2, "\u60a8\u4f7f\u7528\u7684\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_version"

    const-string v2, "\u6709\u65b0\u7248\u672c\uff08"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_is_found"

    const-string v2, "\uff09\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download"

    const-string v2, "\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "next_time"

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getting_filename"

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u6587\u4ef6\u540d..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_download"

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click_to_install"

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_complete"

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_is_found"

    const-string v2, "\u53d1\u73b0\u65b0\u5e94\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_install"

    const-string v2, "\u60a8\u6709\u65b0\u5e94\u7528\u5b89\u88c5\uff0c\u70b9\u51fb\u67e5\u770b\uff01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app"

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "downloading"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "finish_download"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u5df2\u5b8c\u6210"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exception"

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38\uff1a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reminder"

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_already_exists"

    const-string v2, "\u8be5\u5b89\u88c5\u6587\u4ef6\u5df2\u5b58\u5728\u4e8e/sdcard/download/\u76ee\u5f55\u4e0b\uff0c\u60a8\u53ef\u4ee5\u76f4\u63a5\u5b89\u88c5\u6216\u91cd\u65b0\u4e0b\u8f7d\uff01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install"

    const-string v2, "\u5b89\u88c5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_again"

    const-string v2, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepare_to_download"

    const-string v2, "\u6b63\u5728\u51c6\u5907\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancel"

    const-string v2, "\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitting_for_download"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_links_failure"

    const-string v2, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ok"

    const-string v2, "\u786e\u5b9a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close"

    const-string v2, "\u5173\u95ed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_list"

    const-string v2, "\u65b0\u5b89\u88c5\u5e94\u7528\u5217\u8868"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message_title"

    const-string v2, "\u63d0\u793a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wrong_url"

    const-string v2, "\u672a\u83b7\u53d6\u5230\u6b63\u786e\u7684\u4e0b\u8f7d\u5730\u5740\uff01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "points"

    const-string v2, "\u79ef\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected static b()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "failed_to_update_points"

    const-string v2, "Failed to update points."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_spend_points"

    const-string v2, "Failed to spend points."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_award_points"

    const-string v2, "Failed to award points."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update_version"

    const-string v2, "Update For Version"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_newest_version"

    const-string v2, "The version is newest."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_version"

    const-string v2, "New version("

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_is_found"

    const-string v2, ")is found. Download now?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download"

    const-string v2, "Download"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "next_time"

    const-string v2, "Next time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getting_filename"

    const-string v2, "File name is getting..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed_to_download"

    const-string v2, "Failed to download!Please try again!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click_to_install"

    const-string v2, "The download is complete.Click to install!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_complete"

    const-string v2, "The download is complete."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_is_found"

    const-string v2, "New Application is found!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_install"

    const-string v2, "New Application is installed.Click to check."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app"

    const-string v2, "New Application"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "downloading"

    const-string v2, "Downloading"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "finish_download"

    const-string v2, "The download is finish."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exception"

    const-string v2, "Exception"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reminder"

    const-string v2, "Reminder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_already_exists"

    const-string v2, "The application is already exists in \"/sdcard/download/\",you can install or download again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install"

    const-string v2, "Install"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "download_again"

    const-string v2, "Download"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepare_to_download"

    const-string v2, "Prepare to download,please wait..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancel"

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "waitting_for_download"

    const-string v2, "Downloading,please wait..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_links_failure"

    const-string v2, "The network links failure,please check."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ok"

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close"

    const-string v2, "Close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "new_app_list"

    const-string v2, "New Application List"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message_title"

    const-string v2, "Message"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wrong_url"

    const-string v2, "The url of download is wrong!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "points"

    const-string v2, "Points"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
