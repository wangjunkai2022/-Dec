.class public Lcom/apk/a80;
.super Lcom/apk/f70;
.source "GmProviderInsert.java"


# instance fields
.field public break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

.field public case:Ljava/lang/String;

.field public final catch:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public else:Ljava/lang/String;

.field public goto:Lcom/apk/w60;

.field public final this:Z

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/a80$if;

    invoke-direct {v0, p0}, Lcom/apk/a80$if;-><init>(Lcom/apk/a80;)V

    iput-object v0, p0, Lcom/apk/a80;->catch:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    .line 3
    iput-boolean p1, p0, Lcom/apk/a80;->this:Z

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/a80;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->interface(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getGMAdSlotBaiduOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    const/16 v1, 0x258

    .line 5
    invoke-virtual {v0, v1, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setVolume(F)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    iget-object v2, p0, Lcom/apk/a80;->try:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apk/a80;->else:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/apk/a80;->break:Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;

    .line 10
    new-instance v2, Lcom/apk/a80$do;

    invoke-direct {v2, p0}, Lcom/apk/a80$do;-><init>(Lcom/apk/a80;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotInterstitial;Lcom/bytedance/msdk/api/v2/ad/interstitial/GMInterstitialAdLoadCallback;)V

    return-void
.end method
