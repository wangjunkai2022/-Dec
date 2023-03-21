.class public Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;
.super Ljava/lang/Object;
.source "TTAbsAdLoaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->loadAdInter(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

.field public final synthetic if:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iput-object p2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->do:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->if:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->do:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->if:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$1;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "\u4e3b\u7ebf\u7a0bADN\u8bf7\u6c42\u5e7f\u544a\u5d29\u6e83"

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->notifyAdFailed(Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    return-void
.end method
