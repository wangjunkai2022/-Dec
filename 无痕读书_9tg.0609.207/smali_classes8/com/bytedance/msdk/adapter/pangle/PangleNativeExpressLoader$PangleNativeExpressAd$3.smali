.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    .line 2
    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    .line 2
    instance-of v0, p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderSuccess(FF)V

    :cond_0
    return-void
.end method
