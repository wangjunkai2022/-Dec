.class public Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v2, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$GMGdtDrawAd;

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    .line 1
    iget-object v4, v3, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;->finally:Lcom/qq/e/ads/cfg/VideoOption;

    .line 2
    invoke-direct {v2, v1, v3, v4}, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$GMGdtDrawAd;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;Lcom/qq/e/ads/cfg/VideoOption;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_1
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtDrawAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdError;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method
