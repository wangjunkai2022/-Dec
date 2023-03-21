.class public Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iget-object p2, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p2, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iget-object p2, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p2, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onAdSkip()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "\u7a7f\u5c71\u7532_splash_onAdSkip"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdSkip()V

    :cond_0
    return-void
.end method

.method public onAdTimeOver()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "\u7a7f\u5c71\u7532_splash_onAdTimeOver"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdDismiss()V

    :cond_0
    return-void
.end method
