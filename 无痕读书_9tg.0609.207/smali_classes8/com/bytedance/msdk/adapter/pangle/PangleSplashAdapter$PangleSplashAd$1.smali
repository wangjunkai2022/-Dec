.class public Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    const/16 p1, 0x5c

    :goto_0
    const/16 p2, 0xe

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    const/16 p2, 0x48

    :goto_2
    :pswitch_3
    const/16 p2, 0xf

    const/16 p1, 0x5f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iput-object p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 3
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getInteractionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 5
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "price"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getValue(Ljava/lang/Object;)D

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object v2, v2, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-virtual {v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object v3, v3, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-virtual {v3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pangle Splash \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TTMediationSDK_ECMP"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 7
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 8
    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 9
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 10
    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashClickEyeListener(Lcom/bytedance/sdk/openadsdk/ISplashClickEyeListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 11
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 12
    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashCardListener(Lcom/bytedance/sdk/openadsdk/ISplashCardListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method

.method public onTimeout()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "splash ad load timeout !"

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
