.class public Lcom/apk/c80;
.super Lcom/apk/k70;
.source "GmProviderRectangle.java"


# instance fields
.field public break:Lcom/apk/x60;

.field public catch:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAd;

.field public final class:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

.field public else:Landroid/app/Activity;

.field public goto:Ljava/lang/String;

.field public this:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/k70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/c80$if;

    invoke-direct {v0, p0}, Lcom/apk/c80$if;-><init>(Lcom/apk/c80;)V

    iput-object v0, p0, Lcom/apk/c80;->class:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    return-void
.end method


# virtual methods
.method public g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c80;->else:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lcom/apk/c80;->goto:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/apk/c80;->this:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/apk/c80;->break:Lcom/apk/x60;

    .line 5
    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->configLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/apk/c80;->k()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/c80;->class:Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->registerConfigCallback(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/c80;->goto:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    invoke-static {v1}, Lcom/apk/r70;->if(F)I

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    .line 4
    invoke-static {v2}, Lcom/apk/r70;->if(F)I

    move-result v2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 5
    new-instance v1, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;-><init>()V

    .line 6
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getGMAdSlotBaiduOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setGMAdSlotBaiduOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotBaiduOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->setNativeAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setGMAdSlotGDTOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/bytedance/msdk/api/v2/slot/GMAdOptionUtil;->getAdmobNativeAdOptions()Lcom/bytedance/msdk/api/AdmobNativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdmobNativeAdOptions(Lcom/bytedance/msdk/api/AdmobNativeAdOptions;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdStyleType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/apk/k70;->j()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/apk/r70;->for(F)I

    move-result v2

    .line 13
    iget v3, p0, Lcom/apk/k70;->case:I

    int-to-float v3, v3

    .line 14
    invoke-static {v3}, Lcom/apk/r70;->for(F)I

    move-result v3

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setImageAdSize(II)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setAdCount(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/apk/f70;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->setDownloadType(I)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative$Builder;->build()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;

    iget-object v2, p0, Lcom/apk/c80;->else:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apk/c80;->this:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    new-instance v2, Lcom/apk/c80$do;

    invoke-direct {v2, p0}, Lcom/apk/c80$do;-><init>(Lcom/apk/c80;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMUnifiedNativeAd;->loadAd(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotNative;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdLoadCallback;)V

    return-void
.end method
