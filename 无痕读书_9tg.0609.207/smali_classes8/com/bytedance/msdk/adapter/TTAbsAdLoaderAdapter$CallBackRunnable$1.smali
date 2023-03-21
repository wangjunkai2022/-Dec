.class public Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;
.super Ljava/lang/Object;
.source "TTAbsAdLoaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    .line 2
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCacheSuccess(Z)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 6
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->isServerBidding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    .line 9
    iget-object v1, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->if:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 10
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->mAdSlot:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable$1;->do:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$CallBackRunnable;->else:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    .line 12
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->for:Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;->onAdVideoCache()V

    :cond_1
    return-void
.end method
