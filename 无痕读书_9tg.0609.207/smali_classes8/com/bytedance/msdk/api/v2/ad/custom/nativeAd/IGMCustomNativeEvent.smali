.class public interface abstract Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/IGMCustomNativeEvent;
.super Ljava/lang/Object;
.source "IGMCustomNativeEvent.java"


# virtual methods
.method public abstract callNativeAdClick()V
.end method

.method public abstract callNativeAdShow()V
.end method

.method public abstract callNativeDislikeCancel()V
.end method

.method public abstract callNativeDislikeRefuse()V
.end method

.method public abstract callNativeDislikeSelected(ILjava/lang/String;)V
.end method

.method public abstract callNativeDislikeShow()V
.end method

.method public abstract callNativeOnDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract callNativeOnDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract callNativeOnDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract callNativeOnDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract callNativeOnIdle()V
.end method

.method public abstract callNativeOnInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract callNativeRenderFail(Landroid/view/View;Ljava/lang/String;I)V
.end method

.method public abstract callNativeRenderSuccess(FF)V
.end method

.method public abstract callNativeVideoCompleted()V
.end method

.method public abstract callNativeVideoError(Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;)V
.end method

.method public abstract callNativeVideoPause()V
.end method

.method public abstract callNativeVideoProgressUpdate(JJ)V
.end method

.method public abstract callNativeVideoResume()V
.end method

.method public abstract callNativeVideoStart()V
.end method
