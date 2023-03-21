.class public final Lcom/bytedance/msdk/api/TTMediationAdSdk;
.super Ljava/lang/Object;
.source "TTMediationAdSdk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configLoadSuccess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result v0

    return v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPangleData()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPangleData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPangleExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPangleExtraData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getPanglePaid()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getPanglePaid()Z

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.6.0.1"

    return-object v0
.end method

.method public static getValueFromPPeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getValueFromPPeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZbh(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getZbh(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initUnityForBanner(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/bytedance/msdk/api/TTAdConfig;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/TTAdConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->openDebugMode()V

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/a;->d()V

    .line 4
    :cond_2
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l;->a(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/TTAdConfig;Landroid/content/Context;)V

    return-void
.end method

.method public static isAdapterVersionFit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->isAdapterVersionFit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAdnVersionFit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->isAdnVersionFit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTestDemo()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->isTestDemo()Z

    move-result v0

    return v0
.end method

.method public static registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    return-void
.end method

.method public static requestPermissionIfNecessary(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->requestPermissionIfNecessary(Landroid/content/Context;)V

    return-void
.end method

.method public static requestPermissionIfNecessary(Landroid/content/Context;[I)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->requestPermissionIfNecessary(Landroid/content/Context;[I)V

    return-void
.end method

.method public static setPangleData(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setPangleData(Ljava/lang/String;)V

    return-void
.end method

.method public static setPulisherDid(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app\u8fd0\u884c\u4e2dsetPulisherDid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setPulisherDid(Ljava/lang/String;)V

    return-void
.end method

.method public static setThemeStatus(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setThemeStatus(I)V

    return-void
.end method

.method public static setUserInfoForSegment(Lcom/bytedance/msdk/api/UserInfoForSegment;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/UserInfoForSegment;Z)V

    return-void
.end method

.method public static showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I

    move-result p0

    return p0
.end method

.method public static unregisterConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->unregisterConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    return-void
.end method

.method public static updatePangleConfig(Lcom/bytedance/msdk/api/TTAdConfig;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getExtraData()Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Ljava/util/Map;)V

    return-void
.end method

.method public static updatePanglePaid(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->updatePanglePaid(Z)V

    return-void
.end method

.method public static updatePrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->updatePrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V

    return-void
.end method
