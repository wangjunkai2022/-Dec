.class public Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;
.super Ljava/lang/Object;
.source "GMSplashAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

.field public final synthetic for:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;

.field public final synthetic if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

.field public final synthetic new:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->new:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    iput-object p3, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    iput-object p4, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->for:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->new:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 2
    iget-object v1, v0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->if:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/GMBaseAd;->getAdSlot()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->do:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    iget-object v3, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    iget-object v4, p0, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd$1;->for:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;

    invoke-virtual {v1, v0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V

    return-void
.end method
