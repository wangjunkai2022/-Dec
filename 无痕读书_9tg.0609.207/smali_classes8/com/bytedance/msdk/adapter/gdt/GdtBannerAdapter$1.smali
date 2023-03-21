.class public Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# instance fields
.field public do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    invoke-direct {p1, v1, v0}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    invoke-virtual {p1}, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;->render()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u6e32\u67d3\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->if:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter;

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtBannerAdapter$TTExpressAd;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method
