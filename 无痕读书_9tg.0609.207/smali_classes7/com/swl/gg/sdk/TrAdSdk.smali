.class public Lcom/swl/gg/sdk/TrAdSdk;
.super Ljava/lang/Object;
.source "TrAdSdk.java"


# static fields
.field public static isOpenLog:Z = false

.field public static mApp:Landroid/app/Application; = null

.field public static mImageLoader:Lcom/apk/u60; = null

.field public static openAdClose:Z = true

.field public static openAdQuickDownload:Z = true

.field public static openVideoCache_show:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/i;->if(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "GM_SDK_CHANNEL"

    :cond_1
    return-object v0
.end method

.method public static getCsjAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/apk/z;

    invoke-virtual {v0}, Lcom/apk/z;->if()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDevOaid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/eg;->public()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGdtAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/apk/z;

    invoke-virtual {v0}, Lcom/apk/z;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroMoreAppId()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    const-string v0, "SP_AD_TT_GM_APPID_KEY"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTrAdSdkLoader()Lcom/apk/u60;
    .locals 1

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/k40;->try()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static init(Landroid/app/Application;Lcom/apk/u60;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    sput-object p0, Lcom/swl/gg/sdk/TrAdSdk;->mApp:Landroid/app/Application;

    .line 2
    sput-object p1, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    const-string v0, "SP_AD_TT_GM_APPID_KEY"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/apk/k40;->native(Ljava/lang/String;)V

    .line 6
    :cond_0
    check-cast p1, Lcom/apk/z;

    invoke-virtual {p1}, Lcom/apk/z;->for()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Lcom/apk/k40;->const(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/apk/z;->if()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/apk/k40;->static(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/swl/gg/sdk/TrAdSdk;->initMMKV(Landroid/app/Application;)V

    return-void

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TrAdSdkLoader \u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initMMKV(Landroid/app/Application;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isAdQuickDownload()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swl/gg/sdk/TrAdSdk;->openAdQuickDownload:Z

    return v0
.end method

.method public static isDayMax(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/apk/k40;->switch()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AD_STRATEGY_TYPE_REQ_DAY_MAX_KEY"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Lcom/apk/g50;->do(Ljava/lang/String;I)I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isFullAdType(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/k40;->default(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/apk/k40;->class(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_qpsp"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_cqpsp"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInitAds()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apk/k40;->new:Z

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/apk/k40;->for:Z

    if-nez v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/apk/k40;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isOpenAdClose()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swl/gg/sdk/TrAdSdk;->openAdClose:Z

    return v0
.end method

.method public static isOpenLog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog:Z

    return v0
.end method

.method public static isRewardAdType(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/k40;->abstract(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/apk/k40;->public(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_jlsp"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSplashAdType(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/k40;->private(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csj"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTheAd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/k40;->private(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/apk/k40;->finally(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/apk/k40;->package(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/apk/k40;->default(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/apk/k40;->abstract(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt_banner_list"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt_native_page"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt_native_rect"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csj"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csjmb"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csj_banner_list"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p0}, Lcom/apk/k40;->class(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {p0}, Lcom/apk/k40;->public(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_jlsp"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_qpsp"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gm_cqpsp"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVideoCacheShow()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/swl/gg/sdk/TrAdSdk;->openVideoCache_show:Z

    return v0
.end method

.method public static loadImageGlide(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/swl/gg/sdk/TrAdSdk;->mImageLoader:Lcom/apk/u60;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    .line 4
    invoke-static {p0, p1}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public static openAdClose(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/swl/gg/sdk/TrAdSdk;->openAdClose:Z

    return-void
.end method

.method public static openAdQuickDownload(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/swl/gg/sdk/TrAdSdk;->openAdQuickDownload:Z

    return-void
.end method

.method public static openVideoCache_show(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/swl/gg/sdk/TrAdSdk;->openVideoCache_show:Z

    return-void
.end method

.method public static preInit(Landroid/app/Application;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lcom/swl/gg/sdk/TrAdSdk;->mApp:Landroid/app/Application;

    .line 2
    invoke-static {}, Lcom/apk/d50;->do()Lcom/apk/d50;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/d50;->if:Z

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Application \u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resetInit()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/apk/k40;->new:Z

    .line 2
    sput-boolean v0, Lcom/apk/k40;->for:Z

    .line 3
    sput-boolean v0, Lcom/apk/k40;->case:Z

    return-void
.end method

.method public static setDayNightTheme(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setThemeStatus(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->setThemeStatus(I)V

    :goto_0
    return-void
.end method

.method public static setLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog:Z

    return-void
.end method
