.class public Lcom/bytedance/msdk/api/splash/TTSplashAd$1;
.super Ljava/lang/Object;
.source "TTSplashAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/splash/TTSplashAd;->loadAd(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/splash/TTSplashAdLoadCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/AdSlot;

.field public final synthetic for:Lcom/bytedance/msdk/api/splash/TTSplashAdLoadCallback;

.field public final synthetic if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

.field public final synthetic new:I

.field public final synthetic try:Lcom/bytedance/msdk/api/splash/TTSplashAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/splash/TTSplashAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/splash/TTSplashAdLoadCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->try:Lcom/bytedance/msdk/api/splash/TTSplashAd;

    iput-object p2, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->do:Lcom/bytedance/msdk/api/AdSlot;

    iput-object p3, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    iput-object p4, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->for:Lcom/bytedance/msdk/api/splash/TTSplashAdLoadCallback;

    iput p5, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->new:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->try:Lcom/bytedance/msdk/api/splash/TTSplashAd;

    .line 2
    iget-object v1, v0, Lcom/bytedance/msdk/api/splash/TTSplashAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;

    .line 3
    iget-object v2, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->do:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v2}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotSplash(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->if:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    iget-object v5, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->for:Lcom/bytedance/msdk/api/splash/TTSplashAdLoadCallback;

    iget v6, p0, Lcom/bytedance/msdk/api/splash/TTSplashAd$1;->new:I

    invoke-virtual/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/k;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;I)V

    return-void
.end method
