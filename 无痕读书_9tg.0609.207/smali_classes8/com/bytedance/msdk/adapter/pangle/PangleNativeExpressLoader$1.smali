.class public Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;->loadAd(Landroid/content/Context;ZLcom/bytedance/sdk/openadsdk/TTAdNative;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public final synthetic if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->if:Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;

    invoke-direct {v2, v3, v1}, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$PangleNativeExpressAd;-><init>(Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdLoaded(Ljava/util/List;)V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleNativeExpressLoader$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method
