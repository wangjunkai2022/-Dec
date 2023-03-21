.class public Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GDTSplashAd"
.end annotation


# instance fields
.field public do:Lcom/qq/e/ads/splash/SplashAD;

.field public for:Landroid/widget/FrameLayout;

.field public if:Landroid/widget/RelativeLayout;

.field public new:Lcom/qq/e/ads/splash/SplashADZoomOutListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->new:Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    new-instance v0, Landroid/widget/RelativeLayout;

    .line 1
    iget-object v1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    .line 3
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    .line 4
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->for:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->if:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(IILjava/lang/String;)V
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
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getSplashBitMap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->getZoomOutBitmap()Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadyStatus()Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->hasNotifyFail()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/msdk/api/v2/GMAdConstant$AdIsReadyStatus;

    return-object v0
.end method

.method public loadAd()V
    .locals 5
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    .line 2
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 3
    iget v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    if-gez v1, :cond_0

    const/16 v1, 0xbb8

    .line 4
    iput v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    iput v2, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 6
    iget-object v2, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->new:Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 8
    iget v4, v4, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    .line 9
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    iget-boolean v1, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->private:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->preLoad()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchAdOnly()V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->new:Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    iput-object v0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 1
    iput-object v0, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    .line 2
    iput-object v0, v1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->if:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->for:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->if:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->if:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->for:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->showAd(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public splashMinWindowAnimationFinish()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->do:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->zoomOutAnimationFinish()V

    :cond_0
    return-void
.end method
