.class public Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;->setDislikeCallback(Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onCancel()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onSelected(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 2
    instance-of p2, p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterBannerAdListener;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleBannerAdapter$PangleNativeAd$1$1;->do:Lcom/bytedance/msdk/api/v2/GMDislikeCallback;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/GMDislikeCallback;->onShow()V

    return-void
.end method
