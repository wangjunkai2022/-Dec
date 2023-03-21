.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;
.source "GMAdSlotRewardVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public catch:Ljava/lang/String;

.field public class:I

.field public const:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final:Ljava/lang/String;

.field public super:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->catch:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->class:I

    .line 4
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->final:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$1;)V

    return-object v0
.end method

.method public setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->this:Z

    return-object p0
.end method

.method public setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->const:Ljava/util/Map;

    return-object p0
.end method

.method public setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->goto:I

    return-object p0
.end method

.method public setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->case:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    return-object p0
.end method

.method public setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    return-object p0
.end method

.method public setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->do:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->super:I

    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->class:I

    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->catch:Ljava/lang/String;

    return-object p0
.end method

.method public setScenarioId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->break:Ljava/lang/String;

    return-object p0
.end method

.method public setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->else:Ljava/lang/String;

    return-object p0
.end method

.method public setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->for:Z

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->final:Ljava/lang/String;

    return-object p0
.end method

.method public setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    return-object p0
.end method
