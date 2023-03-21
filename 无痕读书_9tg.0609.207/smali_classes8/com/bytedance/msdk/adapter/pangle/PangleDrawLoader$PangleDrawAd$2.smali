.class public Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd$2;->do:Lcom/bytedance/msdk/adapter/pangle/PangleDrawLoader$PangleDrawAd;

    .line 1
    iget-object p1, p1, Lcom/bytedance/msdk/base/TTBaseAd;->mGMDrawAdListener:Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/draw/GMDrawAdListener;->onAdShow()V

    :cond_0
    return-void
.end method
