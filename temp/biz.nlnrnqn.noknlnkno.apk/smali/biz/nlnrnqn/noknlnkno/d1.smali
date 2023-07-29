.class public Lbiz/nlnrnqn/noknlnkno/d1;
.super Lbiz/nlnrnqn/noknlnkno/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bt;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbiz/nlnrnqn/noknlnkno/d1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
