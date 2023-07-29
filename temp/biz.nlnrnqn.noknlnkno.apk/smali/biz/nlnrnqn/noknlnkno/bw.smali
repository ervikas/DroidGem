.class final Lbiz/nlnrnqn/noknlnkno/bw;
.super Lbiz/nlnrnqn/noknlnkno/bx;


# instance fields
.field final synthetic a:Lbiz/nlnrnqn/noknlnkno/bt;


# direct methods
.method constructor <init>(Lbiz/nlnrnqn/noknlnkno/bt;)V
    .locals 0

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bw;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/bx;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bw;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/bs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bw;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lbiz/nlnrnqn/noknlnkno/bt;->b:J

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bw;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    invoke-static {v0}, Lbiz/nlnrnqn/noknlnkno/ae;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/bw;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bw;->a:Lbiz/nlnrnqn/noknlnkno/bt;

    new-instance v2, Lbiz/nlnrnqn/noknlnkno/bq;

    invoke-direct {v2, v0}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([B)V

    invoke-virtual {v1, v2}, Lbiz/nlnrnqn/noknlnkno/bt;->a(Lbiz/nlnrnqn/noknlnkno/bq;)Lbiz/nlnrnqn/noknlnkno/cd;

    goto :goto_0
.end method
