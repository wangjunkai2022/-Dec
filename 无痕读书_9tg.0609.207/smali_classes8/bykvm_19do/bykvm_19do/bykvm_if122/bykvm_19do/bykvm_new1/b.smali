.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/b;
.super Ljava/lang/Object;
.source "SortAlgorithm.java"


# direct methods
.method public static a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x27

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_3

    aget v5, v3, v2

    move v6, v2

    :goto_2
    if-lez v6, :cond_2

    add-int/lit8 v7, v6, -0x1

    aget v8, v3, v7

    if-le v8, v5, :cond_2

    aget v7, v3, v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    aput v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_3
    if-ge v4, v1, :cond_4

    aget v2, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/16 p0, 0x44

    const/16 v1, 0x42

    const/16 v2, 0x27

    goto :goto_6

    :cond_5
    :goto_4
    const/16 p0, 0x50

    const/16 v1, 0x50

    :goto_5
    :pswitch_0
    const/16 p0, 0x46

    const/16 v2, 0x1e

    :goto_6
    packed-switch p0, :pswitch_data_0

    goto :goto_5

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_7

    :pswitch_2
    if-eq v2, v0, :cond_6

    goto :goto_8

    :cond_6
    :goto_7
    packed-switch v1, :pswitch_data_2

    goto :goto_8

    :pswitch_3
    return-void

    :goto_8
    const/16 p0, 0x54

    if-ge v1, p0, :cond_6

    :cond_7
    const/16 v2, 0x4c

    :pswitch_4
    const/16 p0, 0x16

    if-le v2, p0, :cond_7

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
