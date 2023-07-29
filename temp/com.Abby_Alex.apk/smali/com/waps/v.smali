.class Lcom/waps/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/v;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/waps/v;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/AppConnect;

    iget-object v1, p0, Lcom/waps/v;->c:Ljava/lang/String;

    const-string v2, "push/ad?"

    iget-object v3, p0, Lcom/waps/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/waps/AppConnect;->a(Lcom/waps/AppConnect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
