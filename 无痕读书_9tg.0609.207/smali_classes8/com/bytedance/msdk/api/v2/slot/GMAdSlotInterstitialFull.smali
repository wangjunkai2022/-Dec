.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.source "GMAdSlotInterstitialFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;
    }
.end annotation


# instance fields
.field public class:I

.field public const:I

.field public final:Ljava/lang/String;

.field public import:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public super:I

.field public throw:Ljava/lang/String;

.field public while:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V

    .line 2
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->catch:I

    .line 3
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->class:I

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->class:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->const:I

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->const:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->final:Ljava/lang/String;

    .line 8
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->final:I

    .line 9
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->super:I

    .line 10
    iget-object p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->super:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->throw:Ljava/lang/String;

    .line 12
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->throw:I

    .line 13
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->while:I

    .line 14
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->while:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->import:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->import:Ljava/util/Map;

    return-object v0
.end method

.method public getGMAdSlotFullVideo()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->final:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->super:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isUseSurfaceView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getRewardAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getGMAdSlotInterstitial()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isUseSurfaceView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->const:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->super:I

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->while:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->final:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->class:I

    return v0
.end method
