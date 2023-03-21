.class public Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;
.super Ljava/lang/Object;
.source "GMPrivacyConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAgeGroup()Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;->AGE_ADULT:Lcom/bytedance/msdk/api/v2/GMAdConstant$ADULT_STATE;

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevImeis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/msdk/api/v2/GMLocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdult()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseAndroidId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseMacAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseOaid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLimitPersonalAds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProgrammaticRecommend()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
