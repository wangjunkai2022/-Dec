.class public Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
.super Ljava/lang/Object;
.source "GMAdSlotGDTOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;,
        Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$DownAPPConfirmPolicy;,
        Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$BrowserType;,
        Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$VideoPlayPolicy;,
        Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$AutoPlayPolicy;
    }
.end annotation


# instance fields
.field public final case:I

.field public do:Z

.field public final else:I

.field public for:Z

.field public final goto:I

.field public if:Z

.field public new:Z

.field public this:Landroid/widget/FrameLayout$LayoutParams;

.field public try:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->if:Z

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->for:Z

    .line 5
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->new:Z

    .line 6
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->try:I

    .line 7
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->do:Z

    .line 8
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->do:Z

    .line 9
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->if:Z

    .line 10
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->if:Z

    .line 11
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->for:Z

    .line 12
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->for:Z

    .line 13
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->new:Z

    .line 14
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->new:Z

    .line 15
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->try:I

    .line 16
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->case:I

    .line 17
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->case:I

    .line 18
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->else:I

    .line 19
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->else:I

    .line 20
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->try:I

    .line 21
    iget p2, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->goto:I

    .line 22
    iput p2, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->goto:I

    .line 23
    iget-object p1, p1, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->this:Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->this:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public getDownAPPConfirmPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->goto:I

    return v0
.end method

.method public getGDTAutoPlayPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->try:I

    return v0
.end method

.method public getGDTExtraOption(Z)Lcom/bytedance/msdk/api/GDTExtraOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTAutoPlayPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTAutoPlayMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTDetailPageMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTEnableDetailPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTEnableUserControl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setSplashPreLoad(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->build()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object p1

    return-object p1
.end method

.method public getGDTMaxVideoDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->else:I

    return v0
.end method

.method public getGDTMinVideoDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->case:I

    return v0
.end method

.method public getNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->this:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public isGDTAutoPlayMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->if:Z

    return v0
.end method

.method public isGDTDetailPageMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->for:Z

    return v0
.end method

.method public isGDTEnableDetailPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->do:Z

    return v0
.end method

.method public isGDTEnableUserControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->new:Z

    return v0
.end method
