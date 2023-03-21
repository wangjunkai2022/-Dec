.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;
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

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object p5, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v0, p5, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object p5, p5, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 p6, 0x2

    .line 3
    iput p6, p5, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 4
    invoke-interface/range {v0 .. v6}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onDownloadProgress(JJII)V

    :cond_0
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 v2, 0x4

    .line 3
    iput v2, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 v2, 0x5

    .line 3
    iput v2, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    .line 4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 v2, 0x3

    .line 3
    iput v2, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onIdle()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    .line 4
    invoke-interface {v1}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onIdle()V

    :cond_0
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$6;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    .line 1
    iget-object v1, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdAppDownloadListener:Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    const/4 v2, 0x6

    .line 3
    iput v2, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->new:I

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/GMAdAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
