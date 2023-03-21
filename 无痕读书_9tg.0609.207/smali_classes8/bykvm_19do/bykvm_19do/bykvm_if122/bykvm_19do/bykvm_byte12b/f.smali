.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;
.super Ljava/lang/Object;
.source "IntervalEffectiveTime.java"


# direct methods
.method public static a(J)J
    .locals 19

    move-wide/from16 v0, p0

    .line 1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v3

    const-wide/32 v4, 0x36ee80

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_0

    .line 3
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Ljava/util/Date;-><init>(IIIIII)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v13

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v14

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v15

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v16

    const/16 v17, 0x1e

    const/16 v18, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Ljava/util/Date;-><init>(IIIIII)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Ljava/util/Date;-><init>(IIIIII)V

    .line 6
    :goto_0
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JJ)J
    .locals 4

    .line 7
    new-instance v0, Ljava/util/Date;

    add-long/2addr p2, p0

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 8
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old time "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " new time = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u6beb\u79d2 = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTMediationSDK_IntervalEffectiveTime"

    invoke-static {p1, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public static b(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
