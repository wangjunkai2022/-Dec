.class public Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;
.super Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;
.source "GMCustomBaseNativeAd.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:Ljava/lang/String;

.field public class:D

.field public const:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public else:I

.field public final:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public import:D

.field public new:Ljava/lang/String;

.field public super:I

.field public this:I

.field public throw:I

.field public try:Ljava/lang/String;

.field public while:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getAdImageMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->super:I

    return v0
.end method

.method public getBiddingPrice()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->import:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getExpressView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->else:I

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->const:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->case:I

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->throw:I

    return v0
.end method

.method public getNativeAdAppInfo()Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->while:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->final:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->class:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->break:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->this:I

    return v0
.end method

.method public isServerBidding()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->goto:Ljava/lang/String;

    return-void
.end method

.method public setAdImageMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->super:I

    return-void
.end method

.method public setBiddingPrice(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->import:D

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->for:Ljava/lang/String;

    return-void
.end method

.method public setExpressAd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomAd;->do:Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTBaseAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setExpressAd(Z)V

    :cond_0
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->new:Ljava/lang/String;

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->else:I

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->const:Ljava/util/List;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->try:Ljava/lang/String;

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->case:I

    return-void
.end method

.method public setInteractionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->throw:I

    return-void
.end method

.method public setNativeAdAppInfo(Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->while:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdAppInfo;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->catch:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->final:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->class:D

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->if:Ljava/lang/String;

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->break:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomBaseNativeAd;->this:I

    return-void
.end method
