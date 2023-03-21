.class public Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;
    }
.end annotation


# instance fields
.field public abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

.field public continue:Z

.field public extends:Landroid/content/Context;

.field public finally:I

.field public package:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

.field public private:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->private:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getSplashShakeButton()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->continue:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "shakable"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setExtraUserData(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_4

    const-string p1, "ad_load_timeout"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    :goto_0
    iput p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->finally:I

    const-string p1, "tt_ad_network_config_appid"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->extends:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    new-instance p2, Lcom/bytedance/msdk/adapter/SplashDismissController;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/adapter/SplashDismissController;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->mGMAdSlotSplash:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->isSplashPreLoad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->private:Z

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->package:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->loadAd()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMSplashBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_4
    :goto_1
    return-void
.end method
