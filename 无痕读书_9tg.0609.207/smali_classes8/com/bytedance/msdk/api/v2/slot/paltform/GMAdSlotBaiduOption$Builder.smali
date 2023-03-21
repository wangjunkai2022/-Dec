.class public final Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
.super Ljava/lang/Object;
.source "GMAdSlotBaiduOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;-><init>(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$1;)V

    return-object v0
.end method

.method public setAppSid(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->goto:Ljava/lang/String;

    return-object p0
.end method

.method public setBaiduNativeSmartOptStyleParams(Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->for:Lcom/bytedance/msdk/api/BaiduNativeSmartOptStyleParams;

    return-object p0
.end method

.method public setBaiduRequestParameters(Lcom/bytedance/msdk/api/BaiduRequestParameters;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->new:Lcom/bytedance/msdk/api/BaiduRequestParameters;

    return-object p0
.end method

.method public setBaiduSplashParams(Lcom/bytedance/msdk/api/BaiduSplashParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->try:Lcom/bytedance/msdk/api/BaiduSplashParams;

    return-object p0
.end method

.method public setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->do:Z

    return-object p0
.end method

.method public setDownloadAppConfirmPolicy(I)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->if:I

    return-object p0
.end method

.method public setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->case:Z

    return-object p0
.end method

.method public setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->else:Z

    return-object p0
.end method
