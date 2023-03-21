.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;

    instance-of v1, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;->closeAd()V

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    :cond_2
    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 1
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 5
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/qq/e/ads/nativ/NativeExpressADView;->getBoundData()Lcom/qq/e/comm/pi/AdData;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;

    iget-object v4, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    invoke-direct {v3, v4, v2}, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$TTExpressAd;-><init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    .line 1
    sget-object v4, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    .line 2
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 3
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 4
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 5
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 6
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 7
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 8
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 2
    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;

    .line 3
    iget-object p1, p1, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->case:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 4
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;

    if-eqz v0, :cond_0

    const v1, -0x1869f

    const-string v2, "\u6e32\u67d3\u5931\u8d25"

    invoke-interface {v0, p1, v2, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeExpressLoader;->this:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/adapter/listener/ITTAdapterNativeExpressAdListener;

    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    invoke-interface {p1, v0, v1}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeExpressAdListener;->onRenderSuccess(FF)V

    :cond_0
    return-void
.end method
