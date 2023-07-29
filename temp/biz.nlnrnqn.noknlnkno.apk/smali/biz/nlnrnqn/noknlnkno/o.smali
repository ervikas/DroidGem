.class public final enum Lbiz/nlnrnqn/noknlnkno/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbiz/nlnrnqn/noknlnkno/o;

.field public static final enum b:Lbiz/nlnrnqn/noknlnkno/o;

.field public static final enum c:Lbiz/nlnrnqn/noknlnkno/o;

.field private static final synthetic d:[Lbiz/nlnrnqn/noknlnkno/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/o;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lbiz/nlnrnqn/noknlnkno/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/o;->a:Lbiz/nlnrnqn/noknlnkno/o;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/o;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lbiz/nlnrnqn/noknlnkno/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/o;->b:Lbiz/nlnrnqn/noknlnkno/o;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/o;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lbiz/nlnrnqn/noknlnkno/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/o;->c:Lbiz/nlnrnqn/noknlnkno/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lbiz/nlnrnqn/noknlnkno/o;

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/o;->a:Lbiz/nlnrnqn/noknlnkno/o;

    aput-object v1, v0, v2

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/o;->b:Lbiz/nlnrnqn/noknlnkno/o;

    aput-object v1, v0, v3

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/o;->c:Lbiz/nlnrnqn/noknlnkno/o;

    aput-object v1, v0, v4

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/o;->d:[Lbiz/nlnrnqn/noknlnkno/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lbiz/nlnrnqn/noknlnkno/o;
    .locals 1

    sget-object v0, Lbiz/nlnrnqn/noknlnkno/o;->d:[Lbiz/nlnrnqn/noknlnkno/o;

    invoke-virtual {v0}, [Lbiz/nlnrnqn/noknlnkno/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbiz/nlnrnqn/noknlnkno/o;

    return-object v0
.end method
