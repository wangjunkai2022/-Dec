.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMAdDislike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/GMAdDislike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->do:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDislikeCallback(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->do:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeLoader$PangleNativeAd$3;->do:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->showDislikeDialog()V

    :cond_0
    return-void
.end method
