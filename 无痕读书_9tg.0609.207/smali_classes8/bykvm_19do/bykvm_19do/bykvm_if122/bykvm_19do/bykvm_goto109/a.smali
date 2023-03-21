.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;
.super Ljava/lang/Object;
.source "ServerBiddingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;
    }
.end annotation


# static fields
.field public static volatile a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 5

    :pswitch_0
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    const/16 v2, 0x5d

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    if-gt v1, v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v4, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    return v0

    :pswitch_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :cond_1
    :pswitch_3
    const/4 p0, 0x5

    return p0

    :cond_2
    :pswitch_4
    return v3

    :goto_1
    :pswitch_5
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_6
    return v4

    :goto_2
    const/16 v1, 0x5b

    goto :goto_1

    :cond_3
    :goto_3
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;
    .locals 6

    const-string v0, "ServerBiddingHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x1d

    const/16 v0, 0x27

    goto :goto_3

    :cond_0
    const-string v2, "m_adm"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_data_and_no_parse"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    const/16 p1, 0x26

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, p1

    :goto_2
    const/16 p1, 0x1e

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :pswitch_2
    move p1, v0

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "cypher"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-le v2, v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-static {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_4

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> adm winner data error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_4

    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    :try_start_4
    const-string v3, "adm winner data error: "

    invoke-static {v0, v3, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_5

    :cond_4
    :goto_4
    move-object v3, v1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    invoke-direct {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;-><init>()V

    const-string v4, "req_bidding_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->a(I)V

    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->h(Ljava/lang/String;)V

    const-string v4, "load_price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->g(Ljava/lang/String;)V

    const-string v4, "adm"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->b(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->c(Ljava/lang/String;)V

    const-string v4, "app_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->e(Ljava/lang/String;)V

    const-string v4, "slot_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->i(Ljava/lang/String;)V

    const-string v4, "win_callback"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->j(Ljava/lang/String;)V

    const-string v4, "fail_callback"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->f(Ljava/lang/String;)V

    const-string v4, "m_aid"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->d(Ljava/lang/String;)V

    const-string v4, "ad_extra"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->a(Ljava/lang/Object;)V

    return-object v2

    :cond_5
    const-string p1, "adm winner data.string is null "

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-string p1, "adm winner data is null"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_7
    const-string p1, "adm winner data onResponse error "

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v1

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adm winner onResponse throwable \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "_"

    invoke-static {v0, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    invoke-interface {p1}, Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDT SDK \u521d\u59cb\u5316\u5931\u8d25\u3002\u3002 e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK_SDK_Init"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "baidu"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-result-object p5

    if-nez p5, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%1$s_%2$s_%3$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/bytedance/msdk/api/v2/ad/AdUtils;->covertAdSlot2GMAdSlotBase(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    move-result-object p3

    invoke-virtual {p5, p2, p1, p3}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getBiddingToken(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "serverBiddingRequest"

    const-string p2, "adSlot is null or waterFallConfig is null can not get server bidding token"

    invoke-static {p1, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZ)Ljava/lang/String;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;",
            "IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v10, "pangle"

    const-string v11, "req_bidding_type"

    const-string v12, "sdk_version"

    const-string v13, "tt_server_bidding"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "request_id"

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v0, "waterfall_id"

    :try_start_1
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->D()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v0, "waterfall_version"

    :try_start_2
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v11, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v0, "segment_id"

    :try_start_3
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v0, "segment_version"

    :try_start_4
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v0, "transparent_params"

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getTransparentParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getScenarioId()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_0

    const-string v0, "scenario_id"

    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getScenarioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "app_abtest"

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "waterfall_abtest"

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    const-string v0, "grouping_params"

    :try_start_7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->k()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "user_defined_grouping_params"

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :goto_0
    move-object v2, v14

    goto/16 :goto_12

    :cond_3
    :goto_1
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_ADSLOT_INFO:Ljava/lang/String;

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_FALL_AB_TEST:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_2
    :try_start_8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v4, "exchange_rate"

    const-string v3, "load_sort"

    const-string v2, "show_sort"

    const-string v1, "name"

    const/16 v17, 0x0

    move-object/from16 v18, v11

    const-string v11, "app_id"

    move-object/from16 v19, v14

    const-string v14, "slot_id"

    if-ge v5, v0, :cond_e

    :try_start_9
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v20

    if-nez v20, :cond_4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object v3, v12

    move-object v1, v15

    goto/16 :goto_c

    :cond_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v20, v15

    :try_start_a
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 p6, v1

    :try_start_b
    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_ORIGIN_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result v17

    move-object/from16 v21, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_WATER_SUB_AD_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/msdk/adapter/config/TTBaseAdapterConfiguration;->TT_MSDK_CLIENT_REQ_ID:Ljava/lang/String;

    invoke-direct {v7, v8, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1, v15}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v17

    invoke-static {v6, v15}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const-string v2, "token"

    if-eqz v1, :cond_5

    :try_start_c
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v22, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v4

    const-string v4, "buyerId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v24, v5

    const-string v5, "sdk_info"

    move-object/from16 v25, v6

    :try_start_d
    const-string v6, "sdkInfo"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v6

    invoke-virtual {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->F()Z

    move-result v6

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->C()Z

    move-result v26

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->D()Z

    move-result v27

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v1, "wx_installed"

    :try_start_e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "opensdk_ver"

    invoke-virtual {v3, v1, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v1, "support_h265"

    :try_start_f
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v1, "support_splash_zoomout"

    :try_start_10
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v1, 0x2

    move-object/from16 v8, v22

    move-object/from16 v26, v23

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v11

    move-object/from16 v11, p6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v6, p6

    move-object/from16 v1, p0

    move-object v4, v2

    move-object/from16 v5, v21

    move-object/from16 v2, p1

    move-object/from16 v8, v22

    move-object/from16 v3, p2

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v11, v23

    move-object v12, v4

    move-object/from16 v4, p3

    move-object/from16 v23, v14

    move-object v14, v5

    move-object v5, v0

    move-object/from16 v26, v11

    move-object v11, v6

    move-object/from16 v6, v25

    :try_start_11
    invoke-direct/range {v1 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adnName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    :goto_3
    invoke-direct {v7, v15}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v11, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v15, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v3

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "sub_adn_name"

    const-string v4, "pangleoppo"

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v14, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v8, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v23

    invoke-virtual {v9, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const-string v3, "sub_adType"

    :try_start_12
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v3, v22

    :try_start_13
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->C()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v2

    invoke-virtual {v2, v15}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v6, v21

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const-string v4, "error_msg"

    const-string v5, "media_req_type"

    const-string v6, "mediation_req_type"

    const/4 v8, 0x3

    const-string v11, "error_code"

    if-nez v2, :cond_a

    :try_start_14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p8, :cond_9

    const/4 v8, 0x2

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/msdk/api/error/AdFreqError;

    const v2, 0xa051

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v5, v6, v0}, Lcom/bytedance/msdk/api/error/AdFreqError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v2, v1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const-string v2, "block_show_count"

    :try_start_15
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdFreqError;->getBlockShowCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const-string v2, "adn_rit_show_rule_id"

    :try_start_16
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdFreqError;->getRuleId()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    :cond_a
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v12, v14}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v12, v14}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->d(Ljava/lang/String;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz p8, :cond_b

    const/4 v8, 0x2

    :cond_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/msdk/api/error/AdPacingError;

    const v5, 0xa052

    invoke-static {v5}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v6

    invoke-virtual {v12, v14, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v17

    const v5, 0xa052

    invoke-direct {v1, v5, v6, v0, v2}, Lcom/bytedance/msdk/api/error/AdPacingError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v2, v1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    const-string v2, "block_pacing"

    :try_start_17
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdPacingError;->getBlockPacing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    const-string v2, "adn_rit_show_rule_id"

    :try_start_18
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdPacingError;->getRuleId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :goto_6
    const-string v1, "log_extra"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :cond_c
    move-object/from16 v1, v20

    :try_start_19
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 v1, v20

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v1, v20

    move-object/from16 v3, v22

    goto :goto_a

    :catchall_4
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    :goto_8
    move-object v3, v12

    goto :goto_7

    :catchall_5
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object v3, v12

    move-object/from16 v1, v20

    goto :goto_9

    :catchall_6
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object v3, v12

    move-object v1, v15

    :goto_9
    move-object/from16 v15, v17

    :goto_a
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverBiddingRequest-buildBiddingRequestBody:[adnName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]-error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    const-string v4, "TTMediationSDK"

    :try_start_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v16, 0x1

    :cond_d
    :goto_c
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v15, v1

    move-object v12, v3

    move-object/from16 v11, v18

    move-object/from16 v14, v19

    move-object/from16 v6, v25

    goto/16 :goto_2

    :goto_d
    move-object/from16 v2, v19

    goto/16 :goto_13

    :cond_e
    move-object v8, v3

    move-object v6, v11

    move-object v5, v14

    move-object v11, v1

    move-object v14, v2

    move-object v1, v15

    const-string v0, "bidders"
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    move-object/from16 v2, v19

    :try_start_1c
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    if-nez v16, :cond_f

    const-string v0, "bid_request"

    move-object/from16 v1, p3

    :try_start_1d
    invoke-direct {v7, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->b(Lcom/bytedance/msdk/api/AdSlot;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    :cond_f
    move-object/from16 v1, p3

    :goto_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "primerit_req_type"

    move/from16 v9, p7

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    const-string v0, "req_type"

    :try_start_1e
    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getReqType()I

    move-result v9

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    const-string v0, "ad_type"

    :try_start_1f
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v9

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    const-string v0, "waterfall_extra"

    :try_start_20
    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getmWaterfallExtra()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getIfTest()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_10

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    if-lez v0, :cond_10

    const-string v0, "if_test"

    :try_start_21
    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getIfTest()I

    move-result v9

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    const-string v0, "expect_winner"

    const/4 v9, 0x0

    move-object/from16 v10, p4

    :try_start_22
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0

    if-eqz v0, :cond_11

    :try_start_23
    const-string v1, "pangle_vid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    goto :goto_f

    :catchall_7
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    move-object/from16 v0, v17

    :goto_f
    if-eqz v0, :cond_12

    array-length v1, v0

    if-lez v1, :cond_12

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/s;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "external_vid"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    const-string v0, "bid_request_ext"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    const-string v0, "serverBiddingRequest"

    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverBiddingRequest-requestBody="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static/range {p5 .. p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v3, :cond_13

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->isCustomAd()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v12

    invoke-virtual {v12, v10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v10

    goto :goto_11

    :cond_14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v12

    invoke-virtual {v12, v10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v10

    :goto_11
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v10

    move-object/from16 v12, v18

    invoke-virtual {v9, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0

    const-string v10, "level_tag"

    :try_start_26
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v10

    invoke-virtual {v9, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getExchangeRate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    if-nez v10, :cond_16

    const-string v10, "req_id"

    :try_start_27
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0

    :cond_16
    const-string v10, "cpm"

    :try_start_28
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v18, v12

    goto/16 :goto_10

    :cond_17
    const-string v1, "non_server_bidding_results"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v2, v14

    goto :goto_13

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :goto_12
    const/4 v1, 0x0

    const/16 v16, 0x0

    :goto_13
    const-string v1, "ServerBiddingHelper#serverBiddingRequest getParam() error:"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_14
    move/from16 v0, v16

    invoke-direct {v7, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "token_type"

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    :pswitch_0
    const/16 v1, 0x4a

    const/16 v2, 0x37

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :pswitch_2
    packed-switch v2, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :pswitch_4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_2
    :pswitch_5
    const/16 v1, 0x49

    const/16 v2, 0x60

    goto :goto_0

    :goto_3
    const/16 v1, 0x48

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/bytedance/msdk/api/AdSlot;)Lorg/json/JSONObject;
    .locals 5

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "id"

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adtype"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "pos"

    :try_start_2
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "accepted_size"

    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "is_support_dpl"

    :try_start_4
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->isSupportDeepLink()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v3, 0x3

    if-le p1, v3, :cond_1

    const/4 p1, 0x3

    :cond_1
    const/4 v3, 0x7

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, p1

    :cond_3
    :goto_2
    const-string p1, "ad_count"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0

    :pswitch_2
    const/16 v1, 0x48

    :goto_3
    :pswitch_3
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "ServerBiddingHelper"

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "cypher"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "message"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-le v2, v3, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_4

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> m_meta data error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_4

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    const-string v2, "m_meta data error: "

    invoke-static {v0, v2, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "request_id"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->a(Ljava/lang/String;)V

    const-string p2, "server_bidding_extra"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->b(Ljava/lang/String;)V

    const-string p2, "server_request_id"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "m_meta..data.string is null "

    :goto_2
    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "m_meta...data is null"

    goto :goto_2

    :cond_7
    const-string p1, "m_meta onResponse error "
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_meta onResponse throwable \uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;

    invoke-direct {v0, p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$b;

    invoke-direct {v0, p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V

    :pswitch_0
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    const/16 p2, 0x5d

    :goto_0
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    if-eq p0, p2, :cond_1

    goto :goto_2

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_2
    :pswitch_2
    const/16 p0, 0x5d

    const/16 p1, 0x5d

    goto :goto_0

    :goto_3
    const/16 p1, 0x5b

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    const/16 p0, 0x5d

    const/16 p1, 0x5d

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    goto :goto_1

    :goto_3
    const/16 p1, 0x5b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "name"

    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->c(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private b(Lcom/bytedance/msdk/api/AdSlot;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "app"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "request_id"

    :try_start_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_sdk_version"

    const-string v3, "3.6.0.1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/m;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const-string v2, "orientation"

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "ua"

    :try_start_2
    sget-object v2, Lcom/apk/os;->if:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "ip"

    :try_start_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lcom/bytedance/msdk/api/AdSlot;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "adslots"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "ts"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v0, "req_sign"

    :try_start_4
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 5

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e;->b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "latitude"

    :try_start_1
    iget v3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d;->a:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "longitude"

    :try_start_2
    iget v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d;->b:F

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "geo"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-void

    :pswitch_2
    const/16 v1, 0x48

    :goto_2
    :pswitch_3
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;
    .locals 3

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    :cond_0
    :pswitch_0
    const/16 v1, 0x4a

    const/16 v2, 0x37

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :pswitch_2
    const/16 v1, 0x38

    if-eq v2, v1, :cond_0

    const/16 v1, 0x39

    if-eq v2, v1, :cond_1

    :pswitch_3
    const/16 v1, 0x49

    const/16 v2, 0x60

    goto :goto_0

    :cond_1
    :pswitch_4
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    if-nez v1, :cond_3

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    if-nez v1, :cond_2

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    return-object v0

    :goto_2
    const/16 v1, 0x48

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    :pswitch_0
    const/16 v0, 0x5e

    const/16 v1, 0x4b

    const/16 v2, 0x5d

    :goto_0
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_0

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const-string v0, "package_name"

    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "version_code"

    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "version"

    :try_start_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :goto_2
    const/16 v1, 0x5b

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;",
            "IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;)V
    .locals 9

    const/16 v0, 0x3c

    const/16 v1, 0x38

    :goto_0
    const/16 v2, 0x28

    const/16 v3, 0x29

    const/16 v4, 0x29

    :goto_1
    if-eq v4, v2, :cond_0

    if-eq v4, v3, :cond_6

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    packed-switch v1, :pswitch_data_1

    :goto_2
    :pswitch_1
    packed-switch v1, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ServerBiddingHelper"

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v4, "m_meta"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v5, v6, :cond_2

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new invalid_non_server_bidding_results winners parse error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;->b(Ljava/util/List;)V

    :cond_3
    invoke-direct {p0, v0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lorg/json/JSONObject;)V

    invoke-direct {p0, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server Bidding onResponse throwable \uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_5

    :cond_5
    const-string p1, "Server Bidding Request onResponse...response is invalid"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string v0, "response is invalid"

    invoke-direct {p1, v1, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lcom/bytedance/msdk/api/AdError;)V

    :goto_5
    return-void

    :goto_6
    const/16 v1, 0x27

    goto/16 :goto_2

    :cond_6
    :goto_7
    :pswitch_3
    const/16 v0, 0x53

    const/16 v4, 0x28

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZLbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;",
            "IZ",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZ)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "serverBiddingRequest-encryptBody="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "serverBiddingRequest"

    invoke-static {p3, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;

    move-result-object p2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_if122/b;->a()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/a;

    move-result-object p2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/a;->c()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;

    move-result-object p2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object p3

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->p()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "X-Tt-Env"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-use-ppe"

    const-string p4, "1"

    invoke-virtual {p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p3, Lcom/apk/os;->if:Ljava/lang/String;

    const-string p4, "User-Agent"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->c(Ljava/lang/String;)V

    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$a;

    invoke-direct {p1, p0, p9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;)V

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/c;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;)V

    return-void
.end method
