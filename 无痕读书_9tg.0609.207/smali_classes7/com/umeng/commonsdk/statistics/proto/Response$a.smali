.class public Lcom/umeng/commonsdk/statistics/proto/Response$a;
.super Lcom/umeng/analytics/pro/cc;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
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

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$a;-><init>()V

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
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 6
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetResp_code()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    const-string p2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 11
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    if-ne v1, v0, :cond_3

    .line 12
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 13
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/analytics/pro/bs;)V

    .line 14
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setImprintIsSet(Z)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xb

    if-ne v1, v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setMsgIsSet(Z)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    if-ne v1, v0, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 20
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 22
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_0
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    .line 3
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$300()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 4
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$400()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 5
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 7
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$500()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 10
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 12
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$600()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 15
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/analytics/pro/bs;)V

    .line 16
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 18
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method
