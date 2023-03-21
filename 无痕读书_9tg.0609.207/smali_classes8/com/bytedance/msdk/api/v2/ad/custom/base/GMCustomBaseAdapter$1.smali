.class public Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;
.super Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;
.source "GMCustomBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->loadInner(Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

.field public final synthetic package:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

.field public final synthetic private:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->private:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iput-object p3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->package:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
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

    .line 1
    new-instance p2, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;

    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->private:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->getCustomADNName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 4
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 5
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 6
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->g()Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;->finally:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomTTAbsAdLoaderAdapter;->extends:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1$1;-><init>(Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter$1;Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method
