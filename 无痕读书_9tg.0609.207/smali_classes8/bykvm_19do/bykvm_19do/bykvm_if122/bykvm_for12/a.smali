.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;
.super Ljava/lang/Object;
.source "AdEvent.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/j;
.implements Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/b;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;
    .locals 2

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const-string p1, "params"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "tag"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/i;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "app_id"

    const-string v3, "pangle"

    const-string v4, "media_fill_fail"

    const-string v5, "timestamp"

    const/16 v6, 0xb

    :goto_0
    const/16 v7, 0x62

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move-object v7, v2

    goto/16 :goto_e

    :pswitch_1
    const/16 v7, 0x18

    if-eq v6, v7, :cond_0

    :pswitch_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sdk_init"

    const-string v9, "sdk_init_end"

    const-string v10, "event_extra"

    if-eqz v1, :cond_13

    const-string v11, "type"

    :try_start_0
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "link_id"

    :try_start_1
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "adn_name"

    :try_start_2
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "ad_sdk_version"

    :try_start_3
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "rit_cpm"

    :try_start_4
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->g:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v11, "mediation_rit"

    :try_start_5
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v11, "adtype"

    :try_start_6
    iget v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->q:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v11, "error_msg"

    :try_start_7
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->k:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v11, "error_code"

    :try_start_8
    iget v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->n:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v11, "creative_id"

    :try_start_9
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->l:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v11, "exchange_rate"

    :try_start_a
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->u:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v11, "msdk_session_id"

    :try_start_b
    sget-object v12, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v11

    invoke-virtual {v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->e()Ljava/lang/String;

    move-result-object v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v11, :cond_1

    const-string v11, "app_abtest"

    :try_start_c
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v12

    invoke-virtual {v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->s:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    const-string v11, "result"

    :try_start_d
    iget v13, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->s:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->t:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-eq v11, v12, :cond_3

    const-string v11, "status_code"

    :try_start_e
    iget v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->t:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->p:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v11, :cond_4

    const-string v11, "show_sort"

    :try_start_f
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->p:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->o:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    if-eqz v11, :cond_5

    const-string v11, "load_sort"

    :try_start_10
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->o:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->m:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v11, :cond_6

    const-string v11, "req_bidding_type"

    :try_start_11
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->m:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :cond_6
    const-string v11, "prime_rit"

    :try_start_12
    iget-object v12, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->h:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v12, "get_config_final"

    const-string v13, "mediation_request_end"

    const-string v14, "mediation_fill"

    const-string v15, "bidding_adm_load_fail"

    const-string v8, "bidding_adm_load"

    const-string v2, "media_fill"

    if-nez v11, :cond_8

    :try_start_13
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    if-nez v11, :cond_8

    const-string v11, "mediation_video_cached"

    move-object/from16 v16, v5

    :try_start_14
    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    if-nez v5, :cond_9

    const-string v5, "sdk_backstage"

    :try_start_15
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    if-nez v5, :cond_9

    const-string v5, "return_bidding_result"

    :try_start_16
    iget-object v11, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v17, v10

    goto :goto_3

    :cond_8
    move-object/from16 v16, v5

    :cond_9
    :goto_2
    const-string v5, "duration"

    move-object/from16 v17, v10

    :try_start_17
    iget-wide v10, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->r:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v5, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    :goto_3
    const-string v5, "media_request"

    :try_start_18
    iget-object v10, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    const-string v10, "total_load_fail"

    if-nez v5, :cond_a

    :try_start_19
    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    if-nez v2, :cond_a

    const-string v2, "get_bidding_adm_to_adn"

    :try_start_1a
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    if-nez v2, :cond_a

    const-string v2, "bidding_win_event"

    :try_start_1b
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_show_is_ready"

    :try_start_1c
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_will_show"

    :try_start_1d
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_show"

    :try_start_1e
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_show_fail"

    :try_start_1f
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_show_listen"

    :try_start_20
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_show_fail_listen"

    :try_start_21
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    if-nez v2, :cond_a

    const-string v2, "media_click_listen"

    :try_start_22
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1

    if-nez v2, :cond_a

    const-string v2, "get_config_start"

    :try_start_23
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1

    if-nez v2, :cond_a

    const-string v2, "mediation_request"

    :try_start_24
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "grouping_params"

    :try_start_25
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->k()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->i()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1

    const-string v4, "user_defined_grouping_params"

    if-eqz v2, :cond_c

    :try_start_26
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    :goto_4
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    if-nez v4, :cond_e

    const-string v4, "adapter_request_fail"

    :try_start_27
    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_d
    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e:Ljava/lang/String;

    :goto_5
    const-string v5, "req_id"

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1

    :cond_e
    const-string v4, "country"

    :try_start_28
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v5

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v3

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_f
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v3

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->i:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1

    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    if-eqz v0, :cond_10

    const-string v0, "waterfall_id"

    :try_start_29
    iget-wide v3, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1

    if-nez v0, :cond_11

    const-string v0, "version"

    :try_start_2a
    iget-object v3, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v10

    goto/16 :goto_b

    :cond_13
    move-object/from16 v16, v5

    move-object/from16 v17, v10

    const/4 v2, 0x0

    :cond_14
    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_b

    :cond_15
    move-object v8, v2

    :goto_8
    move-object/from16 v2, v17

    :try_start_2b
    invoke-virtual {v6, v2, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2

    const-string v0, "app_version"

    :try_start_2c
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2

    const-string v0, "conn_type"

    :try_start_2d
    invoke-static/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/e;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_18

    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a()J

    move-result-wide v3

    goto :goto_9

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_9

    :goto_a
    move-object/from16 v5, v16

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mediation_sdk_version"

    const-string v3, "3.6.0.1"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    :goto_b
    :try_start_2e
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    const-string v5, "_err_msg_comm"

    if-nez v4, :cond_19

    :try_start_2f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c

    :cond_19
    move-object/from16 v7, p3

    :goto_c
    if-eqz v1, :cond_1a

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_comm_eventId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    const-string v4, "event_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Lorg/json/JSONObject;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :catchall_0
    :cond_1a
    :goto_d
    return-object v6

    :goto_e
    const/16 v2, 0x60

    const/16 v6, 0x17

    move-object v2, v7

    const/16 v7, 0x60

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "event_extra"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "v1"

    invoke-static {p0, p1, p2, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "device_info"

    :try_start_1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/m;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "v1_err_msg"

    if-nez v2, :cond_0

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "v1_eventId"

    :try_start_4
    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    const-string v2, "event_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    return-object p1
.end method

.method public b()J
    .locals 4

    const/16 v0, 0x49

    const/16 v1, 0x48

    :goto_0
    if-eq v0, v1, :cond_0

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const-string v3, "params"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    :goto_1
    if-eqz v2, :cond_2

    const-string v3, "event_extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "eventIndex"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "localId"

    :try_start_0
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "event"

    :try_start_1
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AdEvent{localId=\'"

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", event="

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
