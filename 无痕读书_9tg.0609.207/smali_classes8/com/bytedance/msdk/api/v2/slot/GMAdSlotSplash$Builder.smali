.class public Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
.super Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;
.source "GMAdSlotSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public catch:I

.field public class:I

.field public const:Ljava/lang/String;

.field public final:Z

.field public import:Z

.field public super:I

.field public throw:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public while:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;-><init>()V

    const/16 v0, 0x438

    .line 2
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->catch:I

    const/16 v0, 0x780

    .line 3
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->class:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->final:Z

    const/16 v0, 0xbb8

    .line 5
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->super:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->throw:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$1;)V

    return-object v0
.end method

.method public setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->this:Z

    return-object p0
.end method

.method public setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->goto:I

    return-object p0
.end method

.method public setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->case:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setForceLoadBottom(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->while:Z

    return-object p0
.end method

.method public setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    return-object p0
.end method

.method public setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    return-object p0
.end method

.method public setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->catch:I

    .line 2
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->class:I

    return-object p0
.end method

.method public setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->do:Z

    return-object p0
.end method

.method public setScenarioId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->break:Ljava/lang/String;

    return-object p0
.end method

.method public setSplashButtonType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->throw:I

    return-object p0
.end method

.method public setSplashPreLoad(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->final:Z

    return-object p0
.end method

.method public setSplashShakeButton(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->import:Z

    return-object p0
.end method

.method public setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->else:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeOut(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->super:I

    return-object p0
.end method

.method public setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->for:Z

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->const:Ljava/lang/String;

    return-object p0
.end method

.method public setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    return-object p0
.end method
