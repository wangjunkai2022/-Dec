.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;
.source "TTInterFullVideoAdManager.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/listener/ITTAdapterFullVideoAdListener;


# instance fields
.field public g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

.field public h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;)Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    return-object p0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;Lcom/bytedance/msdk/api/AdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->d(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method private d(Lcom/bytedance/msdk/api/AdError;)V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->B()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    .line 3
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

    return-void
.end method

.method public O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;->onFullVideoAdLoad()V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;->onFullVideoCached()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/Map;)V
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

    .line 14
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;)V

    invoke-super {p0, p1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->a(Landroid/app/Activity;Ljava/util/Map;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$c;)V

    .line 15
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string p2, "\u6ce8\u610f\uff1a\u672a\u8bbe\u7f6eGMFullVideoAdListener\uff0c\u5c06\u6536\u4e0d\u5230\u5e7f\u544a\u64ad\u653e/\u70b9\u51fb/\u5173\u95ed\u7b49\u56de\u8c03\u4fe1\u606f"

    .line 16
    invoke-static {p1, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotFullVideo;Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;)V
    .locals 1
    .param p3    # Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->isV2Request()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mediation_v2_full_video"

    .line 4
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

    .line 7
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz p1, :cond_1

    const/16 p3, 0x8

    .line 8
    invoke-virtual {p1, p3}, Lcom/bytedance/msdk/api/AdSlot;->setAdType(I)V

    .line 9
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/bytedance/msdk/api/AdSlot;->setAdCount(I)V

    .line 10
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1}, Lcom/bytedance/msdk/api/TTVideoOptionUtil;->setFullTTVideoOptionIfNeed(Lcom/bytedance/msdk/api/AdSlot;)V

    .line 11
    :cond_1
    iput-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->I:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 12
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    .line 13
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/e;->S()V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    return-void
.end method

.method public b(Lcom/bytedance/msdk/api/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->g0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdLoadCallback;->onFullVideoLoadFail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    return-void
.end method

.method public onFullVideoAdClick()V
    .locals 8

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pangle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 8
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->f0()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClick()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClick()V

    :cond_3
    move-object v0, v1

    .line 12
    :cond_4
    :goto_1
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_5
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFullVideoAdClosed()V
    .locals 13

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->f0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClosed()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdClosed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFullVideoAdShow()V
    .locals 7

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pangle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->a(Z)V

    .line 5
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const v1, 0x9c7f

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->d(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 11
    :goto_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v2}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onFullVideoAdShow()V

    .line 13
    :cond_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v2, :cond_3

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v4, "show_listen"

    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adSlotId\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v3

    invoke-static {v3}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v4}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->e0()V

    .line 18
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->d(Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 19
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_4
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)V

    return-void
.end method

.method public onFullVideoAdShowFail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->d(Lcom/bytedance/msdk/api/AdError;)V

    return-void
.end method

.method public onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V
    .locals 1
    .param p1    # Lcom/bytedance/msdk/api/reward/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 13

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->f0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onSkippedVideo()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onSkippedVideo()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 13

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/q;->a([Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/goto;->const()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->f0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoComplete()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->h0()V

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoError()V
    .locals 7

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/t;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/goto;->throws()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/g;->h0:Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/fullvideo/GMFullVideoAdListener;->onVideoError()V

    :cond_1
    return-void
.end method
