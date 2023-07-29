.class final Lbiz/nlnrnqn/noknlnkno/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/g;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/g;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/j;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/j;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-virtual {v0}, Lbiz/nlnrnqn/noknlnkno/g;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
