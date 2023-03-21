.class public abstract Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;
.super Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.source "GMInterstitialBaseAdapter.java"


# instance fields
.field public mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    instance-of p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getGMAdSlotInterstitial()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "ClassCastException\uff1aload ad fail mGMAdSlotFullVideo is not GMAdSlotInterstitialFull or GMAdSlotInterstitial"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public notifyLoadFailBecauseGMAdSlotIsNull()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "load ad fail mGMAdSlotInterstitial is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
