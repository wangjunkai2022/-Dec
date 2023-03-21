.class public Lcom/apk/d60;
.super Lcom/apk/p70;
.source "TrInsertAd.java"


# instance fields
.field public final for:Lcom/apk/w60;

.field public final if:Landroid/app/Activity;

.field public new:Lcom/apk/h60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/w60;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/d60;->if:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    .line 4
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/d60;->new:Lcom/apk/h60;

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, v0, Lcom/apk/h60;->if:Lcom/apk/d70;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v3, v1, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 5
    iput-object v2, v1, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 6
    :cond_0
    iput-object v2, v0, Lcom/apk/h60;->if:Lcom/apk/d70;

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/apk/h60;->for:Lcom/apk/b50;

    if-eqz v1, :cond_3

    .line 8
    iget-object v3, v1, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 10
    iput-object v2, v1, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 11
    :cond_2
    iput-object v2, v0, Lcom/apk/h60;->for:Lcom/apk/b50;

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/apk/h60;->new:Lcom/apk/a80;

    if-eqz v1, :cond_5

    .line 13
    iget-object v3, v1, Lcom/apk/a80;->catch:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {v3}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->unregisterConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    .line 14
    iget-object v3, v1, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    if-eqz v3, :cond_4

    .line 15
    iput-object v2, v1, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    .line 16
    :cond_4
    iput-object v2, v0, Lcom/apk/h60;->new:Lcom/apk/a80;

    .line 17
    :cond_5
    iput-object v2, p0, Lcom/apk/d60;->new:Lcom/apk/h60;

    :cond_6
    return-void
.end method

.method public else(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/d60;->new:Lcom/apk/h60;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/apk/h60;->if:Lcom/apk/d70;

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, v1, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, v1, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/apk/h60;->for:Lcom/apk/b50;

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, v1, Lcom/apk/b50;->case:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/apk/h60;->new:Lcom/apk/a80;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, v0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, v0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->showAd(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/d60;->if:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p3, Lcom/apk/h60;

    invoke-direct {p3, p5}, Lcom/apk/h60;-><init>(Z)V

    iput-object p3, p0, Lcom/apk/d60;->new:Lcom/apk/h60;

    .line 9
    iget-object p4, p0, Lcom/apk/d60;->if:Landroid/app/Activity;

    iget-object p5, p0, Lcom/apk/d60;->for:Lcom/apk/w60;

    const-string v0, "gdt"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p3, p5}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 12
    :cond_4
    new-instance v0, Lcom/apk/d70;

    iget-boolean v1, p3, Lcom/apk/h60;->do:Z

    invoke-direct {v0, v1}, Lcom/apk/d70;-><init>(Z)V

    iput-object v0, p3, Lcom/apk/h60;->if:Lcom/apk/d70;

    .line 13
    invoke-virtual {v0, p1}, Lcom/apk/e70;->interface(Ljava/lang/String;)V

    .line 14
    iget-object p3, v0, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz p3, :cond_5

    .line 15
    invoke-virtual {p3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    const/4 p3, 0x0

    .line 16
    iput-object p3, v0, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 17
    :cond_5
    new-instance p3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    new-instance v1, Lcom/apk/c70;

    invoke-direct {v1, v0, p1, p5, p4}, Lcom/apk/c70;-><init>(Lcom/apk/d70;Ljava/lang/String;Lcom/apk/w60;Landroid/app/Activity;)V

    invoke-direct {p3, p4, p2, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object p3, v0, Lcom/apk/d70;->case:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 18
    invoke-virtual {p3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "csj"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p3, p5}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 21
    :cond_7
    new-instance v0, Lcom/apk/b50;

    iget-boolean v1, p3, Lcom/apk/h60;->do:Z

    invoke-direct {v0, v1}, Lcom/apk/b50;-><init>(Z)V

    iput-object v0, p3, Lcom/apk/h60;->for:Lcom/apk/b50;

    .line 22
    invoke-virtual {v0, p1}, Lcom/apk/e70;->interface(Ljava/lang/String;)V

    .line 23
    new-instance p3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 24
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 25
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 26
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    sget-object p3, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 27
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    const/16 p3, 0x280

    const/16 v1, 0x140

    .line 28
    invoke-virtual {p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    sget p3, Lcom/apk/h60$do;->do:I

    int-to-float p3, p3

    .line 29
    invoke-static {p3}, Lcom/apk/r70;->for(F)I

    move-result p3

    int-to-float p3, p3

    sget v1, Lcom/apk/h60$do;->if:I

    int-to-float v1, v1

    .line 30
    invoke-static {v1}, Lcom/apk/r70;->for(F)I

    move-result v1

    int-to-float v1, v1

    .line 31
    invoke-virtual {p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 33
    invoke-static {p4}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p3

    new-instance v1, Lcom/apk/a50;

    invoke-direct {v1, v0, p1, p5, p4}, Lcom/apk/a50;-><init>(Lcom/apk/b50;Ljava/lang/String;Lcom/apk/w60;Landroid/app/Activity;)V

    invoke-interface {p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_0

    :cond_8
    const-string v0, "gm"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {p3, p5}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 36
    :cond_9
    new-instance v0, Lcom/apk/a80;

    iget-boolean v1, p3, Lcom/apk/h60;->do:Z

    invoke-direct {v0, v1}, Lcom/apk/a80;-><init>(Z)V

    iput-object v0, p3, Lcom/apk/h60;->new:Lcom/apk/a80;

    .line 37
    iput-object p4, v0, Lcom/apk/a80;->try:Landroid/app/Activity;

    .line 38
    iput-object p1, v0, Lcom/apk/a80;->case:Ljava/lang/String;

    .line 39
    iput-object p2, v0, Lcom/apk/a80;->else:Ljava/lang/String;

    .line 40
    iput-object p5, v0, Lcom/apk/a80;->goto:Lcom/apk/w60;

    .line 41
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 42
    invoke-virtual {v0}, Lcom/apk/a80;->j()V

    goto :goto_0

    .line 43
    :cond_a
    iget-object p1, v0, Lcom/apk/a80;->catch:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_0

    :cond_b
    const-string p4, "swl"

    .line 44
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 45
    invoke-virtual {p3, p2, p5}, Lcom/apk/t60;->if(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_0

    .line 46
    :cond_c
    invoke-virtual {p3, p5}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    :goto_0
    return-void
.end method
