.class public Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;
.super Lcom/bytedance/msdk/base/TTBaseAd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleSplashAd"
.end annotation


# instance fields
.field public do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

.field public for:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

.field public if:Z

.field public final synthetic new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->new:Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter;

    invoke-direct {p0}, Lcom/bytedance/msdk/base/TTBaseAd;-><init>()V

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->for:Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;

    return-void
.end method

.method public static do(Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;)Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;
    .locals 2

    :goto_0
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    goto :goto_0

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 1
    :cond_0
    :pswitch_2
    iget-object p0, p0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    check-cast p0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    return-object p0

    :goto_2
    :pswitch_3
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    goto :goto_1

    :goto_3
    const/16 v1, 0x5b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getAdId(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreativeId()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getMediaExtraInfo()Ljava/util/Map;

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

.method public getMinWindowSize()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashClickEyeSizeToDp()[I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getMediaExtraInfo()Ljava/util/Map;

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

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->renderExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    iput-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    :cond_0
    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    const/16 v1, 0x37

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    :pswitch_0
    const/16 v0, 0x48

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x34

    if-eq p1, v0, :cond_2

    const/16 v0, 0x35

    if-eq p1, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    packed-switch v1, :pswitch_data_1

    const/16 v1, 0x1e

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x39

    if-gt p1, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    const/16 v0, 0x49

    const/16 p1, 0x10

    goto :goto_1

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public splashMinWindowAnimationFinish()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleSplashAdapter$PangleSplashAd;->do:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->splashClickEyeAnimationFinish()V

    :cond_0
    return-void
.end method
