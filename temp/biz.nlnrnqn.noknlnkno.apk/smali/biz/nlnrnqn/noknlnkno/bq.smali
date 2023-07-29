.class public final Lbiz/nlnrnqn/noknlnkno/bq;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    iput-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    array-length v0, p1

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    :goto_0
    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iput p2, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iput p3, p0, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    return-void

    :cond_0
    sget-object p1, Lbiz/nlnrnqn/noknlnkno/aa;->a:[B

    goto :goto_0
.end method


# virtual methods
.method public final a(I)B
    .locals 2

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final a(II)Lbiz/nlnrnqn/noknlnkno/bq;
    .locals 3

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bq;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lbiz/nlnrnqn/noknlnkno/bq;-><init>([BII)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0
.end method
