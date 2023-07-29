.class Lcom/waps/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/SDKUtils;


# direct methods
.method constructor <init>(Lcom/waps/SDKUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/at;->a:Lcom/waps/SDKUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/waps/at;->a:Lcom/waps/SDKUtils;

    invoke-static {v0}, Lcom/waps/SDKUtils;->access$000(Lcom/waps/SDKUtils;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
