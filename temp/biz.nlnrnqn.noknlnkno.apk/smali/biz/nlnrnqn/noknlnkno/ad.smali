.class final enum Lbiz/nlnrnqn/noknlnkno/ad;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbiz/nlnrnqn/noknlnkno/ad;

.field public static final enum b:Lbiz/nlnrnqn/noknlnkno/ad;

.field public static final enum c:Lbiz/nlnrnqn/noknlnkno/ad;

.field public static final enum d:Lbiz/nlnrnqn/noknlnkno/ad;

.field private static final synthetic f:[Lbiz/nlnrnqn/noknlnkno/ad;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ad;

    const-string v1, "AWARD"

    const-string v2, "award"

    invoke-direct {v0, v1, v3, v2}, Lbiz/nlnrnqn/noknlnkno/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->a:Lbiz/nlnrnqn/noknlnkno/ad;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ad;

    const-string v1, "SPEND"

    const-string v2, "spend"

    invoke-direct {v0, v1, v4, v2}, Lbiz/nlnrnqn/noknlnkno/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->b:Lbiz/nlnrnqn/noknlnkno/ad;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ad;

    const-string v1, "GET_POINTS"

    const-string v2, "getPoints"

    invoke-direct {v0, v1, v5, v2}, Lbiz/nlnrnqn/noknlnkno/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->c:Lbiz/nlnrnqn/noknlnkno/ad;

    new-instance v0, Lbiz/nlnrnqn/noknlnkno/ad;

    const-string v1, "GET_OFFERS"

    const-string v2, "getOffers"

    invoke-direct {v0, v1, v6, v2}, Lbiz/nlnrnqn/noknlnkno/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->d:Lbiz/nlnrnqn/noknlnkno/ad;

    const/4 v0, 0x4

    new-array v0, v0, [Lbiz/nlnrnqn/noknlnkno/ad;

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/ad;->a:Lbiz/nlnrnqn/noknlnkno/ad;

    aput-object v1, v0, v3

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/ad;->b:Lbiz/nlnrnqn/noknlnkno/ad;

    aput-object v1, v0, v4

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/ad;->c:Lbiz/nlnrnqn/noknlnkno/ad;

    aput-object v1, v0, v5

    sget-object v1, Lbiz/nlnrnqn/noknlnkno/ad;->d:Lbiz/nlnrnqn/noknlnkno/ad;

    aput-object v1, v0, v6

    sput-object v0, Lbiz/nlnrnqn/noknlnkno/ad;->f:[Lbiz/nlnrnqn/noknlnkno/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbiz/nlnrnqn/noknlnkno/ad;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lbiz/nlnrnqn/noknlnkno/ad;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbiz/nlnrnqn/noknlnkno/ad;->e:Ljava/lang/String;

    return-object v0
.end method
