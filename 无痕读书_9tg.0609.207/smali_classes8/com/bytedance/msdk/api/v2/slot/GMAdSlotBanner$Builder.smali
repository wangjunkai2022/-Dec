.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;
.source "GMAdSlotBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public catch:I

.field public class:I

.field public const:I

.field public final:Z

.field public super:Ljava/lang/String;

.field public throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;-><init>()V

    const/16 v0, 0x280

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->catch:I

    const/16 v0, 0x140

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->class:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->const:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->final:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->super:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$1;)V

    return-object v0
.end method

.method public setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->throw:Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object p0
.end method

.method public setAllowShowCloseBtn(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->final:Z

    return-object p0
.end method

.method public setBannerSize(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->const:I

    return-object p0
.end method

.method public setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->this:Z

    return-object p0
.end method

.method public setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->goto:I

    return-object p0
.end method

.method public setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->case:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    return-object p0
.end method

.method public setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    return-object p0
.end method

.method public setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->catch:I

    .line 2
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->class:I

    return-object p0
.end method

.method public setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->do:Z

    return-object p0
.end method

.method public setRefreshTime(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setScenarioId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->break:Ljava/lang/String;

    return-object p0
.end method

.method public setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->else:Ljava/lang/String;

    return-object p0
.end method

.method public setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->for:Z

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->super:Ljava/lang/String;

    return-object p0
.end method

.method public setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    return-object p0
.end method
