.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;
.super Ljava/lang/Object;
.source "AdEventUtil.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method public static a()V
    .locals 4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "apm_sdk_init"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->c()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    const-string v3, "sp_v3_bug"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(IIJZ)V
    .locals 4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->J()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v1

    const-string v2, "is_config_from_assert"

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p4, :cond_2

    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    const-string p2, "get_config_final"

    invoke-virtual {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->g(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "sdk_backstage"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(JIIJ)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "sdk_init_end"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v0, p4, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "adn_count"

    invoke-virtual {v0, p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_from_local_config"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f;->a()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "adapter_version_list"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "adapter_request_fail"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const v1, -0x1869f

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "adapter create fail !"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mediationrit_req_type"

    invoke-virtual {v0, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "mediationrit_req_type_src"

    invoke-virtual {p2, v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object v1, p1

    move-object v2, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "bidding_info_invalid"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-virtual {p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "ad_count"

    invoke-virtual {p3, v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p4

    invoke-static {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->k()Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "grouping_params"

    invoke-virtual {p3, v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "log_source"

    invoke-virtual {p3, v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :goto_1
    const/16 p0, 0x5e

    const/16 p1, 0x60

    const/16 p2, 0x60

    :goto_2
    if-eq p2, p0, :cond_2

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x5e

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "get_bidding_adm_to_adn"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v2, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :goto_0
    :pswitch_0
    const/16 p0, 0x49

    const/16 p1, 0x60

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    return-void

    :pswitch_4
    const/16 p0, 0x4a

    const/16 p1, 0x37

    goto :goto_1

    :goto_2
    const/16 p0, 0x48

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    instance-of v1, p8, Lcom/bytedance/msdk/api/error/AdPacingError;

    if-nez v1, :cond_0

    instance-of v1, p8, Lcom/bytedance/msdk/api/error/AdFreqError;

    if-nez v1, :cond_0

    instance-of v1, p8, Lcom/bytedance/msdk/api/error/AdBreakError;

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p8, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    iget-object p8, p8, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v1, p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    xor-int/lit8 p3, p3, 0x1

    const-string p8, "media_request"

    invoke-virtual {v0, p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p8

    invoke-virtual {p8, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p8

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    :goto_0
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    const-string v1, "ad_count"

    invoke-virtual {p2, v1, p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p8, "adn_count"

    invoke-virtual {p2, p8, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "mediationrit_req_type"

    invoke-virtual {p2, p6, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "mediationrit_req_type_src"

    invoke-virtual {p2, p6, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p5, "mediation_req_type"

    invoke-virtual {p2, p5, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "media_req_type"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p2, -0x1

    cmp-long p4, p9, p2

    if-eqz p4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, p9

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "start_time"

    invoke-virtual {p8, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p5, 0x0

    move-object p2, v0

    move-object p3, p1

    move-object p4, p0

    move-object p6, p8

    move-object p7, v0

    invoke-static/range {p2 .. p8}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :cond_4
    const/16 p0, 0x9

    const/16 p1, 0x8

    const/16 p2, 0x8

    :goto_1
    const/4 p3, 0x7

    if-eq p2, p3, :cond_4

    if-eq p2, p1, :cond_6

    if-eq p2, p0, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    const/16 p2, 0x9

    goto :goto_1
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;)V
    .locals 2

    const-string v0, "block_pacing"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string v0, "waterfall_show_rule_id"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string v0, "block_show_count"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :goto_0
    const/16 p0, 0x5d

    const/16 v0, 0x5d

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_3
    const/16 p0, 0x5e

    const/16 v0, 0x4b

    goto :goto_1

    :goto_3
    const/16 v0, 0x5b

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

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

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

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :cond_0
    :pswitch_3
    return-void

    :pswitch_4
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    goto :goto_1

    :goto_3
    const/16 p1, 0x5b

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :goto_0
    const/16 v0, 0x41

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->i(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->g(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->k(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getWaterfallId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getIfTest()I

    move-result v3

    if-eq v3, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getIfTest()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "if_test"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getSegmentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "segment_id"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getSegmentVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "segment_version"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getmWaterfallExtra()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waterfall_extra"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getTransparentParams()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transparent_params"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getPrimeRitReqType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "primerit_req_type"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getReqType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "req_type"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getParalleType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parallel_type"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getReqParallelNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "req_parallel_num"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getBidFloor()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getBidFloor()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "waterfall_bidfloor"

    invoke-virtual {p0, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getScenarioId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getScenarioId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scenario_id"

    invoke-virtual {p0, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v3, "pangle_vid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    if-eqz p4, :cond_4

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/s;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "external_vid"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "ad_extra"

    const-string v3, "m_aid"

    const-string v4, "sub_adtype"

    const-string v5, "origin_type"

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->A()Ljava/lang/String;

    move-result-object v7

    const-string v8, "waterfall_abtest"

    invoke-virtual {v6, v8, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->u()Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_bidding_extra"

    invoke-virtual {v6, v8, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v6

    invoke-virtual {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v7

    invoke-virtual {v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0, v3, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p4, :cond_6

    invoke-interface {p4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getExchangeRate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getReqId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->h(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getSdkVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getEventMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/util/Map;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v1

    :goto_4
    invoke-virtual {p3, v7}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "mediationrit_req_type"

    invoke-virtual {v6, v8, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p3, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqTypeSrc(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "mediationrit_req_type_src"

    invoke-virtual {v6, v7, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getOriginType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getSubAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_9

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "is_video_cache_success"

    invoke-virtual {p0, v4, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->adnHasAdVideoCachedApi()Z

    move-result v4

    xor-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "is_mock_video_cache_api"

    invoke-virtual {v1, v4, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_a
    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLevelTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "level_tag"

    invoke-virtual {p0, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_b
    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    const-string v5, "media_show_fail"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v3, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p4, :cond_d

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    const-string v0, "bidding_win_event"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getWinCallback()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_e

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getWinCallback()Ljava/lang/String;

    move-result-object p4

    const-string v0, "win_callback"

    invoke-virtual {p0, v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_e
    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getFailCallback()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_f

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getFailCallback()Ljava/lang/String;

    move-result-object p4

    const-string v0, "fail_callback"

    invoke-virtual {p0, v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_f
    if-eqz p1, :cond_11

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "client_req_id"

    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_10
    if-eqz p3, :cond_11

    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :goto_6
    invoke-virtual {p0, p4, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_11
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c:Ljava/lang/String;

    const-string p2, "pangle"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "sub_adn_name"

    const-string p2, "pangleoppo"

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_12
    :pswitch_1
    return-void

    :cond_13
    const/16 v0, 0x43

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;J)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "bidding_adm_load_fail"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p7

    invoke-virtual {p7, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p6

    if-eqz p0, :cond_0

    iget p7, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    goto :goto_0

    :cond_0
    const/4 p7, -0x1

    :goto_0
    invoke-virtual {p6, p7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p6

    if-eqz p0, :cond_1

    iget-object p7, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p7, "unknown error"

    :goto_1
    invoke-virtual {p6, p7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p7, "adn_count"

    invoke-virtual {p6, p7, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    const/4 p6, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "adn_preload"

    invoke-virtual {p3, p7, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p6, "mediationrit_req_type"

    invoke-virtual {p3, p6, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "mediationrit_req_type_src"

    invoke-virtual {p3, p5, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    instance-of p3, p0, Lcom/bytedance/msdk/api/error/AdBreakError;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/bytedance/msdk/api/AdError;->code:I

    iput p3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->n:I

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    iput-object p0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->k:Ljava/lang/String;

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p2, p3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    instance-of v1, p0, Lcom/bytedance/msdk/api/error/AdPacingError;

    const-string v2, "adn_rit_show_rule_id"

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/bytedance/msdk/api/error/AdPacingError;

    iget v3, p0, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v3

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdPacingError;->getBlockPacing()Ljava/lang/String;

    move-result-object p0

    const-string v3, "block_pacing"

    invoke-virtual {v0, v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdPacingError;->getRuleId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v2, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    goto :goto_4

    :cond_0
    instance-of v1, p0, Lcom/bytedance/msdk/api/error/AdFreqError;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/bytedance/msdk/api/error/AdFreqError;

    iget v3, p0, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v3

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdFreqError;->getBlockShowCount()Ljava/lang/String;

    move-result-object p0

    const-string v3, "block_show_count"

    invoke-virtual {v0, v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/error/AdFreqError;->getRuleId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/bytedance/msdk/api/error/AdBreakError;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/msdk/api/AdError;->code:I

    iput v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->n:I

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    iput-object p0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->k:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;)V

    goto :goto_4

    :cond_2
    if-eqz p0, :cond_3

    iget v1, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string p0, "unknown error"

    :goto_3
    invoke-virtual {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    goto :goto_1

    :goto_4
    const-string p0, "media_fill_fail"

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-virtual {p0, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "adn_count"

    invoke-virtual {p0, p6, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "adn_preload"

    invoke-virtual {p0, p6, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "mediationrit_req_type"

    invoke-virtual {p0, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "mediationrit_req_type_src"

    invoke-virtual {p0, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p2, p3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, p9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_5
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "level_tag"

    invoke-virtual {v0, p1, p10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_6
    if-eqz p11, :cond_7

    const-string p1, "sub_adn_name"

    invoke-virtual {v0, p1, p11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;I)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "get_config_error"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v2, v3

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :pswitch_0
    const/16 p0, 0x4a

    const/16 p1, 0x37

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    const/16 p0, 0x39

    if-eq p1, p0, :cond_0

    :pswitch_3
    const/16 p0, 0x49

    const/16 p1, 0x60

    goto :goto_0

    :cond_0
    :pswitch_4
    return-void

    :goto_1
    const/16 p0, 0x48

    goto :goto_0

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

.method public static a(Lcom/bytedance/msdk/api/AdSlot;IJLjava/lang/String;Ljava/lang/String;ILcom/bytedance/msdk/api/AdError;I)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "return_bidding_result"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    if-nez p7, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p7, Lcom/bytedance/msdk/api/AdError;->code:I

    :goto_0
    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    if-nez p7, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    iget-object p2, p7, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "fill_type"

    invoke-virtual {p1, p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string p2, "waterfall_abtest"

    invoke-virtual {p1, p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string p2, "server_bidding_extra"

    invoke-virtual {p1, p2, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "ad_count"

    invoke-virtual {p1, p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    const/4 p4, 0x0

    move-object p1, v0

    move-object p2, p0

    move-object p3, p4

    move-object p5, p7

    move-object p6, v0

    invoke-static/range {p1 .. p7}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    const/16 p0, 0x9

    const/16 p1, 0x1a

    :goto_2
    const/16 p2, 0x1e

    const/16 p3, 0x10

    const/16 p4, 0xe

    const/16 p5, 0xe

    :goto_3
    if-eq p5, p4, :cond_5

    if-eq p5, p3, :cond_2

    goto :goto_2

    :cond_2
    const/16 p5, 0x16

    if-le p1, p5, :cond_3

    goto :goto_4

    :cond_3
    const/16 p1, 0x1d

    if-eq p0, p1, :cond_3

    if-eq p0, p2, :cond_4

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    :goto_4
    const/16 p1, -0x2c

    const/16 p0, 0x1e

    const/16 p5, 0x10

    goto :goto_3
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0    # Lcom/bytedance/msdk/api/AdSlot;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "total_load_fail"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "waterfall_abtest"

    invoke-virtual {v0, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string v0, "server_bidding_extra"

    invoke-virtual {p2, v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    iget p2, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    const/16 p3, 0x2713

    if-ne p2, p3, :cond_0

    const/16 p1, 0x271a

    invoke-virtual {v5, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string p2, "Ad load timeout!"

    goto :goto_1

    :cond_0
    instance-of p3, p1, Lcom/bytedance/msdk/api/error/AdPacingError;

    const-string v0, "waterfall_show_rule_id"

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lcom/bytedance/msdk/api/error/AdPacingError;

    invoke-virtual {v5, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/error/AdPacingError;->getBlockPacing()Ljava/lang/String;

    move-result-object p1

    const-string p2, "block_pacing"

    invoke-virtual {v5, p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/error/AdPacingError;->getRuleId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p3, p1, Lcom/bytedance/msdk/api/error/AdFreqError;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/bytedance/msdk/api/error/AdFreqError;

    invoke-virtual {v5, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/error/AdFreqError;->getBlockShowCount()Ljava/lang/String;

    move-result-object p1

    const-string p2, "block_show_count"

    invoke-virtual {v5, p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/error/AdFreqError;->getRuleId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v5, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    goto :goto_3

    :cond_2
    instance-of p3, p1, Lcom/bytedance/msdk/api/error/AdBreakError;

    if-eqz p3, :cond_3

    invoke-virtual {v5, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    goto :goto_2

    :cond_3
    const/16 p1, 0x2766

    invoke-virtual {v5, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string p2, "Ad load fail all loadsorts! "

    :goto_1
    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :goto_2
    invoke-static {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;)V

    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->c:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->c:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getGroMoreThreadCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "gromore_thread_num"

    invoke-virtual {v6, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "ad_count"

    invoke-virtual {v5, p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v2, v3

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "media_cache_success"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;JIIILjava/lang/String;I)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "mediation_request_end"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string p3, "waterfall_abtest"

    invoke-virtual {p2, p3, p7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p7, "ad_count"

    invoke-virtual {p2, p7, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-virtual {p2, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p0, p3, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "requested_adn_count"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "requested_level_count"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b:I

    rem-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getGroMoreThreadCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "gromore_thread_num"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    const/16 p0, 0xe

    const/16 p1, 0x10

    const/16 p2, 0x10

    :goto_0
    if-eq p2, p0, :cond_1

    const/16 p2, 0xe

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "mediation_video_cached"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string p3, "waterfall_abtest"

    invoke-virtual {p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "rit_cache_cannot_use"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    const-string v2, "cache_invalid_info"

    invoke-virtual {v1, v2, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "mediationrit_req_type"

    invoke-virtual {v0, p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "start_bidding_request"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "waterfall_abtest"

    invoke-virtual {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ad_count"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v2, v3

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    const/16 p0, 0x37

    :cond_1
    :goto_1
    :pswitch_0
    const/16 p1, 0x48

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x35

    if-eq v7, p1, :cond_2

    const/16 p1, 0x36

    if-eq v7, p1, :cond_3

    goto :goto_1

    :cond_2
    :goto_3
    packed-switch p0, :pswitch_data_1

    const/16 p0, 0x1e

    goto :goto_3

    :pswitch_2
    const/16 p1, 0x39

    if-gt v7, p1, :cond_1

    :pswitch_3
    return-void

    :cond_3
    :pswitch_4
    const/16 p1, 0x49

    const/16 v7, 0x10

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "cache_cannot_use"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "cache_invalid_info"

    invoke-virtual {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string v0, "waterfall_abtest"

    invoke-virtual {p1, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v2, v3

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 9

    :cond_0
    const/16 v0, 0xe

    const/16 v1, 0xd

    :goto_0
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-lez p4, :cond_2

    invoke-static {p4}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_4

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_2

    :cond_3
    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    xor-int/lit8 p2, p2, 0x1

    :goto_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v7

    const-string v2, "mediation_request"

    invoke-virtual {v7, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    const-string v3, "waterfall_abtest"

    invoke-virtual {v2, v3, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    const-string v2, "server_bidding_extra"

    invoke-virtual {p1, v2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "mediation_req_type"

    invoke-virtual {p1, p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/AdSlot;->getAdCount()I

    move-result v0

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "ad_count"

    invoke-virtual {p1, p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    invoke-virtual {p1, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sget p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getGroMoreThreadCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "gromore_thread_num"

    invoke-virtual {v8, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getPrimeRitReqType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "parallel_num"

    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object p3

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "interval"

    :try_start_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object p3

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->c()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "primerit_list"

    :try_start_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object p3

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->b()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "preload_info"

    invoke-virtual {v8, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_3
    const/4 v5, 0x0

    move-object v2, v7

    move-object v3, p0

    move-object v4, v5

    move-object v6, v8

    invoke-static/range {v2 .. v8}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;JLcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;J)V
    .locals 7

    move-object/from16 v0, p9

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isAdnPreload()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v2, "media_fill"

    invoke-virtual {v5, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    move-wide v3, p3

    invoke-virtual {v2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    move v3, p1

    invoke-virtual {v2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    move-object v3, p2

    invoke-virtual {v2, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adn_count"

    invoke-virtual {v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "adn_preload"

    invoke-virtual {v2, v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_count"

    invoke-virtual {v1, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fill_type"

    invoke-virtual {v5, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz v0, :cond_1

    const-string v1, "sub_adn_name"

    invoke-virtual {v5, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v2, p10, v0

    if-eqz v2, :cond_2

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "end_time"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p5

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "bidding_adm_cache"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    const-string v1, "media_show_after"

    invoke-virtual {p3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "play_again"

    invoke-virtual {p3, v1, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "reason"

    invoke-virtual {p3, p4, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    const/16 p2, 0x5d

    :goto_0
    const/16 p3, 0x5c

    if-eq p0, p3, :cond_0

    if-eq p0, p2, :cond_1

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_1
    const/16 p0, 0x5d

    const/16 p1, 0x5d

    goto :goto_0

    :cond_1
    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    return-void

    :goto_3
    const/16 p1, 0x5b

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;IILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isAdnPreload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "media_reward_verify"

    invoke-virtual {v5, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adn_preload"

    invoke-virtual {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "play_again"

    invoke-virtual {p4, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz p5, :cond_1

    const/16 p2, 0x4e20

    if-eq p5, p2, :cond_1

    invoke-virtual {v5, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-virtual {p2, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->u()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "reward_callback_type"

    invoke-virtual {v6, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->v()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "reward_start_time"

    invoke-virtual {v6, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    const-string p2, "sub_adn_name"

    invoke-virtual {v5, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_3
    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isAdnPreload()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "media_click_listen"

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "adn_preload"

    invoke-virtual {v2, v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "play_again"

    invoke-virtual {v1, v2, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz p3, :cond_1

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;J)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "bidding_adm_load"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :pswitch_0
    const/16 p0, 0x4a

    const/16 p1, 0x37

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    const/16 p0, 0x38

    if-eq p1, p0, :cond_0

    const/16 p0, 0x39

    if-eq p1, p0, :cond_0

    :pswitch_3
    const/16 p0, 0x49

    const/16 p1, 0x60

    goto :goto_0

    :cond_0
    :pswitch_4
    return-void

    :goto_1
    const/16 p0, 0x48

    goto :goto_0

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

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;JLjava/lang/String;ZI)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "mediation_fill"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    const-string p4, "waterfall_abtest"

    invoke-virtual {p3, p4, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string p3, "server_bidding_extra"

    invoke-virtual {p2, p3, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    xor-int/lit8 p3, p6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "mediation_req_type"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "ad_count"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    if-eqz p2, :cond_0

    iget v1, p2, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    invoke-virtual {p3, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    const-string p3, "media_show_fail_listen"

    invoke-virtual {p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "play_again"

    invoke-virtual {p2, p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz p5, :cond_2

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p1, v1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "media_show_dislike"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :goto_0
    :pswitch_0
    const/16 p0, 0x49

    const/16 p1, 0x60

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    return-void

    :pswitch_4
    const/16 p0, 0x4a

    const/16 p1, 0x37

    goto :goto_1

    :goto_2
    const/16 p0, 0x48

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;I)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v6

    const-string v0, "callstack_static"

    invoke-virtual {v6, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "callstack_message"

    invoke-virtual {v0, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "callstack_report_time"

    invoke-virtual {p2, v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v1, v6

    move-object v2, p1

    move-object v4, p0

    move-object v5, v7

    invoke-static/range {v1 .. v7}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "bidding_win_event"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static {v0, v4, v2, v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static/range {p2 .. p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v3

    const-string v4, "loss_callback"

    const-string v5, "win_callback"

    const-string v6, "ad_extra"

    const-string v7, "win_state"

    const-string v8, "req_bidding_type"

    const-string v9, "m_aid"

    const-string v10, "rit_cpm"

    const-string v11, "exchange_rate"

    const-string v12, "show_sort"

    const-string v13, "load_sort"

    const-string v14, "adn_name"

    const-string v15, "mediation_rit"

    if-nez v3, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v16, :cond_0

    move-object/from16 p0, v3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v0

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getExchangeRate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getWinCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/msdk/base/TTBaseAd;->getFailCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object/from16 v17, v0

    :catch_1
    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_1
    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v3, :cond_2

    move-object/from16 p0, v0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v1

    :try_start_3
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getExchangeRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getWinCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getFailCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_2
    move-object/from16 v16, v1

    :catch_3
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto/16 :goto_2

    :cond_3
    move-object/from16 v16, v1

    const-string v0, "others"

    move-object/from16 v1, v16

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42"

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const/4 p0, 0x0

    invoke-static {v0, p0, p0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    :goto_0
    :pswitch_0
    const/16 p0, 0x49

    const/16 v0, 0x60

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    return-void

    :pswitch_4
    const/16 p0, 0x4a

    const/16 v0, 0x37

    goto :goto_1

    :goto_2
    const/16 p0, 0x48

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    if-eqz p4, :cond_0

    iget v0, p4, Lcom/bytedance/msdk/api/AdError;->code:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    if-eqz p4, :cond_1

    iget-object p4, p4, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {v0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-virtual {p4, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    const-string p4, "custom_adn_init_fail"

    invoke-virtual {p0, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v3

    const-string v4, "media_show_fail"

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const v4, 0x9c74

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v5, :cond_1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "adn"

    :try_start_1
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "type"

    :try_start_2
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v8

    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getSubAdType()I

    move-result v9

    invoke-static {v8, v9}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "adnSlotId"

    :try_start_3
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "loadSort"

    :try_start_4
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "showSort"

    :try_start_5
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "isReady"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v5}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v5

    const-string v7, "hasShown"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, p1, v1, v2, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "is_video_cache_success"

    invoke-virtual {v3, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x12

    :goto_0
    const/16 v1, 0xd

    const/16 v2, 0xd

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-lez p0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/base/TTBaseAd;

    goto :goto_2

    :cond_3
    move-object p0, p2

    :goto_2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    const-string v2, "media_show_is_ready"

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    const-string v3, "waterfall_abtest"

    invoke-virtual {v2, v3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :try_start_0
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v3, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "adn"

    :try_start_1
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "type"

    :try_start_2
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v6

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getSubAdType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "adnSlotId"

    :try_start_3
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v5, "loadSort"

    :try_start_4
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "showSort"

    :try_start_5
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "isReady"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v5

    const-string v6, "hasShown"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->adnHasAdVideoCachedApi()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v5

    const-string v6, "is_video_cache_success"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :cond_8
    move-object v5, p2

    :goto_4
    const-string v6, "mediationrit_req_type"

    :try_start_6
    invoke-virtual {v3, v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :cond_9
    move-object v5, p2

    :goto_5
    const-string v6, "mediationrit_req_type_src"

    :try_start_7
    invoke-virtual {v3, v5}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqTypeSrc(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_a

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_b
    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const/4 p1, -0x1

    :goto_6
    invoke-virtual {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, p3, p2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void

    :goto_8
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    goto :goto_a

    :goto_9
    :pswitch_3
    nop

    goto :goto_9

    :goto_a
    const/16 v0, 0xc

    goto :goto_8

    :pswitch_4
    const/16 v2, 0xf

    const/16 v0, 0xd

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->J()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v1

    const-string v2, "is_config_from_assert"

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const-string p0, "get_config_start"

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static b(J)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "sdk_init"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string p0, "com.unity3d.player.UnityPlayer"

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p0, "com.bytedance.ad.sdk.mediation.AdManager"

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "unity"

    goto :goto_0

    :catchall_0
    const-string p0, "unity_pure"

    goto :goto_0

    :catchall_1
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_0

    const-string v1, "develop_type"

    invoke-virtual {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "adapter_request"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mediationrit_req_type"

    invoke-virtual {v0, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "mediationrit_req_type_src"

    invoke-virtual {p2, v0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v2, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;)V
    .locals 3

    const-string v0, "block_pacing"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string v0, "rit_adn_show_rule_id"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string v0, "block_show_count"

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :pswitch_0
    const/16 p0, 0x5e

    const/16 v0, 0x4b

    const/16 v1, 0x5d

    :goto_0
    const/16 v2, 0x5c

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_2
    :pswitch_2
    const/16 p0, 0x5d

    const/16 v0, 0x5d

    goto :goto_0

    :goto_3
    const/16 v0, 0x5b

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

.method public static b(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    const-string v0, "media_will_show"

    invoke-virtual {v5, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "waterfall_abtest"

    invoke-virtual {v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v0, v5

    move-object v1, p0

    move-object v2, v3

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :pswitch_0
    const/16 p0, 0x4a

    const/16 p1, 0x37

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    const/16 p0, 0x39

    if-eq p1, p0, :cond_0

    :pswitch_3
    const/16 p0, 0x49

    const/16 p1, 0x60

    goto :goto_0

    :cond_0
    :pswitch_4
    return-void

    :goto_1
    const/16 p0, 0x48

    goto :goto_0

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

.method public static b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 7

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isAdnPreload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "media_show"

    invoke-virtual {v5, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adn_preload"

    invoke-virtual {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v0, v5

    move-object v1, p1

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Lcom/apk/goto;->return(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/HashMap;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/HashMap;)V

    :cond_1
    const/16 p0, 0x49

    const/16 p1, 0x48

    :goto_1
    if-eq p0, p1, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 p0, 0x48

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V

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

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :cond_0
    :pswitch_3
    return-void

    :pswitch_4
    const/16 p0, 0x5e

    const/16 p1, 0x4b

    goto :goto_1

    :goto_3
    const/16 p1, 0x5b

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static b(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/base/TTBaseAd;->isAdnPreload()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "media_show_listen"

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "adn_preload"

    invoke-virtual {v2, v3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "play_again"

    invoke-virtual {v1, v2, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    if-eqz p3, :cond_1

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/base/TTBaseAd;Ljava/util/Map;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    move-result-object v0

    const-string v1, "callstack_dynamic"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const-string v1, "callstack_message"

    invoke-virtual {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "callstack_report_time"

    invoke-virtual {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Ljava/util/Map;)V

    return-void
.end method
