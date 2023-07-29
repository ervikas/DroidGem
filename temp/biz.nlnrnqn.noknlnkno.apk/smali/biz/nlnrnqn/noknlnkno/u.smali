.class abstract Lbiz/nlnrnqn/noknlnkno/u;
.super Lbiz/nlnrnqn/noknlnkno/p;


# instance fields
.field public f:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbiz/nlnrnqn/noknlnkno/p;-><init>()V

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/by;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/u;->f:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lbiz/nlnrnqn/noknlnkno/bq;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v2, p1, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iget v3, p1, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/u;->f:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lbiz/nlnrnqn/noknlnkno/u;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbiz/nlnrnqn/noknlnkno/u;->c()V

    goto :goto_0
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method
