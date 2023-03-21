.class public Lcom/umeng/analytics/pro/bd$a;
.super Lcom/umeng/analytics/pro/cc;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/analytics/pro/bd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/bd$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 3
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bn;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 7
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    .line 10
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->a()Lcom/umeng/analytics/pro/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->d()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bd;->c(Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/bs;)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1
.end method
