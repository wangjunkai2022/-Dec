.class public Lcom/apk/a60;
.super Lcom/apk/p70;
.source "TrBannerAd.java"


# instance fields
.field public final for:Lcom/apk/x60;

.field public final if:Landroid/app/Activity;

.field public new:Lcom/apk/k50;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/a60;->if:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    .line 4
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/a60;->new:Lcom/apk/k50;

    if-eqz v0, :cond_7

    .line 2
    iget-object v1, v0, Lcom/apk/k50;->if:Lcom/apk/l60;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/apk/l60;->j()V

    .line 4
    iput-object v2, v0, Lcom/apk/k50;->if:Lcom/apk/l60;

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/apk/k50;->for:Lcom/apk/d80;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/apk/d80;->j()V

    .line 7
    iput-object v2, v0, Lcom/apk/k50;->for:Lcom/apk/d80;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/apk/k50;->new:Lcom/apk/t70;

    if-eqz v1, :cond_3

    .line 9
    iget-object v3, v1, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;->destroy()V

    .line 11
    iput-object v2, v1, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    .line 12
    :cond_2
    iput-object v2, v0, Lcom/apk/k50;->new:Lcom/apk/t70;

    .line 13
    :cond_3
    iget-object v1, v0, Lcom/apk/k50;->try:Lcom/apk/p60;

    if-eqz v1, :cond_6

    .line 14
    iget-object v3, v1, Lcom/apk/p60;->case:Lcom/apk/w50;

    if-eqz v3, :cond_5

    .line 15
    iget-object v4, v3, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v4}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    .line 17
    iput-object v2, v3, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 18
    :cond_4
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 19
    iput-object v2, v1, Lcom/apk/p60;->case:Lcom/apk/w50;

    .line 20
    :cond_5
    iput-object v2, v0, Lcom/apk/k50;->try:Lcom/apk/p60;

    .line 21
    :cond_6
    iget-object v1, v0, Lcom/apk/k50;->case:Lcom/apk/u40;

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1}, Lcom/apk/u40;->j()V

    .line 23
    iput-object v2, v0, Lcom/apk/k50;->case:Lcom/apk/u40;

    :cond_7
    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/a60;->if:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p3, Lcom/apk/k50;

    invoke-direct {p3}, Lcom/apk/k50;-><init>()V

    iput-object p3, p0, Lcom/apk/a60;->new:Lcom/apk/k50;

    .line 9
    iget-object p4, p0, Lcom/apk/a60;->if:Landroid/app/Activity;

    iget-object v0, p0, Lcom/apk/a60;->for:Lcom/apk/x60;

    .line 10
    invoke-static {p1}, Lcom/apk/k40;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 12
    :cond_4
    new-instance v1, Lcom/apk/l60;

    invoke-direct {v1}, Lcom/apk/l60;-><init>()V

    iput-object v1, p3, Lcom/apk/k50;->if:Lcom/apk/l60;

    .line 13
    invoke-virtual {v1, p1}, Lcom/apk/e70;->private(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/apk/l60;->j()V

    .line 15
    new-instance p3, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    new-instance v2, Lcom/apk/k60;

    invoke-direct {v2, v1, p1, v0}, Lcom/apk/k60;-><init>(Lcom/apk/l60;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {p3, p4, p2, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    iput-object p3, v1, Lcom/apk/l60;->try:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p3, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    .line 17
    iget-object p1, v1, Lcom/apk/l60;->try:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    goto/16 :goto_0

    :cond_5
    const-string v1, "csj"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p3, v0}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 20
    :cond_6
    new-instance v1, Lcom/apk/d80;

    invoke-direct {v1}, Lcom/apk/d80;-><init>()V

    iput-object v1, p3, Lcom/apk/k50;->for:Lcom/apk/d80;

    .line 21
    invoke-virtual {v1, p1}, Lcom/apk/e70;->private(Ljava/lang/String;)V

    .line 22
    new-instance p3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 23
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 24
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 25
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    sget p3, Lcom/apk/k50$do;->do:I

    int-to-float p3, p3

    .line 26
    invoke-static {p3}, Lcom/apk/r70;->for(F)I

    move-result p3

    int-to-float p3, p3

    sget v2, Lcom/apk/k50$do;->if:I

    int-to-float v2, v2

    .line 27
    invoke-static {v2}, Lcom/apk/r70;->for(F)I

    move-result v2

    int-to-float v2, v2

    .line 28
    invoke-virtual {p2, p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    sget p3, Lcom/apk/k50$do;->do:I

    sget v2, Lcom/apk/k50$do;->if:I

    .line 29
    invoke-virtual {p2, p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 31
    invoke-static {p4}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p3

    new-instance v2, Lcom/apk/b80;

    invoke-direct {v2, v1, p1, v0, p4}, Lcom/apk/b80;-><init>(Lcom/apk/d80;Ljava/lang/String;Lcom/apk/x60;Landroid/app/Activity;)V

    invoke-interface {p3, p2, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "gm"

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    invoke-virtual {p3, v0}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 34
    :cond_8
    new-instance v1, Lcom/apk/t70;

    invoke-direct {v1}, Lcom/apk/t70;-><init>()V

    iput-object v1, p3, Lcom/apk/k50;->new:Lcom/apk/t70;

    .line 35
    iput-object p4, v1, Lcom/apk/t70;->try:Landroid/app/Activity;

    .line 36
    iput-object p1, v1, Lcom/apk/t70;->case:Ljava/lang/String;

    .line 37
    iput-object p2, v1, Lcom/apk/t70;->else:Ljava/lang/String;

    .line 38
    iput-object v0, v1, Lcom/apk/t70;->goto:Lcom/apk/x60;

    .line 39
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    invoke-virtual {v1}, Lcom/apk/t70;->j()V

    goto/16 :goto_0

    .line 41
    :cond_9
    iget-object p1, v1, Lcom/apk/t70;->break:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "gdt_banner_list"

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 44
    :cond_b
    new-instance v1, Lcom/apk/p60;

    invoke-direct {v1}, Lcom/apk/p60;-><init>()V

    iput-object v1, p3, Lcom/apk/k50;->try:Lcom/apk/p60;

    .line 45
    iget-boolean v2, p3, Lcom/apk/k50;->do:Z

    .line 46
    iput-boolean v2, v1, Lcom/apk/p60;->try:Z

    .line 47
    iget-object v1, v1, Lcom/apk/p60;->case:Lcom/apk/w50;

    if-eqz v1, :cond_c

    .line 48
    invoke-virtual {v1, v2}, Lcom/apk/w50;->setThemeDayNight(Z)V

    .line 49
    :cond_c
    iget-object p3, p3, Lcom/apk/k50;->try:Lcom/apk/p60;

    .line 50
    invoke-virtual {p3, p1}, Lcom/apk/e70;->private(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/apk/w50;

    new-instance v2, Lcom/apk/o60;

    invoke-direct {v2, p3, p1, v0}, Lcom/apk/o60;-><init>(Lcom/apk/p60;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {v1, p4, v2}, Lcom/apk/w50;-><init>(Landroid/content/Context;Lcom/apk/x60;)V

    iput-object v1, p3, Lcom/apk/p60;->case:Lcom/apk/w50;

    .line 52
    iget-boolean p1, p3, Lcom/apk/p60;->try:Z

    invoke-virtual {v1, p1}, Lcom/apk/w50;->setThemeDayNight(Z)V

    .line 53
    iget-object p1, p3, Lcom/apk/p60;->case:Lcom/apk/w50;

    invoke-virtual {p1, p2}, Lcom/apk/t50;->do(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string v1, "csj_banner_list"

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 55
    invoke-virtual {p3, v0}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    .line 56
    :cond_e
    new-instance v1, Lcom/apk/u40;

    invoke-direct {v1}, Lcom/apk/u40;-><init>()V

    iput-object v1, p3, Lcom/apk/k50;->case:Lcom/apk/u40;

    .line 57
    invoke-virtual {v1, p1}, Lcom/apk/e70;->private(Ljava/lang/String;)V

    .line 58
    new-instance p3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 59
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    sget p3, Lcom/apk/k50$do;->do:I

    int-to-float p3, p3

    .line 62
    invoke-static {p3}, Lcom/apk/r70;->for(F)I

    move-result p3

    int-to-float p3, p3

    sget v2, Lcom/apk/k50$do;->if:I

    int-to-float v2, v2

    .line 63
    invoke-static {v2}, Lcom/apk/r70;->for(F)I

    move-result v2

    int-to-float v2, v2

    .line 64
    invoke-virtual {p2, p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 65
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 66
    invoke-static {p4}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p3

    new-instance v2, Lcom/apk/t40;

    invoke-direct {v2, v1, p1, v0, p4}, Lcom/apk/t40;-><init>(Lcom/apk/u40;Ljava/lang/String;Lcom/apk/x60;Landroid/app/Activity;)V

    invoke-interface {p3, p2, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_0

    :cond_f
    const-string p4, "swl"

    .line 67
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 68
    invoke-virtual {p3, p2, v0}, Lcom/apk/t60;->if(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_0

    .line 69
    :cond_10
    invoke-virtual {p3, v0}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    :goto_0
    return-void
.end method
