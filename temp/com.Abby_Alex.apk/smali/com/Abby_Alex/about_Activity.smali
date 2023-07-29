.class public Lcom/Abby_Alex/about_Activity;
.super Landroid/app/Activity;
.source "about_Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/Abby_Alex/about_Activity;->setContentView(I)V

    .line 13
    return-void
.end method
