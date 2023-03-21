.class public final Lcom/apk/tb0;
.super Ljava/lang/Object;
.source "FastClickUtils.java"


# static fields
.field public static do:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static do()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/apk/tb0;->do:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/16 v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sput-wide v0, Lcom/apk/tb0;->do:J

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
