.class public Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;->do(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 0

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    return-void
.end method

.method public onADExposed()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd$2;->do:Lcom/bytedance/msdk/adapter/gdt/GdtNativeLoader$GdtNativeAd;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTNativeAdListener:Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMNativeAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public onADStatusChanged()V
    .locals 0

    return-void
.end method
