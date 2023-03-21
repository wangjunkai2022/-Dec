.class public Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->if:Z

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 7
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    iget-object p1, p1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 1
    iput-object p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 3
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 4
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getInteractionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setInteractionType(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 6
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-virtual {v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isClientBidding()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "price"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterUtils;->getValue(Ljava/lang/Object;)D

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    iget-object v4, v4, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-virtual {v4}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdapterRit()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    iget-object v5, v5, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-virtual {v5}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pangle \u5168\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TTMediationSDK_ECMP"

    invoke-static {v4, v3}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v4

    :goto_0
    invoke-virtual {v3, v1, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "materialMetaIsFromPreload"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 7
    iput-boolean v0, v1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->for:Z

    const-string v0, "pangle \u5168\u5c4f \u8fd4\u56de\u7684adnPreload\uff1a"

    .line 8
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 9
    iget-boolean v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->for:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 11
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->do:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 12
    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1$1;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    .line 13
    iput-boolean p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->if:Z

    .line 14
    iget-object p1, v0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 0

    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd$1;->do:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->if:Z

    .line 2
    iget-object v0, p1, Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter$PangleFullVideoAd;->try:Lcom/bytedance/msdk/adapter/pangle/PangleFullVideoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdVideoCache(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdError;)V

    :pswitch_0
    const/16 p1, 0x4a

    const/16 v0, 0x37

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    const/16 p1, 0x38

    if-eq v0, p1, :cond_0

    const/16 p1, 0x39

    if-eq v0, p1, :cond_0

    :pswitch_3
    const/16 p1, 0x49

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    :pswitch_4
    return-void

    :goto_1
    const/16 p1, 0x48

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
