.class public Lcom/apk/v40;
.super Lcom/apk/h70;
.source "GmProviderReward.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;


# instance fields
.field public break:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public class:Lcom/apk/z60;

.field public const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

.field public final final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public this:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/h70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/v40$if;

    invoke-direct {v0, p0}, Lcom/apk/v40$if;-><init>(Lcom/apk/v40;)V

    iput-object v0, p0, Lcom/apk/v40;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    return-void
.end method


# virtual methods
.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/e70;->else(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->c(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/v40;->o(Landroid/app/Activity;)Z

    return-void
.end method

.method public final n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/e70;->protected(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/h70;->m()V

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;-><init>()V

    .line 4
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setGDTAutoPlayMuted(Z)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    const-string v2, ""

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    invoke-direct {v1, p1, p3}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    .line 16
    new-instance p1, Lcom/apk/v40$do;

    invoke-direct {p1, p0, p2, p4}, Lcom/apk/v40$do;-><init>(Lcom/apk/v40;Ljava/lang/String;Lcom/apk/z60;)V

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotRewardVideo;Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdLoadCallback;)V

    return-void
.end method

.method public final o(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    invoke-virtual {p1, p0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->setRewardAdListener(Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardedAdListener;)V

    .line 3
    iget-object p1, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    iget-object v0, p0, Lcom/apk/v40;->this:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->showRewardAd(Landroid/app/Activity;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V

    return p1
.end method

.method public onRewardClick()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->catch(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .locals 1
    .param p1    # Lcom/bytedance/msdk/api/reward/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/apk/f70;->for:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->a(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardedAdClosed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->import(Ljava/lang/String;Lcom/apk/z60;)V

    .line 3
    iget-object v0, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;->destroy()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/v40;->const:Lcom/bytedance/msdk/api/v2/ad/reward/GMRewardAd;

    :cond_1
    return-void
.end method

.method public onRewardedAdShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h70;->l()V

    .line 3
    iget-object v0, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/v40;->class:Lcom/apk/z60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->volatile(Ljava/lang/String;Lcom/apk/z60;)V

    return-void
.end method

.method public onRewardedAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/apk/f70;->for:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/apk/v40;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;->configLoad()V

    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/v40;->break:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method
