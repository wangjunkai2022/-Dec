.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g$a;
.super Ljava/lang/Object;
.source "TTLoaderUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/msdk/base/TTBaseAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/base/TTBaseAd;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v2

    const/4 v4, -0x1

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v2

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    return v5

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v2

    cmpl-double p2, v0, v2

    if-nez p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result p1

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/msdk/base/TTBaseAd;

    check-cast p2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g$a;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/base/TTBaseAd;)I

    move-result p1

    return p1
.end method
