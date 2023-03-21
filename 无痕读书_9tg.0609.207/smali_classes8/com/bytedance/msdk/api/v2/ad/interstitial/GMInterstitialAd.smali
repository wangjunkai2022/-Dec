.class public Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;
.super Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;
.source "GMInterstitialAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/base/TTLoadBase;


# instance fields
.field public if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->B()V

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

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
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->J()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->g0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->do:Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c5f

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;->onInterstitialLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->z()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 7
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c61

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;->onInterstitialLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;)V

    :cond_4
    return-void
.end method

.method public setAdInterstitialListener(Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->a(Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string v0, "activity can not be null !"

    .line 2
    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;->a(Landroid/app/Activity;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b(Lcom/bytedance/msdk/base/TTBaseAd;)V

    :cond_1
    return-void
.end method
