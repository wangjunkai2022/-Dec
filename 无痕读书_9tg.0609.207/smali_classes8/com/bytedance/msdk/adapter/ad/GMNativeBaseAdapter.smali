.class public abstract Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;
.super Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
.source "GMNativeBaseAdapter.java"


# instance fields
.field public mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;


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

    instance-of p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMNativeBaseAdapter;->mGMAdSlotNative:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "ClassCastException\uff1aload ad fail mGMAdSlotNative is not GMAdSlotNative"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public notifyLoadFailBecauseGMAdSlotIsNull()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "load ad fail mGMAdSlotNative is null"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
