.class public Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->loadAd()V
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

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7a7f\u5c71\u7532SDK--\u63d2\u5c4f-onNativeExpressAdLoad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_interisitial"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 1
    iput-object p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 3
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 5
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getValue(Ljava/lang/Object;)D

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object v3, v3, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pangle \u63d2\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TTMediationSDK_ECMP"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 7
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 8
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->for:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    .line 9
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 10
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
