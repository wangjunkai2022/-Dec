.class public Lcom/apk/z40;
.super Lcom/apk/f70;
.source "GmProviderSplash.java"


# instance fields
.field public break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

.field public case:Ljava/lang/String;

.field public catch:Z

.field public class:Z

.field public final const:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public else:Ljava/lang/String;

.field public goto:Landroid/view/ViewGroup;

.field public this:Lcom/apk/a70;

.field public try:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/z40$for;

    invoke-direct {v0, p0}, Lcom/apk/z40$for;-><init>(Lcom/apk/z40;)V

    iput-object v0, p0, Lcom/apk/z40;->const:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    return-void
.end method


# virtual methods
.method public final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/apk/a70;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/apk/z40;->try:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lcom/apk/z40;->case:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/apk/z40;->else:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/apk/z40;->goto:Landroid/view/ViewGroup;

    .line 5
    iput-object p5, p0, Lcom/apk/z40;->this:Lcom/apk/a70;

    .line 6
    iput-boolean p6, p0, Lcom/apk/z40;->catch:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/apk/z40;->class:Z

    const-wide/16 v2, 0x1770

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V

    const-string p2, "AD_REQUEST_GROMORE_CONFIG_KEY"

    .line 9
    invoke-static {p2, p1}, Lcom/apk/g50;->for(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/apk/z40;->const:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/z40;->k()V

    :goto_1
    return-void
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/z40;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->abstract(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setSplashPreLoad(Z)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    sget v1, Lcom/apk/n60$do;->if:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setTimeOut(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setSplashButtonType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    move-result-object v0

    .line 7
    sget v1, Lcom/apk/n60$do;->for:I

    sget v2, Lcom/apk/n60$do;->new:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;

    const/4 v1, 0x0

    .line 8
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getTrAdSdkLoader()Lcom/apk/u60;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    check-cast v2, Lcom/apk/z;

    invoke-virtual {v2}, Lcom/apk/z;->if()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SP_AD_GM_DD_OPEN_CSJ_ID_KEY"

    const-string v5, ""

    .line 10
    invoke-static {v4, v5}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 12
    new-instance v1, Lcom/bytedance/msdk/adapter/pangle/PangleNetworkRequestInfo;

    invoke-direct {v1, v3, v4}, Lcom/bytedance/msdk/adapter/pangle/PangleNetworkRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/apk/z;->for()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SP_AD_GM_DD_OPEN_GDT_ID_KEY"

    .line 14
    invoke-static {v3, v5}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtNetworkRequestInfo;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/adapter/gdt/GdtNetworkRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    :goto_0
    new-instance v2, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    iget-object v3, p0, Lcom/apk/z40;->try:Landroid/app/Activity;

    iget-object v4, p0, Lcom/apk/z40;->else:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    .line 18
    new-instance v3, Lcom/apk/z40$do;

    invoke-direct {v3, p0}, Lcom/apk/z40$do;-><init>(Lcom/apk/z40;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->setAdSplashListener(Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;)V

    .line 19
    iget-object v2, p0, Lcom/apk/z40;->break:Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;

    move-result-object v0

    new-instance v3, Lcom/apk/z40$if;

    invoke-direct {v3, p0}, Lcom/apk/z40$if;-><init>(Lcom/apk/z40;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotSplash;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdLoadCallback;)V

    return-void
.end method
