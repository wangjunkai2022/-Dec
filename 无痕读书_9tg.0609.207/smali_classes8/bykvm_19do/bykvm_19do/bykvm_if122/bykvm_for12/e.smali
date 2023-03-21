.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;
.super Ljava/lang/Object;
.source "AdEventNetUtil.java"


# static fields
.field public static a:I = -0x1

.field public static b:J


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 5

    sget v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a:I

    return p0

    :cond_0
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->b(Landroid/content/Context;)I

    move-result p0

    sput p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->b:J

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a:I

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->a(I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
