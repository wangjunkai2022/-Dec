.class public Lcom/apk/m60;
.super Lcom/apk/t60;
.source "AdHelperReward.java"


# instance fields
.field public do:Lcom/apk/m70;

.field public for:Lcom/apk/v40;

.field public if:Lcom/apk/i50;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/t60;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/apk/k40;->abstract(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p4}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/m70;

    invoke-direct {v0}, Lcom/apk/m70;-><init>()V

    iput-object v0, p0, Lcom/apk/m60;->do:Lcom/apk/m70;

    .line 4
    iput-object p2, v0, Lcom/apk/m70;->this:Ljava/lang/String;

    .line 5
    iput-object p4, v0, Lcom/apk/m70;->break:Lcom/apk/z60;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/apk/e70;->protected(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/apk/h70;->m()V

    .line 9
    new-instance v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    new-instance v2, Lcom/apk/l70;

    invoke-direct {v2, v0, p2, p4}, Lcom/apk/l70;-><init>(Lcom/apk/m70;Ljava/lang/String;Lcom/apk/z60;)V

    invoke-direct {v1, p1, p3, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V

    iput-object v1, v0, Lcom/apk/m70;->catch:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 10
    invoke-virtual {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-static {p2}, Lcom/apk/k40;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0, p4}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 13
    :cond_2
    new-instance v0, Lcom/apk/i50;

    invoke-direct {v0}, Lcom/apk/i50;-><init>()V

    iput-object v0, p0, Lcom/apk/m60;->if:Lcom/apk/i50;

    .line 14
    iput-object p2, v0, Lcom/apk/i50;->this:Ljava/lang/String;

    .line 15
    iput-object p4, v0, Lcom/apk/i50;->catch:Lcom/apk/z60;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p4

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 17
    invoke-virtual {v0, p2}, Lcom/apk/e70;->protected(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/apk/h70;->m()V

    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 20
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 22
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 23
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    sget-object v2, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 24
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 25
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 26
    invoke-virtual {p3, v1, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 27
    invoke-static {p1}, Lcom/apk/k40;->new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p3

    new-instance v1, Lcom/apk/h50;

    invoke-direct {v1, v0, p2, p4}, Lcom/apk/h50;-><init>(Lcom/apk/i50;Ljava/lang/String;Lcom/apk/z60;)V

    invoke-interface {p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    goto :goto_0

    :cond_3
    const-string v0, "gm_jlsp"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {p0, p4}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 30
    :cond_4
    new-instance v0, Lcom/apk/v40;

    invoke-direct {v0}, Lcom/apk/v40;-><init>()V

    iput-object v0, p0, Lcom/apk/m60;->for:Lcom/apk/v40;

    .line 31
    iput-object p1, v0, Lcom/apk/v40;->this:Landroid/app/Activity;

    .line 32
    iput-object p2, v0, Lcom/apk/v40;->break:Ljava/lang/String;

    .line 33
    iput-object p3, v0, Lcom/apk/v40;->catch:Ljava/lang/String;

    .line 34
    iput-object p4, v0, Lcom/apk/v40;->class:Lcom/apk/z60;

    const-wide/16 v3, 0x1770

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v6, p4

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    .line 36
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apk/v40;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    goto :goto_0

    .line 38
    :cond_5
    iget-object p1, v0, Lcom/apk/v40;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_0

    .line 39
    :cond_6
    invoke-virtual {p0, p4}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    :goto_0
    return-void
.end method

.method public else(Landroid/app/Activity;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/m60;->do:Lcom/apk/m70;

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
    invoke-virtual {v0, p1}, Lcom/apk/m70;->n(Landroid/app/Activity;)Z

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/apk/m60;->do:Lcom/apk/m70;

    return v4

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/m60;->if:Lcom/apk/i50;

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
    invoke-virtual {v0, p1}, Lcom/apk/i50;->n(Landroid/app/Activity;)Z

    .line 14
    :goto_1
    iput-object v1, p0, Lcom/apk/m60;->if:Lcom/apk/i50;

    return v4

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/apk/m60;->for:Lcom/apk/v40;

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
    invoke-virtual {v0, p1}, Lcom/apk/v40;->o(Landroid/app/Activity;)Z

    .line 21
    :goto_2
    iput-object v1, p0, Lcom/apk/m60;->for:Lcom/apk/v40;

    return v4

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
