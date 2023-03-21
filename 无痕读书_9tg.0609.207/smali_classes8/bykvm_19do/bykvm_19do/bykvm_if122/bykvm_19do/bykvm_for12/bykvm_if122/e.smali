.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;
.super Ljava/lang/Object;
.source "TTBaseAdCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/msdk/base/TTBaseAd;

.field public b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

.field public c:J

.field public d:Z

.field public e:Lcom/bytedance/msdk/api/AdSlot;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;JLcom/bytedance/msdk/api/AdSlot;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->d:Z

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    iput-wide p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->c:J

    iput-object p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->e:Lcom/bytedance/msdk/api/AdSlot;

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;)I
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->compareTo(Lcom/bytedance/msdk/base/TTBaseAd;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/bytedance/msdk/api/AdSlot;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->e:Lcom/bytedance/msdk/api/AdSlot;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->d:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->c:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->d:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;)I

    move-result p1

    return p1
.end method
