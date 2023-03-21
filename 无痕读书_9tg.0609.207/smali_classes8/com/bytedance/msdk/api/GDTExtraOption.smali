.class public Lcom/bytedance/msdk/api/GDTExtraOption;
.super Ljava/lang/Object;
.source "GDTExtraOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/GDTExtraOption$Builder;,
        Lcom/bytedance/msdk/api/GDTExtraOption$DownAPPConfirmPolicy;,
        Lcom/bytedance/msdk/api/GDTExtraOption$BrowserType;,
        Lcom/bytedance/msdk/api/GDTExtraOption$VideoPlayPolicy;,
        Lcom/bytedance/msdk/api/GDTExtraOption$AutoPlayPolicy;,
        Lcom/bytedance/msdk/api/GDTExtraOption$FeedExpressType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final break:I

.field public final case:I

.field public final catch:I

.field public class:I

.field public const:Z

.field public do:Z

.field public final else:I

.field public for:Z

.field public final goto:I

.field public if:Z

.field public new:Z

.field public final this:I

.field public try:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/GDTExtraOption$Builder;Lcom/bytedance/msdk/api/GDTExtraOption$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->if:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->for:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->new:Z

    .line 6
    iput v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->try:I

    .line 7
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->class:I

    .line 8
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->do:Z

    .line 9
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->do:Z

    .line 10
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->if:Z

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->if:Z

    .line 12
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->for:Z

    .line 13
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->for:Z

    .line 14
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->new:Z

    .line 15
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->new:Z

    .line 16
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->try:I

    .line 17
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->case:I

    .line 18
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->case:I

    .line 19
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->else:I

    .line 20
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->else:I

    .line 21
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->try:I

    .line 22
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->goto:I

    .line 23
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->goto:I

    .line 24
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->this:I

    .line 25
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->this:I

    .line 26
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->break:I

    .line 27
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->break:I

    .line 28
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->catch:I

    .line 29
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->catch:I

    .line 30
    iget p2, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->class:I

    .line 31
    iput p2, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->class:I

    .line 32
    iget-boolean p1, p1, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->const:Z

    .line 33
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->const:Z

    return-void
.end method


# virtual methods
.method public getBrowserType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->goto:I

    return v0
.end method

.method public getDownAPPConfirmPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->this:I

    return v0
.end method

.method public getFeedExpressType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->class:I

    return v0
.end method

.method public getGDTAutoPlayPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->try:I

    return v0
.end method

.method public getGDTMaxVideoDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->else:I

    return v0
.end method

.method public getGDTMinVideoDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->case:I

    return v0
.end method

.method public getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGDTAutoPlayPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->getDownAPPConfirmPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTAutoPlayMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTDetailPageMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTEnableDetailPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTEnableUserControl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGDTMaxVideoDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGDTMinVideoDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->catch:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->break:I

    return v0
.end method

.method public isGDTAutoPlayMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->if:Z

    return v0
.end method

.method public isGDTDetailPageMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->for:Z

    return v0
.end method

.method public isGDTEnableDetailPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->do:Z

    return v0
.end method

.method public isGDTEnableUserControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->new:Z

    return v0
.end method

.method public isSplashPreLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/GDTExtraOption;->const:Z

    return v0
.end method
