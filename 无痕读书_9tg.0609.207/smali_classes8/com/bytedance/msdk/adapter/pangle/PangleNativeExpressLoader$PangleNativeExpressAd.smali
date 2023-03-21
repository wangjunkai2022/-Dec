.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleNativeExpressAd"
.end annotation


# instance fields
.field public do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field public for:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field public volatile if:Z

.field public new:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

.field public final synthetic try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 3

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->if:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$3;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->for:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$4;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;)V

    iput-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->new:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getImageMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setImageMode(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->for:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->new:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 1
    iget-boolean p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;->do:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getValue(Ljava/lang/Object;)D

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pangle \u6a21\u677fnative \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_ECMP"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getAdId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreativeId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getCreativeId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCreativeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getReqId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->if:Z

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->if:Z

    new-instance v0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->onDestroy()V

    return-void
.end method

.method public render()V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x48

    :goto_2
    :pswitch_2
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    :cond_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;->do:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd$2;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;Lcom/bytedance/msdk/api/v2/GMDislikeCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    return-void
.end method
