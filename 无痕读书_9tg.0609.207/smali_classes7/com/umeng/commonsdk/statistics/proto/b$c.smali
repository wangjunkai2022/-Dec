.class public Lcom/umeng/commonsdk/statistics/proto/b$c;
.super Lcom/umeng/analytics/pro/cd;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cd<",
        "Lcom/umeng/commonsdk/statistics/proto/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$c;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/analytics/pro/by;

    .line 3
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bm;->a(J)V

    .line 5
    iget p2, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bm;->a(I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$c;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/analytics/pro/by;

    .line 3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->a(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 6
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bm;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 8
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    return-void
.end method
