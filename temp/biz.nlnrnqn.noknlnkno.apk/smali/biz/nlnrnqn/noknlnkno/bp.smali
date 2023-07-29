.class public final Lbiz/nlnrnqn/noknlnkno/bp;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>([B)V
    .locals 8

    const/16 v7, 0x100

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v7, [I

    iput-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    array-length v3, p1

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid user key length"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    iput v0, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    :goto_1
    if-ge v0, v7, :cond_2

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aget v4, v4, v0

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget-object v6, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aget v6, v6, v1

    aput v6, v5, v0

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aput v4, v5, v1

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a([BII[BI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    aget v1, v1, v2

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    aget v1, v1, v2

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    iget-object v4, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v5, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    aput v1, v2, v3

    iget-object v1, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->b:I

    aget v1, v1, v2

    iget-object v2, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    iget v3, p0, Lbiz/nlnrnqn/noknlnkno/bp;->c:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v3, v1, 0xff

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v4, p1, p2

    iget-object v5, p0, Lbiz/nlnrnqn/noknlnkno/bp;->a:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, v1

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([BLbiz/nlnrnqn/noknlnkno/bq;)[B
    .locals 6

    iget v3, p1, Lbiz/nlnrnqn/noknlnkno/bq;->c:I

    new-array v4, v3, [B

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bp;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bp;-><init>([B)V

    iget-object v1, p1, Lbiz/nlnrnqn/noknlnkno/bq;->a:[B

    iget v2, p1, Lbiz/nlnrnqn/noknlnkno/bq;->b:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lbiz/nlnrnqn/noknlnkno/bp;->a([BII[BI)V

    return-object v4
.end method

.method public static a([B[B)[B
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    new-array v4, v3, [B

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/bp;

    invoke-direct {v0, p0}, Lbiz/nlnrnqn/noknlnkno/bp;-><init>([B)V

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lbiz/nlnrnqn/noknlnkno/bp;->a([BII[BI)V

    return-object v4
.end method
