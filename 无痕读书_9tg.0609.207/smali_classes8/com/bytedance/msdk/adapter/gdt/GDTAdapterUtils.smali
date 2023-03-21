.class public Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CPM_DEFLAUT_VALUE:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getBiddingLossReason(Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;)I
    .locals 5

    const/16 v0, 0x2711

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils$1;->do:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;
    .locals 2

    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTAutoPlayPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTAutoPlayMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTDetailPageMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTEnableDetailPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->isGDTEnableUserControl()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoOption(Lcom/bytedance/msdk/api/GDTExtraOption;)Lcom/qq/e/ads/cfg/VideoOption;
    .locals 2

    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGDTAutoPlayPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTAutoPlayMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTDetailPageMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTEnableDetailPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/GDTExtraOption;->isGDTEnableUserControl()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p0

    return-object p0
.end method
