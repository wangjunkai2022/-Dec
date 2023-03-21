.class public final Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
.super Ljava/lang/Object;
.source "GMAdSlotGDTOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public case:I

.field public do:Z

.field public else:I

.field public for:Z

.field public goto:I

.field public if:Z

.field public new:Z

.field public this:Landroid/widget/FrameLayout$LayoutParams;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;-><init>(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$1;)V

    return-object v0
.end method

.method public setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->else:I

    return-object p0
.end method

.method public setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->goto:I

    return-object p0
.end method

.method public setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->if:Z

    return-object p0
.end method

.method public setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->for:Z

    return-object p0
.end method

.method public setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->do:Z

    return-object p0
.end method

.method public setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->new:Z

    return-object p0
.end method

.method public setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->case:I

    return-object p0
.end method

.method public setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->try:I

    return-object p0
.end method

.method public setNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->this:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method
