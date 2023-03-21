.class public Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PangleInterstitialAdapter"


# instance fields
.field public extends:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

.field public finally:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
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

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->mGMAdSlotInterstitial:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;->finally:Landroid/content/Context;

    if-eqz p2, :cond_1

    new-instance p1, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter;->extends:Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/pangle/PangleInterstitialAdapter$PangleExpressInterstitialAd;->loadAd()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMInterstitialBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :cond_1
    :goto_0
    return-void
.end method
