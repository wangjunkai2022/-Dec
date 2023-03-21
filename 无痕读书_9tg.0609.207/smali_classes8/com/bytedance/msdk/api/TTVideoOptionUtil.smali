.class public Lcom/bytedance/msdk/api/TTVideoOptionUtil;
.super Ljava/lang/Object;
.source "TTVideoOptionUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setBrowserType(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->build()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v0

    .line 12
    new-instance v3, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    invoke-direct {v3}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;-><init>()V

    const/4 v4, 0x2

    .line 13
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setGDTExtraOption(I)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setAppSid(Ljava/lang/String;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->build()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    invoke-direct {v3}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;-><init>()V

    .line 19
    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setAdmobAppVolume(F)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setGDTExtraOption(Lcom/bytedance/msdk/api/GDTExtraOption;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setBaiduExtraOption(Lcom/bytedance/msdk/api/BaiduExtraOptions;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->build()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    return-object v0
.end method

.method public static getTTVideoOption2()Lcom/bytedance/msdk/api/TTVideoOption;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTDetailPageMuted(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableDetailPage(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTEnableUserControl(Z)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMaxVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setGDTMinVideoDuration(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 8
    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setFeedExpressType(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setAutoPlayPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setDownAPPConfirmPolicy(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->setBrowserType(I)Lcom/bytedance/msdk/api/GDTExtraOption$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/GDTExtraOption$Builder;->build()Lcom/bytedance/msdk/api/GDTExtraOption;

    move-result-object v0

    .line 12
    new-instance v4, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    invoke-direct {v4}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;-><init>()V

    .line 13
    invoke-virtual {v4, v3}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setGDTExtraOption(I)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setShowDialogOnSkip(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setUseRewardCountdown(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setAppSid(Ljava/lang/String;)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->setCacheVideoOnlyWifi(Z)Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/BaiduExtraOptions$Builder;->build()Lcom/bytedance/msdk/api/BaiduExtraOptions;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    invoke-direct {v3}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;-><init>()V

    .line 19
    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setAdmobAppVolume(F)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setGDTExtraOption(Lcom/bytedance/msdk/api/GDTExtraOption;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setBaiduExtraOption(Lcom/bytedance/msdk/api/BaiduExtraOptions;)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->build()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    return-object v0
.end method

.method public static setFeedTTVideoOptionIfNeed(Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/msdk/api/TTVideoOptionUtil;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)V

    :cond_0
    return-void
.end method

.method public static setFullTTVideoOptionIfNeed(Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/msdk/api/TTVideoOptionUtil;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)V

    :cond_0
    return-void
.end method

.method public static setRewardTTVideoOptionIfNeed(Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getTTVideoOption()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setMuted(Z)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->setAdmobAppVolume(F)Lcom/bytedance/msdk/api/TTVideoOption$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTVideoOption$Builder;->build()Lcom/bytedance/msdk/api/TTVideoOption;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/AdSlot;->setTTVideoOption(Lcom/bytedance/msdk/api/TTVideoOption;)V

    :cond_0
    return-void
.end method
