.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->setDislikeCallback(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onCancel()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 1
    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;

    .line 3
    iget-object p3, p3, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->nativeDislikeClick(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onSelected(ILjava/lang/String;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onShow()V

    :cond_0
    return-void
.end method
