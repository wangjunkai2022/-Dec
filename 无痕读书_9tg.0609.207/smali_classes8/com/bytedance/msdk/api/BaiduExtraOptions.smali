.class public Lcom/bytedance/msdk/api/BaiduExtraOptions;
.super Ljava/lang/Object;
.source "BaiduExtraOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DOWNLOAD_APP_CONFIRM_ALWAYS:I = 0x2

.field public static final DOWNLOAD_APP_CONFIRM_CUSTOM_BY_APP:I = 0x4

.field public static final DOWNLOAD_APP_CONFIRM_NEVER:I = 0x3

.field public static final DOWNLOAD_APP_CONFIRM_ONLY_MOBILE:I = 0x1


# instance fields
.field public case:Z

.field public do:Z

.field public else:Z

.field public for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

.field public goto:Ljava/lang/String;

.field public if:I

.field public new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

.field public try:Lcom/bytedance/msdk/api/BaiduSplashParams;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;Lcom/bytedance/msdk/api/BaiduExtraOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->do:Z

    .line 4
    iget p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->if:I

    .line 5
    iput p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->if:I

    .line 6
    iget-object p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    .line 7
    iput-object p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    .line 8
    iget-object p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

    .line 9
    iput-object p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

    .line 10
    iget-object p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->try:Lcom/bytedance/msdk/api/BaiduSplashParams;

    .line 11
    iput-object p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->try:Lcom/bytedance/msdk/api/BaiduSplashParams;

    .line 12
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->case:Z

    .line 13
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->case:Z

    .line 14
    iget-boolean p2, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->else:Z

    .line 15
    iput-boolean p2, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->else:Z

    .line 16
    iget-object p1, p1, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->goto:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->goto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppSid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getBaiduNativeSmartOptStyleParams()Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    return-object v0
.end method

.method public getBaiduRequestParameters()Lcom/bytedance/msdk/api/BaiduRequestParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

    return-object v0
.end method

.method public getBaiduSplashParams()Lcom/bytedance/msdk/api/BaiduSplashParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->try:Lcom/bytedance/msdk/api/BaiduSplashParams;

    return-object v0
.end method

.method public getDownloadAppConfirmPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->if:I

    return v0
.end method

.method public getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->isCacheVideoOnlyWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getAppSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setAppSid(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getBaiduNativeSmartOptStyleParams()Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setBaiduNativeSmartOptStyleParams(Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getBaiduRequestParameters()Lcom/bytedance/msdk/api/BaiduRequestParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setBaiduRequestParameters(Lcom/bytedance/msdk/api/BaiduRequestParameters;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getBaiduSplashParams()Lcom/bytedance/msdk/api/BaiduSplashParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setBaiduSplashParams(Lcom/bytedance/msdk/api/BaiduSplashParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getDownloadAppConfirmPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setDownloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getShowDialogOnSkip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getUseRewardCountdown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v0

    return-object v0
.end method

.method public getShowDialogOnSkip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->case:Z

    return v0
.end method

.method public getUseRewardCountdown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->else:Z

    return v0
.end method

.method public isCacheVideoOnlyWifi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/msdk/api/BaiduExtraOptions;->do:Z

    return v0
.end method
