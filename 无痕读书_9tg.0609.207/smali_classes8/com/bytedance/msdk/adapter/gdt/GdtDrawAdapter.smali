.class public Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;
.super Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$GMGdtDrawAd;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GdtDrawAdapter"


# instance fields
.field public finally:Lcom/qq/e/ads/cfg/VideoOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "\u4ee3\u7801\u4f4dID\u4e0d\u5408\u6cd5"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_3

    :cond_0
    new-instance p2, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getAdSlotId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->getGMAdSlotGDTOption()Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMaxVideoDuration()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getGDTMinVideoDuration()I

    move-result v1

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/gdt/GDTAdapterUtils;->getGMVideoOption(Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;->finally:Lcom/qq/e/ads/cfg/VideoOption;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/NativeAbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/paltform/GMAdSlotGDTOption;->getDownAPPConfirmPolicy()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    goto :goto_0

    :cond_2
    :goto_1
    move p1, v0

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-lez v0, :cond_4

    invoke-virtual {p2, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V

    :cond_4
    if-lez p1, :cond_5

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->mGMAdSlotDraw:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotDraw;->getAdCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/msdk/adapter/ad/GMDrawBaseAdapter;->notifyLoadFailBecauseGMAdSlotIsNull()V

    :goto_3
    return-void
.end method
