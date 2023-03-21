.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g$a;
.super Ljava/lang/Object;
.source "IntervalFreqctlBean.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;->i()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->e()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;

    check-cast p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;)I

    move-result p1

    return p1
.end method
