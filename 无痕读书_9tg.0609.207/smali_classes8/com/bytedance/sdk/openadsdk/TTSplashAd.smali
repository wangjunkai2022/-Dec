.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTSplashAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTClientBidding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getInteractionType()I
.end method

.method public abstract getMediaExtraInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplashClickEyeSizeToDp()[I
.end method

.method public abstract getSplashView()Landroid/view/View;
.end method

.method public abstract renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
.end method

.method public abstract setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end method

.method public abstract setNotAllowSdkCountdown()V
.end method

.method public abstract setSplashCardListener(Lcom/bytedance/sdk/openadsdk/ISplashCardListener;)V
.end method

.method public abstract setSplashClickEyeListener(Lcom/bytedance/sdk/openadsdk/ISplashClickEyeListener;)V
.end method

.method public abstract setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V
.end method

.method public abstract splashClickEyeAnimationFinish()V
.end method

.method public abstract startClickEye()V
.end method

.method public abstract startClickEye(Z)V
.end method
