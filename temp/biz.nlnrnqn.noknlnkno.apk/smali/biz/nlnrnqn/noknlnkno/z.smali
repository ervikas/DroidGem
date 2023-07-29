.class final Lbiz/nlnrnqn/noknlnkno/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:Ljava/io/File;

.field b:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbiz/nlnrnqn/noknlnkno/z;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/z;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lbiz/nlnrnqn/noknlnkno/z;

    iget-wide v0, p0, Lbiz/nlnrnqn/noknlnkno/z;->b:J

    iget-wide v2, p1, Lbiz/nlnrnqn/noknlnkno/z;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method
