.class public final Lcom/qq/e/ads/splash/SplashAD;
.super Lcom/qq/e/ads/LiteAbstractAD;
.source ""

# interfaces
.implements Lcom/qq/e/comm/pi/IReward;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/LiteAbstractAD<",
        "Lcom/qq/e/comm/pi/NSPVI;",
        ">;",
        "Lcom/qq/e/comm/pi/IReward;"
    }
.end annotation


# instance fields
.field public volatile g:Landroid/view/ViewGroup;

.field public volatile h:Lcom/qq/e/ads/splash/SplashADListener;

.field public volatile i:Lcom/qq/e/comm/listeners/ADRewardListener;

.field public volatile j:Lcom/qq/e/comm/constants/LoadAdParams;

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:I

.field public volatile o:[B

.field public volatile p:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/e/ads/LiteAbstractAD;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->k:Z

    iput-object p3, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    iput p4, p0, Lcom/qq/e/ads/splash/SplashAD;->q:I

    invoke-virtual {p0, p1, p2}, Lcom/qq/e/ads/AbstractAD;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/e/ads/LiteAbstractAD;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->k:Z

    iput-object p3, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    iput p4, p0, Lcom/qq/e/ads/splash/SplashAD;->q:I

    invoke-virtual {p0, p1, p2, p5}, Lcom/qq/e/ads/AbstractAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;
    .locals 0

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "\u4f20\u5165\u53c2\u6570\u6709\u8bef\uff1a\u4f20\u5165container\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa1

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/AbstractAD;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    if-eqz p2, :cond_1

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchFullScreenAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/qq/e/ads/splash/SplashAD;->m:Z

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->g:Landroid/view/ViewGroup;

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/qq/e/ads/AbstractAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/qq/e/ads/AbstractAD;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/qq/e/ads/splash/SplashAD;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/splash/SplashAD;->l:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string p1, "fetchAdInner"

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/AbstractAD;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->fetchFullScreenAdOnly()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->fetchAdOnly()V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/listeners/ADRewardListener;
    .locals 0

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Lcom/qq/e/comm/listeners/ADRewardListener;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "\u4f20\u5165\u53c2\u6570\u9519\u8bef\uff0ccontainer\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa1

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/AbstractAD;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->g:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    if-eqz p2, :cond_2

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->showFullScreenAd(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->showAd(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/qq/e/comm/pi/POFactory;->getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/qq/e/comm/pi/NSPVI;

    .line 2
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_0
    iget v0, p0, Lcom/qq/e/ads/splash/SplashAD;->n:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qq/e/ads/splash/SplashAD;->n:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setDeveloperLogo(I)V

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->o:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->o:[B

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setDeveloperLogo([B)V

    :cond_2
    iget v0, p0, Lcom/qq/e/ads/splash/SplashAD;->q:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setFetchDelay(I)V

    new-instance v0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashAD$1;)V

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->p:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    instance-of v0, v0, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    check-cast v0, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADZoomOutListener;->isSupportZoomOut()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NSPVI;->setSupportZoomOut(Z)V

    :cond_3
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchFullScreenAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    iput-boolean v1, p0, Lcom/qq/e/ads/splash/SplashAD;->k:Z

    :cond_6
    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->l:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->m:Z

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchFullScreenAdOnly()V

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchAdOnly()V

    :goto_1
    iput-boolean v1, p0, Lcom/qq/e/ads/splash/SplashAD;->l:Z

    :cond_8
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    :cond_0
    return-void
.end method

.method public fetchAdOnly()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Z)V

    return-void
.end method

.method public fetchAndShowIn(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public fetchFullScreenAdOnly()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Z)V

    return-void
.end method

.method public fetchFullScreenAndShowIn(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "getAdNetWorkName"

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AbstractAD;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZoomOutBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getZoomOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "getZoomOutBitmap"

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AbstractAD;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public preLoad()V
    .locals 1

    invoke-virtual {p0}, Lcom/qq/e/ads/AbstractAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/qq/e/ads/AbstractAD;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->k:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    goto :goto_0

    :cond_2
    const-string v0, "preLoad"

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AbstractAD;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAdLogoMargin(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDeveloperLogo(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/qq/e/ads/splash/SplashAD;->n:I

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setDeveloperLogo(I)V

    :goto_0
    return-void
.end method

.method public setDeveloperLogo([B)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->o:[B

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setDeveloperLogo([B)V

    :goto_0
    return-void
.end method

.method public setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    :goto_0
    return-void
.end method

.method public setPreloadView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setRewardListener(Lcom/qq/e/comm/listeners/ADRewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Lcom/qq/e/comm/listeners/ADRewardListener;

    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->p:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public showFullScreenAd(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/splash/SplashAD;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public zoomOutAnimationFinish()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->zoomOutAnimationFinish()V

    goto :goto_0

    :cond_0
    const-string v0, "zoomOutAnimationFinish"

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AbstractAD;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
