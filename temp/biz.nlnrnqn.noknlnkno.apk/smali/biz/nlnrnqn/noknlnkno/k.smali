.class final Lbiz/nlnrnqn/noknlnkno/k;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/g;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/g;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/k;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/g;)V

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/g;->f()Lbiz/nlnrnqn/noknlnkno/n;

    move-result-object v1

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/m;

    iget-object v3, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lbiz/nlnrnqn/noknlnkno/m;-><init>(Lbiz/nlnrnqn/noknlnkno/g;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Lbiz/nlnrnqn/noknlnkno/n;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-static {v2}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/g;)V

    const-string v2, "Ajax"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/g;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/g;)V

    invoke-static {}, Lbiz/nlnrnqn/noknlnkno/g;->f()Lbiz/nlnrnqn/noknlnkno/n;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Lbiz/nlnrnqn/noknlnkno/m;

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-direct {v3, v4, v0}, Lbiz/nlnrnqn/noknlnkno/m;-><init>(Lbiz/nlnrnqn/noknlnkno/g;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lbiz/nlnrnqn/noknlnkno/n;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/k;->a:Lbiz/nlnrnqn/noknlnkno/g;

    invoke-static {v1}, Lbiz/nlnrnqn/noknlnkno/g;->a(Lbiz/nlnrnqn/noknlnkno/g;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
