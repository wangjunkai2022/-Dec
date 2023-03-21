.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;
.super Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->getGMNativeCustomVideoReporter()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeCustomVideoReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public reportVideoAutoStart()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoAutoStart()V

    :cond_0
    return-void
.end method

.method public reportVideoBreak(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoBreak(J)V

    :cond_0
    return-void
.end method

.method public reportVideoContinue(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoContinue(J)V

    :cond_0
    return-void
.end method

.method public reportVideoError(JII)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoError(JII)V

    :cond_0
    return-void
.end method

.method public reportVideoFinish()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoFinish()V

    :cond_0
    return-void
.end method

.method public reportVideoPause(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoPause(J)V

    :cond_0
    return-void
.end method

.method public reportVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoStart()V

    :cond_0
    return-void
.end method

.method public reportVideoStartError(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->do:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoStartError(II)V

    :cond_0
    return-void
.end method
