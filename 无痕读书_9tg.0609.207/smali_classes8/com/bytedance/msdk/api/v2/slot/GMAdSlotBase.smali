.class public abstract Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
.super Ljava/lang/Object;
.source "GMAdSlotBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;
    }
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public catch:I

.field public do:Z

.field public else:Ljava/lang/String;

.field public for:Z

.field public goto:I

.field public if:F

.field public new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

.field public this:Z

.field public try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->do:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->do:Z

    .line 3
    iget v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 4
    iput v1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 5
    iput v1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    .line 6
    :cond_1
    :goto_0
    iget v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->if:F

    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->if:F

    .line 7
    iget-boolean v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->for:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->for:Z

    .line 8
    iget-object v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    if-eqz v0, :cond_2

    .line 9
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    .line 11
    :goto_1
    iget-object v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    if-eqz v0, :cond_3

    .line 12
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    .line 14
    :goto_2
    iget-object v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->case:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->case:Ljava/util/Map;

    .line 15
    iget-object v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->else:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->else:Ljava/lang/String;

    .line 16
    iget v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->goto:I

    iput v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->goto:I

    .line 17
    iget-boolean v0, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->this:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->this:Z

    .line 18
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase$Builder;->break:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->break:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTTVideoOption(Z)Lcom/bytedance/msdk/api/TTVideoOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setAdmobAppVolume(F)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isUseSurfaceView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->useSurfaceView(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTExtraOption(Z)Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setGDTExtraOption(Lcom/bytedance/msdk/api/GDTExtraOption;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotBaiduOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;->getBaiduExtra()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setBaiduExtraOption(Lcom/bytedance/msdk/api/BaiduExtraOptions;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->build()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->goto:I

    return v0
.end method

.method public getGMAdSlotBaiduOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->try:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    return-object v0
.end method

.method public getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->new:Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    return-object v0
.end method

.method public getNetWorkNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->catch:I

    return v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->case:Ljava/util/Map;

    return-object v0
.end method

.method public getScenarioId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->break:Ljava/lang/String;

    return-object v0
.end method

.method public getTTRequestExtraParams()Lcom/bytedance/msdk/api/TTRequestExtraParams;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/TTRequestExtraParams;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getTestSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->else:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->if:F

    return v0
.end method

.method public isBidNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->this:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->do:Z

    return v0
.end method

.method public isUseSurfaceView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->for:Z

    return v0
.end method

.method public setNetWorkNum(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/s;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->catch:I

    return-void
.end method
