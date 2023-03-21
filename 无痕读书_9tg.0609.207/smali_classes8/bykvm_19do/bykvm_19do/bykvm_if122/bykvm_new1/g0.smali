.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/g0;
.super Ljava/lang/Object;
.source "TTLevelTagUtil.java"


# direct methods
.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Z)V
    .locals 5

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->r()Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x9c7d

    if-eqz p3, :cond_2

    .line 6
    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    .line 7
    :cond_2
    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setErrorMsg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    return-void

    :cond_3
    const v4, 0x9c7e

    if-nez v3, :cond_5

    if-eqz p3, :cond_4

    .line 9
    invoke-static {v4}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    .line 10
    :cond_4
    invoke-static {v4}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/base/TTBaseAd;->setErrorMsg(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    return-void

    .line 12
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p3, :cond_6

    .line 14
    invoke-static {v4}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p0, v4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V

    .line 15
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    return-void

    .line 16
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_8
    :goto_0
    return-void
.end method
