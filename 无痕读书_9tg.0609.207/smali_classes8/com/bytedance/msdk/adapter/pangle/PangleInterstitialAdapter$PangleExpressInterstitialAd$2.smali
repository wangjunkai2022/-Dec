.class public Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 1
    iget-object p2, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p2, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialAdClick()V

    :cond_0
    return-void
.end method

.method public onAdDismiss()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialClosed()V

    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 1
    iget-object p2, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p2, Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdListener;->onInterstitialShow()V

    :cond_0
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PangleExpressInterstitialAd onRenderFail -> code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",msg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK_interisitial"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0, p3, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    const/16 p1, 0x46

    :goto_0
    const/16 p2, 0x5c

    const/16 p3, 0x28

    const/16 v0, 0x2a

    const/16 v1, 0x2a

    :goto_1
    if-eq v1, p3, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x5c

    const/16 v1, 0x28

    goto :goto_1

    :cond_1
    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->if:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p2, p2, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {p2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u7a7f\u5c71\u7532SDK--\u63d2\u5c4f-onRenderSucces"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_interisitial"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p2, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    :goto_0
    const/16 p1, 0x52

    const/16 p2, 0x50

    const/16 p3, 0x50

    :goto_1
    if-eq p3, p2, :cond_1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 p3, 0x52

    goto :goto_1
.end method
