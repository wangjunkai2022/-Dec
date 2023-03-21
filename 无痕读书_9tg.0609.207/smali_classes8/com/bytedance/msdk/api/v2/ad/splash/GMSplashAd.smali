.class public Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;
.super Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;
.source "GMSplashAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/base/TTLoadBase;


# instance fields
.field public if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->B()V

    :cond_0
    return-void
.end method

.method public getAdLoadInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAdNetworkPlatformId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->E()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public getAdNetworkRitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBestEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->G()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getMinWindowSize()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->f0()[I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreEcpm()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->J()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplashBitMap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->g0()Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->h0()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->i0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 5
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getSplashButtonType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSplashButtonType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 6
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->isForceLoadBottom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setForceLoadBottom(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 7
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getSplashShakeButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSplashShakeButton(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    :cond_0
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkFlatFromId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 10
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const p2, 0x9c5c

    invoke-static {p2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;->onSplashAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_7

    .line 12
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 13
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const p2, 0x9c5f

    invoke-static {p2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;->onSplashAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 14
    :cond_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->E()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    .line 15
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const p2, 0x9c62

    invoke-static {p2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;->onSplashAdLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_4
    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getTimeOut()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->k(I)V

    .line 17
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V

    invoke-static {v0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V

    return-void
.end method

.method public setAdSplashListener(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;)V

    :cond_0
    return-void
.end method

.method public setMinWindowListener(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashMinWindowListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashMinWindowListener;)V

    :cond_0
    return-void
.end method

.method public setSplashCardListener(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashCardListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashCardListener;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b(Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$2;-><init>(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showWindowDirect(Landroid/graphics/Rect;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Landroid/graphics/Rect;Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public splashMinWindowAnimationFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->j0()V

    :cond_0
    return-void
.end method
