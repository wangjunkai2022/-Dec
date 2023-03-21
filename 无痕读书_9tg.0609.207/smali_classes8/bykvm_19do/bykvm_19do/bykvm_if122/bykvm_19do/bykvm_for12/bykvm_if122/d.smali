.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;
.source "PreLoadRequestCoreV2.java"


# instance fields
.field public g0:I

.field public h0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->g0:I

    const/4 p1, -0x1

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->h0:I

    return-void
.end method

.method private k(I)V
    .locals 1

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->h0:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->h0:I

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->g0:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->g0:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->k(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/f;->a(IZ)V

    return-void
.end method

.method public d0()I
    .locals 5

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->g0:I

    :pswitch_0
    const/16 v1, 0x5e

    const/16 v2, 0x4b

    const/16 v3, 0x5d

    :goto_0
    const/16 v4, 0x5c

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_1
    const/16 v1, 0x5d

    const/16 v2, 0x5d

    goto :goto_0

    :cond_1
    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    return v0

    :goto_3
    const/16 v2, 0x5b

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public h()I
    .locals 4

    :pswitch_0
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    const/16 v2, 0x5d

    :goto_0
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_1
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :cond_1
    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :goto_3
    const/16 v1, 0x5b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
