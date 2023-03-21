.class public Lcom/bytedance/msdk/api/v2/ad/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertGMAdSlotBase2AdSlot(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)Lcom/bytedance/msdk/api/AdSlot;
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    new-instance v1, Lcom/bytedance/msdk/api/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->isBidNotify()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTestSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 4
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    if-eqz v2, :cond_0

    .line 5
    move-object v2, p0

    check-cast v2, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->isSplashPreLoad()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->createTTVideoOption(Z)Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->createTTVideoOption(Z)Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getTTRequestExtraParams()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setTTRequestExtraParams(Lcom/bytedance/msdk/api/TTRequestExtraParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getDownloadType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 10
    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setV2Request(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_1
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    if-eqz v2, :cond_2

    .line 12
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getCustomData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;->getOrientation()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/4 v1, 0x7

    .line 19
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 21
    :cond_2
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    if-eqz v2, :cond_3

    .line 22
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 28
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/16 v1, 0x8

    .line 29
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 31
    :cond_3
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    if-eqz v2, :cond_4

    .line 32
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;->getCustomData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 39
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/16 v1, 0xa

    .line 40
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 42
    :cond_4
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    .line 43
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getSplashButtonType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSplashButtonType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->isForceLoadBottom()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setForceLoadBottom(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;->getSplashShakeButton()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setSplashShakeButton(Z)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 49
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 52
    :cond_5
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    if-eqz v2, :cond_9

    .line 53
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdStyleType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdStyleType(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setGdtNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 61
    :cond_6
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/4 v1, 0x5

    .line 62
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 64
    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    goto :goto_2

    .line 65
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v1

    if-ge v1, v0, :cond_8

    .line 66
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    :cond_8
    :goto_2
    return-object p0

    .line 67
    :cond_9
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    if-eqz v2, :cond_c

    .line 68
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getAdCount()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 71
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/16 v1, 0x9

    .line 72
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v1

    if-le v1, v3, :cond_a

    .line 74
    invoke-virtual {p0, v3}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    goto :goto_3

    .line 75
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v1

    if-ge v1, v0, :cond_b

    .line 76
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    :cond_b
    :goto_3
    return-object p0

    .line 77
    :cond_c
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    if-eqz v2, :cond_d

    .line 78
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;->getBannerSize()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setBannerSize(I)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 81
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 84
    :cond_d
    instance-of v2, p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    if-eqz v2, :cond_e

    .line 85
    check-cast p0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/msdk/api/AdSlot$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/AdSlot$Builder;

    .line 87
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    const/4 v1, 0x2

    .line 88
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    return-object p0

    .line 90
    :cond_e
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot$Builder;->build()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p0

    return-object p0
.end method

.method public static covertAdSlot2GMAdSlotBase(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotFullVideo(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotRewardVideo(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotInterstitialFull(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    move-result-object p0

    return-object p0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotNative(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    move-result-object p0

    return-object p0

    .line 6
    :cond_4
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotSplash(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    move-result-object p0

    return-object p0

    .line 7
    :cond_5
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotInterstitial(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    move-result-object p0

    return-object p0

    .line 8
    :cond_6
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotBanner(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    move-result-object p0

    return-object p0
.end method

.method public static getAdSlotBanner(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getBannerSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setBannerSize(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotFullVideo(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;
    .locals 4

    if-eqz p0, :cond_4

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotInterstitial(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotInterstitialFull(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;
    .locals 4

    if-eqz p0, :cond_4

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitialFull;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotNative(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getGdtNativeAdLogoParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    .line 14
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdStyleType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotRewardVideo(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;
    .locals 4

    if-eqz p0, :cond_4

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getCustomData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setCustomData(Ljava/util/Map;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAdSlotSplash(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashButtonType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setSplashButtonType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isBidNotify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setBidNotify(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setTestSlotId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getSplashShakeButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setSplashShakeButton(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->isForceLoadBottom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setForceLoadBottom(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTVideoOption;->isMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTVideoOption;->getAdmobAppVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTVideoOption;->useSurfaceView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTVideoOption;->getGDTExtraOption()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/GDTExtraOption;->getGMGDTExtraOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/GDTExtraOption;->isSplashPreLoad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setSplashPreLoad(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTVideoOption;->getBaiduExtraOption()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/BaiduExtraOptions;->getGMBaiduExtra()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
