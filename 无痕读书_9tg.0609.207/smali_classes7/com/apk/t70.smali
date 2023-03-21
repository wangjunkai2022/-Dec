.class public Lcom/apk/t70;
.super Lcom/apk/f70;
.source "GmProviderBanner.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;


# instance fields
.field public final break:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public case:Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public goto:Lcom/apk/x60;

.field public this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/t70$if;

    invoke-direct {v0, p0}, Lcom/apk/t70$if;-><init>(Lcom/apk/t70;)V

    iput-object v0, p0, Lcom/apk/t70;->break:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/t70;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->private(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;->destroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;-><init>()V

    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setBannerSize(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    sget v1, Lcom/apk/k50$do;->do:I

    int-to-float v1, v1

    .line 7
    invoke-static {v1}, Lcom/apk/r70;->for(F)I

    move-result v1

    sget v2, Lcom/apk/k50$do;->if:I

    int-to-float v2, v2

    .line 8
    invoke-static {v2}, Lcom/apk/r70;->for(F)I

    move-result v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setRefreshTime(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setAllowShowCloseBtn(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    iget-object v2, p0, Lcom/apk/t70;->try:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apk/t70;->else:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    .line 15
    invoke-virtual {v1, p0}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;->setAdBannerListener(Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;)V

    .line 16
    iget-object v1, p0, Lcom/apk/t70;->this:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;

    new-instance v2, Lcom/apk/t70$do;

    invoke-direct {v2, p0}, Lcom/apk/t70$do;-><init>(Lcom/apk/t70;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBanner;Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdLoadCallback;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/t70;->case:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/t70;->goto:Lcom/apk/x60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->break(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/t70;->case:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/t70;->goto:Lcom/apk/x60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->while(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/t70;->case:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/t70;->goto:Lcom/apk/x60;

    invoke-virtual {p0, v0, v1}, Lcom/apk/e70;->switch(Ljava/lang/String;Lcom/apk/x60;)V

    return-void
.end method

.method public onAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/apk/t70;->j()V

    return-void
.end method
