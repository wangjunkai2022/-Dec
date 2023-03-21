.class public Lcom/apk/p50;
.super Lcom/apk/t60;
.source "AdHelperFullVideo.java"


# instance fields
.field public do:Lcom/apk/s60;

.field public for:Lcom/apk/y70;

.field public if:Lcom/apk/y40;

.field public new:Lcom/apk/u70;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/t60;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/p50;->do:Lcom/apk/s60;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/apk/p50;->do:Lcom/apk/s60;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/p50;->if:Lcom/apk/y40;

    if-eqz v0, :cond_1

    .line 4
    iput-object v1, p0, Lcom/apk/p50;->if:Lcom/apk/y40;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/p50;->for:Lcom/apk/y70;

    if-eqz v0, :cond_2

    .line 6
    iput-object v1, p0, Lcom/apk/p50;->for:Lcom/apk/y70;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/p50;->new:Lcom/apk/u70;

    if-eqz v0, :cond_3

    .line 8
    iput-object v1, p0, Lcom/apk/p50;->new:Lcom/apk/u70;

    :cond_3
    return-void
.end method

.method public else(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/apk/k40;->default(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p4}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/s60;

    invoke-direct {v0}, Lcom/apk/s60;-><init>()V

    iput-object v0, p0, Lcom/apk/p50;->do:Lcom/apk/s60;

    .line 4
    iput-object p2, v0, Lcom/apk/s60;->this:Ljava/lang/String;

    .line 5
    iput-object p4, v0, Lcom/apk/s60;->break:Lcom/apk/v60;

    const-wide/16 v4, 0x1770

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v7, p4

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/apk/e70;->instanceof(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/apk/h70;->m()V

    .line 9
    new-instance v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    new-instance v3, Lcom/apk/q60;

    invoke-direct {v3, v0, p2, p4}, Lcom/apk/q60;-><init>(Lcom/apk/s60;Ljava/lang/String;Lcom/apk/v60;)V

    invoke-direct {v2, p1, p3, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v2, v0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 10
    new-instance p1, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p1, p3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 15
    iget-object p1, v0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    new-instance p3, Lcom/apk/r60;

    invoke-direct {p3, v0, p2, p4}, Lcom/apk/r60;-><init>(Lcom/apk/s60;Ljava/lang/String;Lcom/apk/v60;)V

    invoke-virtual {p1, p3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 16
    iget-object p1, v0, Lcom/apk/s60;->catch:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V

    goto/16 :goto_0

    .line 17
    :cond_1
    invoke-static {p2}, Lcom/apk/k40;->class(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p0, p4}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 19
    :cond_2
    new-instance v0, Lcom/apk/y40;

    invoke-direct {v0}, Lcom/apk/y40;-><init>()V

    iput-object v0, p0, Lcom/apk/p50;->if:Lcom/apk/y40;

    .line 20
    iput-object p2, v0, Lcom/apk/y40;->this:Ljava/lang/String;

    .line 21
    iput-object p4, v0, Lcom/apk/y40;->break:Lcom/apk/v60;

    const-wide/16 v4, 0x1770

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v7, p4

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/apk/e70;->instanceof(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/apk/h70;->m()V

    .line 25
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 26
    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 27
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 28
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 29
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 30
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 31
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 32
    invoke-virtual {p3, v1, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 33
    invoke-static {p1}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p3

    new-instance v1, Lcom/apk/x40;

    invoke-direct {v1, v0, p2, p4}, Lcom/apk/x40;-><init>(Lcom/apk/y40;Ljava/lang/String;Lcom/apk/v60;)V

    invoke-interface {p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "gm_qpsp"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {p0, p4}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 36
    :cond_4
    new-instance v0, Lcom/apk/y70;

    invoke-direct {v0}, Lcom/apk/y70;-><init>()V

    iput-object v0, p0, Lcom/apk/p50;->for:Lcom/apk/y70;

    .line 37
    iput-object p1, v0, Lcom/apk/y70;->this:Landroid/app/Activity;

    .line 38
    iput-object p2, v0, Lcom/apk/y70;->break:Ljava/lang/String;

    .line 39
    iput-object p3, v0, Lcom/apk/y70;->catch:Ljava/lang/String;

    .line 40
    iput-object p4, v0, Lcom/apk/y70;->class:Lcom/apk/v60;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p4

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 42
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {v0}, Lcom/apk/y70;->o()V

    goto :goto_0

    .line 44
    :cond_5
    iget-object p1, v0, Lcom/apk/y70;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_0

    :cond_6
    const-string v0, "gm_cqpsp"

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    invoke-virtual {p0, p4}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 47
    :cond_7
    new-instance v0, Lcom/apk/u70;

    invoke-direct {v0}, Lcom/apk/u70;-><init>()V

    iput-object v0, p0, Lcom/apk/p50;->new:Lcom/apk/u70;

    .line 48
    iput-object p1, v0, Lcom/apk/u70;->this:Landroid/app/Activity;

    .line 49
    iput-object p2, v0, Lcom/apk/u70;->break:Ljava/lang/String;

    .line 50
    iput-object p3, v0, Lcom/apk/u70;->catch:Ljava/lang/String;

    .line 51
    iput-object p4, v0, Lcom/apk/u70;->class:Lcom/apk/v60;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p4

    .line 52
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 53
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 54
    invoke-virtual {v0}, Lcom/apk/u70;->o()V

    goto :goto_0

    .line 55
    :cond_8
    iget-object p1, v0, Lcom/apk/u70;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_0

    .line 56
    :cond_9
    invoke-virtual {p0, p4}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    :goto_0
    return-void
.end method

.method public goto(Landroid/app/Activity;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/p50;->do:Lcom/apk/s60;

    const/4 v1, 0x0

    const-string v2, "\u68c0\u6d4bshow\u7684\u65f6\u5019\u5e94\u7528\u5904\u4e8e\u540e\u53f0"

    const-string v3, "show\u7684\u65f6\u5019\u5e94\u7528\u5904\u4e8e\u524d\u53f0-\u6b63\u5e38\u6267\u884cshow"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v5, v0, Lcom/apk/h70;->case:Z

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 4
    iput-boolean v4, v0, Lcom/apk/h70;->else:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/apk/s60;->n(Landroid/app/Activity;)Z

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/apk/p50;->do:Lcom/apk/s60;

    return v4

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/p50;->if:Lcom/apk/y40;

    if-eqz v0, :cond_3

    .line 9
    iget-boolean v5, v0, Lcom/apk/h70;->case:Z

    if-eqz v5, :cond_2

    .line 10
    invoke-static {v2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 11
    iput-boolean v4, v0, Lcom/apk/h70;->else:Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/apk/y40;->n(Landroid/app/Activity;)Z

    .line 14
    :goto_1
    iput-object v1, p0, Lcom/apk/p50;->if:Lcom/apk/y40;

    return v4

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/apk/p50;->for:Lcom/apk/y70;

    if-eqz v0, :cond_5

    .line 16
    iget-boolean v5, v0, Lcom/apk/h70;->case:Z

    if-eqz v5, :cond_4

    .line 17
    invoke-static {v2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 18
    iput-boolean v4, v0, Lcom/apk/h70;->else:Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/apk/y70;->n(Landroid/app/Activity;)Z

    .line 21
    :goto_2
    iput-object v1, p0, Lcom/apk/p50;->for:Lcom/apk/y70;

    return v4

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/apk/p50;->new:Lcom/apk/u70;

    if-eqz v0, :cond_7

    .line 23
    iget-boolean v5, v0, Lcom/apk/h70;->case:Z

    if-eqz v5, :cond_6

    .line 24
    invoke-static {v2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 25
    iput-boolean v4, v0, Lcom/apk/h70;->else:Z

    goto :goto_3

    .line 26
    :cond_6
    invoke-static {v3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/apk/u70;->n(Landroid/app/Activity;)Z

    .line 28
    :goto_3
    iput-object v1, p0, Lcom/apk/p50;->new:Lcom/apk/u70;

    return v4

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
