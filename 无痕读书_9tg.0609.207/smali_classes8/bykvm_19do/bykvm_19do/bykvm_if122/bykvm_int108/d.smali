.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field public static a:J

.field public static b:Z

.field public static c:Ljava/lang/Runnable;

.field public static d:J

.field public static e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$b;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$b;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->d:J

    return-wide v0
.end method

.method public static synthetic a(J)J
    .locals 0

    .line 2
    sput-wide p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->d:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 87
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/TTAdConfig;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(J)V

    .line 34
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->isPangleAllowShowNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Z)V

    .line 37
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->isPangleAllowShowPageWhenScreenLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Z)V

    .line 38
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleTitleBarTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(I)V

    .line 39
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleDirectDownloadNetworkType()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a([I)V

    .line 40
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleNeedClearTaskReset()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a([Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->isPangleUseTextureView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->g(Z)V

    .line 42
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->isPanglePaid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->f(Z)V

    .line 43
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPublisherDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->f(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->isOpenAdnTest()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->c(Z)V

    .line 45
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getExtraData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Ljava/util/Map;)V

    .line 47
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPrivacyConfig()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V

    .line 48
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->i()V

    .line 49
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getAdapterConfigurationClasses()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Ljava/util/Set;)V

    .line 50
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getMediatedNetworkConfigurations()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->c(Ljava/util/Map;)V

    .line 51
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getRequestOptions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Ljava/util/Map;)V

    .line 52
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getUserInfoForSegment()Lcom/bytedance/msdk/api/UserInfoForSegment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/UserInfoForSegment;Z)V

    .line 53
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPanglePluginUpdateConfig()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(I)V

    .line 54
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTAdConfig;->getPangleKeywords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/TTAdConfig;Landroid/content/Context;)V
    .locals 1
    .param p0    # Lcom/bytedance/msdk/api/TTAdConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/v2/GMAdConfig;Lcom/bytedance/msdk/api/TTAdConfig;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/v2/GMAdConfig;)V
    .locals 3

    .line 55
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(J)V

    .line 56
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->isAllowShowNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Z)V

    .line 59
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->isAllowShowPageWhenScreenLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Z)V

    .line 60
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getTitleBarTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(I)V

    .line 61
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getDirectDownloadNetworkType()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a([I)V

    .line 62
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getNeedClearTaskReset()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a([Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->isIsUseTextureView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->g(Z)V

    .line 64
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->isPaid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->f(Z)V

    .line 65
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getPublisherDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->f(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->isOpenAdnTest()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->c(Z)V

    .line 67
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getExtraData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Ljava/util/Map;)V

    .line 69
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getPrivacyConfig()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V

    .line 70
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->i()V

    .line 71
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMConfigUserInfoForSegment()Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;Z)V

    .line 72
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getPluginUpdateConfig()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(I)V

    .line 73
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMPangleOption()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->e(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getLocalExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(Ljava/util/Map;)V

    .line 75
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->isHttps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Z)V

    .line 76
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->isOpenPangleCustom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b(Z)V

    .line 77
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getCutstomLocalConfig()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lorg/json/JSONObject;)V

    .line 78
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMGdtOption()Lcom/bytedance/msdk/api/v2/GMGdtOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMGdtOption;->isWxInstalled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->j(Z)V

    .line 79
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMGdtOption()Lcom/bytedance/msdk/api/v2/GMGdtOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMGdtOption;->getOpensdkVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->c(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMGdtOption()Lcom/bytedance/msdk/api/v2/GMGdtOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMGdtOption;->isSupportH265()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->h(Z)V

    .line 81
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGMGdtOption()Lcom/bytedance/msdk/api/v2/GMGdtOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMGdtOption;->isSupportSplashZoomout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->i(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig;->getGmLiveTokenInjectionAuth()Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;

    move-result-object p0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/v2/GMAdConfig;Landroid/content/Context;)V
    .locals 1
    .param p0    # Lcom/bytedance/msdk/api/v2/GMAdConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/v2/GMAdConfig;Lcom/bytedance/msdk/api/TTAdConfig;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/v2/GMAdConfig;Lcom/bytedance/msdk/api/TTAdConfig;Landroid/content/Context;)V
    .locals 3

    const-string v0, "TTMediationSDK_SDK_Init"

    const-string v1, "msdk_init............."

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b:Z

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a:J

    .line 9
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Landroid/content/Context;)V

    .line 10
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e0;->a(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/h0;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/h0;

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->e()V

    if-eqz p0, :cond_0

    .line 14
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/v2/GMAdConfig;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a(Lcom/bytedance/msdk/api/TTAdConfig;)V

    .line 16
    :cond_1
    :goto_0
    new-instance p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$a;

    invoke-direct {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 17
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/v;->m(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g;->b()V

    .line 19
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->d()V

    .line 20
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 21
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->b()V

    .line 23
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;->b()V

    .line 24
    :goto_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->b(Z)V

    .line 25
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b()V

    .line 26
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->g()V

    .line 27
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->c(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->h()V

    .line 29
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 30
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->c:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    .locals 1

    .line 31
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->a(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V

    .line 32
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->i()V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V
    .locals 2

    .line 83
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "pangle"

    .line 85
    invoke-static {v1}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->setInjectionAuth(Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic a([Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 12
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->k()I

    move-result v0

    .line 2
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;-><init>()V

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;

    invoke-direct {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/c;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    move-result-object v1

    const-wide/32 v2, 0xa4cb800

    .line 4
    invoke-static {v0, v0, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_if122/a;->a(IIJ)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_if122/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_if122/a;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a(Z)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    move-result-object v0

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/l;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/l;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    move-result-object v0

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/m;

    .line 7
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/e;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a$b;->a()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a;

    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/b;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/a;Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/b;->c()V

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->b()V

    return-void
.end method

.method public static b([Ljava/lang/StackTraceElement;)V
    .locals 3

    .line 13
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->g()Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;I)V

    .line 16
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static c()J
    .locals 2

    .line 1
    sget-wide v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->a:J

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->d()Z

    move-result v0

    const-string v1, "TMe"

    if-nez v0, :cond_0

    const-string v0, "-----==---- \u5ef6\u65f6\u4e0a\u62a5sdk_init"

    .line 3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->e()V

    goto :goto_0

    :cond_0
    const-string v0, "-----==---- \u6b63\u5e38\u4e0a\u62a5sdk_init"

    .line 5
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 6
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(J)V

    .line 7
    :goto_0
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/i0;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a()V

    :cond_1
    return-void
.end method

.method public static d()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "InitHelper-->initSetting->loadData Exception="

    .line 2
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static e()V
    .locals 5

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;->a()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;

    invoke-direct {v4, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/a;->a(Landroid/content/Context;ZZLbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_for12/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b:Z

    return v0
.end method

.method public static g()V
    .locals 3

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$b;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string v0, "AppStateListener\u6ce8\u518c\u5931\u8d25, app = null"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "AppStateListener\u6ce8\u518c\u6210\u529f"

    .line 3
    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Landroid/app/Application;)V

    .line 6
    :cond_1
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;

    .line 7
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$c;

    invoke-direct {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$c;-><init>()V

    invoke-virtual {v1, v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j;->a(Landroid/app/Application;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j$b;)V

    return-void
.end method

.method public static h()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d;->b([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$d;

    invoke-direct {v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/d$d;-><init>([Ljava/lang/StackTraceElement;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static i()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->q()Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->setPrivacyConfig(Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    return-void
.end method
