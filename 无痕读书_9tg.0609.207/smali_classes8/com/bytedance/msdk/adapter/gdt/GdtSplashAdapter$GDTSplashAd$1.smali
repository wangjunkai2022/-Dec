.class public Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/splash/SplashADZoomOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

.field public millisUntilFinished:J


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportZoomOut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onADClicked()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/SplashDismissController;->setClick(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    .line 6
    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/SplashDismissController;->setCallBack(Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 7
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 8
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public onADDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/SplashDismissController;->jumpToAdPage()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/SplashDismissController;->setCallDismiss(Z)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 7
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 8
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdDismiss()V

    :cond_2
    return-void
.end method

.method public onADExposure()V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdShow()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GDT-\u5f00\u5c4f\u5e7f\u544a_onADExposure......onADExposure....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADLoaded(J)V
    .locals 4
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    .line 2
    iget-object p1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result p1

    const-string p2, "TTMediationSDK_ECMP"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 3
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    .line 4
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    .line 6
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GDT_clientBidding splash \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 7
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    .line 8
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isMultiBidding()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 9
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    .line 10
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setLevelTag(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GDT_\u591a\u9636\u5e95\u4ef7 splash \u8fd4\u56de\u7684 \u4ef7\u683c\u6807\u7b7e\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 11
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    .line 12
    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    new-instance p2, Lcom/bytedance/msdk/api/AdError;

    const-string v0, "no error message"

    invoke-direct {p2, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_2
    return-void
.end method

.method public onADPresent()V
    .locals 0

    return-void
.end method

.method public onADTick(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->millisUntilFinished:J

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public onZoomOut()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;->onMinWindowStart()V

    :cond_0
    return-void
.end method

.method public onZoomOutPlayFinish()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;->onMinWindowPlayFinish()V

    :cond_0
    return-void
.end method
