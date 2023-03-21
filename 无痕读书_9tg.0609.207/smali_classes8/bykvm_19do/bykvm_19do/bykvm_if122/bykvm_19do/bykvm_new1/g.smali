.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;
.super Ljava/lang/Object;
.source "TTLoaderUtil.java"


# static fields
.field public static a:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String; = "KEY_LOAD_SEQ"

.field public static c:Ljava/lang/String; = "KEY_LOAD_SEQ_TIME"


# direct methods
.method public static a()I
    .locals 6

    .line 57
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->c:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    .line 60
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v2

    sget-object v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;J)V

    .line 61
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v2

    sget-object v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 62
    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;I)V

    return v4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;
    .locals 1

    .line 40
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->b(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 43
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->c(I)V

    const-string p0, "0"

    .line 44
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e(Ljava/lang/String;)V

    const-string p0, "1"

    .line 45
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->g(I)V

    .line 47
    invoke-virtual {v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j(I)V

    const/4 p0, 0x3

    .line 48
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i(I)V

    const-string p0, "%1$s%2$sAdapter"

    .line 49
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->g(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
    .locals 3

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->q()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result p1

    invoke-static {v2, p1}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b(Ljava/lang/String;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request"

    invoke-static {p0, v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u521b\u5efaadapter\u6210\u529f!! class="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " adn_version:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTMediationSDK"

    .line 15
    invoke-static {p1, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    invoke-static {p1}, Lcom/apk/eg;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "PangleCustom"

    aput-object v0, p1, v2

    aput-object p2, p1, v1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.bytedance.msdk.adapter.panglecustom."

    .line 5
    invoke-static {p1, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 6
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.bytedance.msdk.adapter."

    .line 7
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/apk/eg;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/Map;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;IIZJ)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;",
            "IIZJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v1

    const-string v2, "tt_ad_network_config_appKey"

    const-string v3, "tt_ad_network_config_appid"

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 21
    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkFlatFromId()I

    move-result v4

    invoke-static {v4}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz p3, :cond_2

    .line 22
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v5

    const/4 v6, -0x4

    if-ne v5, v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p3}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "tt_ad_origin_type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "tt_ad_sub_type"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result p0

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result p3

    const/4 v1, 0x0

    if-gez p0, :cond_4

    const/4 p0, 0x0

    :cond_4
    if-gez p3, :cond_5

    const/4 p3, 0x0

    .line 31
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "ad_height"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "ad_width"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ad_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "key_mediation_rit_req_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "key_mediation_rit_req_type_src"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "key_is_from_developer_req"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "key_requestwfb_ms"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_7

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v0
.end method

.method public static a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 4

    .line 63
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 64
    iget v0, p0, Lcom/bytedance/msdk/api/AdError;->code:I

    const/16 v1, 0x4e21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 65
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "error_adn:%1$s no ads\uff0cplease check ad network"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p0, "test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 1

    .line 68
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    invoke-static {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "fill_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j0;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/j0;->a(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    move-result-object p1

    .line 73
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->i()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 76
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->z()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->z()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x5

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
    .locals 4

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa\u5e7f\u544a\u7f51\u7edcadapter\u52a0\u8f7d\u5668\u5931\u8d25\uff1aclass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\u5f02\u5e38\u4fe1\u606f\uff1a"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g$a;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 2

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v0

    invoke-static {v0}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "test_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->b()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "slot setting error"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
