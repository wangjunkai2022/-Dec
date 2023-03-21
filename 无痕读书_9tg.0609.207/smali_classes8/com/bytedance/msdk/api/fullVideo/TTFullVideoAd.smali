.class public Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;
.super Ljava/lang/Object;
.source "TTFullVideoAd.java"

# interfaces
.implements Lcom/bytedance/msdk/api/base/TTLoadBase;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->B()V

    :cond_0
    return-void
.end method

.method public getAdLoadInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAdNetworkPlatformId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->E()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public getAdNetworkRitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBestEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreEcpm()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowEcpm()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->J()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->g0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadFullAd(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdLoadCallback;)V
    .locals 3
    .param p2    # Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c5f

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;->onFullVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->y()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c65

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;->onFullVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->getAdSlotFullVideo(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;)V

    :cond_3
    return-void
.end method

.method public setFullVideoAdListener(Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;)V

    :cond_0
    return-void
.end method

.method public showFullAd(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public showFullAd(Landroid/app/Activity;Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->showFullAd(Landroid/app/Activity;Ljava/util/Map;Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdListener;)V

    return-void
.end method

.method public showFullAd(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public showFullAd(Landroid/app/Activity;Ljava/util/Map;Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Lcom/bytedance/msdk/api/TTAdConstant$GroMoreExtraKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAdListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;)V

    .line 6
    iget-object p3, p0, Lcom/bytedance/msdk/api/fullVideo/TTFullVideoAd;->do:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;

    invoke-virtual {p3, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->a(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
