.class public Lcom/apk/y70;
.super Lcom/apk/h70;
.source "GmProviderFullVideo.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;


# instance fields
.field public break:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public class:Lcom/apk/v60;

.field public const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

.field public final final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public this:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/h70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/y70$if;

    invoke-direct {v0, p0}, Lcom/apk/y70$if;-><init>(Lcom/apk/y70;)V

    iput-object v0, p0, Lcom/apk/y70;->final:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    return-void
.end method


# virtual methods
.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/e70;->else(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/y70;->class:Lcom/apk/v60;

    invoke-virtual {p0, p1, v0}, Lcom/apk/e70;->goto(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/y70;->n(Landroid/app/Activity;)Z

    return-void
.end method

.method public final n(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;->setFullVideoAdListener(Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;)V

    .line 3
    iget-object v0, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;->showFullAd(Landroid/app/Activity;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/y70;->class:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V

    return p1
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->instanceof(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/h70;->m()V

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;-><init>()V

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
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUseSurfaceView(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    const-string v2, ""

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setRewardAmount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setOrientation(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    iget-object v2, p0, Lcom/apk/y70;->this:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apk/y70;->catch:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    .line 16
    new-instance v2, Lcom/apk/y70$do;

    invoke-direct {v2, p0}, Lcom/apk/y70$do;-><init>(Lcom/apk/y70;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;)V

    return-void
.end method

.method public onFullVideoAdClick()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/y70;->class:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->super(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onFullVideoAdClosed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/y70;->class:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->return(Ljava/lang/String;Lcom/apk/v60;)V

    .line 3
    iget-object v0, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;->destroy()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/y70;->const:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAd;

    :cond_1
    return-void
.end method

.method public onFullVideoAdShow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/f70;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h70;->l()V

    .line 3
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/y70;->class:Lcom/apk/v60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->transient(Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public onFullVideoAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
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
    invoke-virtual {p0}, Lcom/apk/y70;->o()V

    return-void
.end method

.method public onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/reward/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    iget-object v0, p0, Lcom/apk/y70;->break:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->default(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method
