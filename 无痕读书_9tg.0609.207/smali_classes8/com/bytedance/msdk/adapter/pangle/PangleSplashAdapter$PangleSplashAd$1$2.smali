.class public Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ISplashClickEyeListener;


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

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportSplashClickEye(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7a7f\u5c71\u7532_splash_isSupportSplashClickEye:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iput-boolean p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->if:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onSplashClickEyeAnimationFinish()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "\u7a7f\u5c71\u7532_splash_onSplashClickEyeAnimationFinish"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;->onMinWindowPlayFinish()V

    :cond_0
    return-void
.end method

.method public onSplashClickEyeAnimationStart()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "\u7a7f\u5c71\u7532_splash_onSplashClickEyeAnimationStart"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;

    iget-boolean v1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->if:Z

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of v1, v1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;->onMinWindowStart()V

    :cond_0
    return-void
.end method
