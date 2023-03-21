.class public Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;
.super Ljava/lang/Object;
.source "GMAdOptionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->setAdChoicesPlacement(I)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->setRequestMultipleImages(Z)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lcom/bytedance/msdk/api/AdmobNativeAdOptions;->setReturnUrlsForImageAssets(Z)Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    return-object v0
.end method

.method public static getGMAdSlotBaiduOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setDownloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    return-object v0
.end method
