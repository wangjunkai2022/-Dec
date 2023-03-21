.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTExpressAd"
.end annotation


# instance fields
.field public do:Lcom/qq/e/ads/nativ/NativeExpressADView;

.field public volatile for:Z

.field public if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

.field public final new:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 5

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->for:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$2;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->new:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p2}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getBoundData()Lcom/qq/e/comm/pi/AdData;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getAdPatternType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-virtual {p2}, Lcom/qq/e/ads/nativ/NativeExpressADView;->preloadVideo()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->new:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    invoke-virtual {p2, v1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->setMediaListener(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getAdPatternType()I

    move-result p2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getAdPatternType()I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getAdPatternType()I

    move-result p2

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setTitle(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdDescription(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    .line 1
    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getECPM()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getECPM()I

    move-result p1

    int-to-double p1, p1

    goto :goto_2

    :cond_3
    const-wide/16 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GDT_clientBidding \u6a21\u677fNative \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getECPM()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3
    :cond_4
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getECPMLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GDT_\u591a\u9636\u5e95\u4ef7 \u6a21\u677fNative \u8fd4\u56de\u7684 \u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AdData;->getECPMLevel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_ECMP"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v0, "bidding_lose_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getBiddingLossReason(Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/qq/e/comm/pi/IBidding;->sendLossNotification(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public closeAd()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    const-string v1, "gdt\u4fe1\u606f\u6d41\u6a21\u677fdislike\u63a5\u53e3\u65e0\u5173\u95ed\u539f\u56e0"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onSelected(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/IBidding;->setBidECPM(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->for:Z

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public onAdClick()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->for:Z

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(FF)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderSuccess(FF)V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->do:Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->if:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    return-void
.end method
