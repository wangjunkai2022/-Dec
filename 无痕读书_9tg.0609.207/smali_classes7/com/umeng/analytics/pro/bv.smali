.class public Lcom/umeng/analytics/pro/bv;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field public static a:I = 0x7fffffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/analytics/pro/bu;)Lcom/umeng/analytics/pro/bu;
    .locals 2

    const/4 v0, 0x0

    .line 31
    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 32
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    .line 33
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    .line 34
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/umeng/analytics/pro/bv;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 2
    sget v0, Lcom/umeng/analytics/pro/bv;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    if-lez p2, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->p()Lcom/umeng/analytics/pro/bo;

    move-result-object p1

    .line 4
    :goto_0
    iget v1, p1, Lcom/umeng/analytics/pro/bo;->b:I

    if-ge v0, v1, :cond_0

    .line 5
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bo;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->q()V

    goto/16 :goto_4

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->r()Lcom/umeng/analytics/pro/bw;

    move-result-object p1

    .line 8
    :goto_1
    iget v1, p1, Lcom/umeng/analytics/pro/bw;->b:I

    if-ge v0, v1, :cond_1

    .line 9
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bw;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->s()V

    goto :goto_4

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->n()Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    .line 12
    :goto_2
    iget v1, p1, Lcom/umeng/analytics/pro/bp;->c:I

    if-ge v0, v1, :cond_2

    .line 13
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    .line 14
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->o()V

    goto :goto_4

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 17
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object p1

    .line 18
    iget-byte p1, p1, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->k()V

    goto :goto_4

    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 20
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_3

    .line 22
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->A()Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 23
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->x()J

    goto :goto_4

    .line 24
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->w()I

    goto :goto_4

    .line 25
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->v()S

    goto :goto_4

    .line 26
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->y()D

    goto :goto_4

    .line 27
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->u()B

    goto :goto_4

    .line 28
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->t()Z

    :goto_4
    return-void

    .line 29
    :cond_4
    new-instance p0, Lcom/umeng/analytics/pro/az;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 30
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
