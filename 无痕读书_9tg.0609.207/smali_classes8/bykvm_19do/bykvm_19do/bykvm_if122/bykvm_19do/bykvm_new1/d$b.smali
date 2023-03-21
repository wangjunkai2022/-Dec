.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;
.super Ljava/lang/Object;
.source "TTAdHeaderBidingManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;->a(Lcom/bytedance/msdk/base/TTBaseAd;Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/msdk/base/TTBaseAd;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;Lcom/bytedance/msdk/base/TTBaseAd;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->b:Landroid/app/Activity;

    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iput-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setHasShown(Z)V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->I:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setTTAdatperCallback(Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->J:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setTTAdatperRewardPlayAgainCallback(Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;)V

    .line 6
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->canAdReuse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v3, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v3, "show"

    invoke-static {v2, v3}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v2

    invoke-static {v2}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",slotId\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 10
    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",slotType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 11
    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isReady()\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v3, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u662f\u5426\u4e3a\u7f13\u5b58\u5e7f\u544a:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    .line 13
    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->b:Landroid/app/Activity;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->c:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/msdk/base/TTBaseAd;->showAd(Landroid/app/Activity;Ljava/util/Map;)V

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v3, v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->j(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v3, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iput-boolean v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->L:Z

    .line 18
    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Ljava/util/List;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/d;

    iget-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;)V

    :cond_2
    return-void
.end method
