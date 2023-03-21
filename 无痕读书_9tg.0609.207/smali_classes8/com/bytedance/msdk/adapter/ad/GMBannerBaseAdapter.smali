.class public abstract Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;
.super Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.source "GMBannerBaseAdapter.java"


# instance fields
.field public mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBannerSize(ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;)[I
    .locals 2

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getHeight()I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p1

    :pswitch_1
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    return-object p1

    :pswitch_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_1

    return-object p1

    :pswitch_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_2

    return-object p1

    :pswitch_4
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_3

    return-object p1

    :pswitch_5
    new-array p1, v0, [I

    .line 7
    fill-array-data p1, :array_4

    return-object p1

    :cond_0
    :goto_0
    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_5

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x2d8
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1d4
        0x3c
    .end array-data

    :array_2
    .array-data 4
        0x12c
        0xfa
    .end array-data

    :array_3
    .array-data 4
        0x140
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x140
        0x32
    .end array-data

    :array_5
    .array-data 4
        0x140
        0x32
    .end array-data
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mGMAdSlotBase:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    instance-of p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMBannerBaseAdapter;->mGMAdSlotBanner:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "ClassCastException\uff1aload ad fail mGMAdSlotBanner is not GMAdSlotBanner"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public notifyLoadFailBecauseGMAdSlotIsNull()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "load ad fail GMAdSlotBanner is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
