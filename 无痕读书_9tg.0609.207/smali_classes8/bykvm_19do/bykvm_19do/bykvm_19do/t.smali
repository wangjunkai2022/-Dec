.class public Lbykvm_19do/bykvm_19do/bykvm_19do/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-string v0, "ab_version"

    const-string v1, "device_brand"

    const-string v2, "language"

    const-string v3, "os_api"

    const-string v4, "resolution"

    const-string v5, "google_aid"

    const-string v6, "build_serial"

    const-string v7, "carrier"

    const-string v8, "install_id"

    const-string v9, "package"

    const-string v10, "app_version"

    const-string v11, "device_model"

    const-string v12, "udid"

    const-string v13, "density_dpi"

    const-string v14, "aliyun_uuid"

    const-string v15, "mcc_mnc"

    const-string v16, "sim_region"

    const-string v17, "ab_client"

    const-string v18, "ab_group"

    const-string v19, "ab_feature"

    const-string v20, "device_id"

    const-string v21, "openudid"

    const-string v22, "clientudid"

    const-string v23, "aid"

    .line 1
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a:[Ljava/lang/String;

    const-string v1, "ab_version"

    const-string v2, "device_brand"

    const-string v3, "language"

    const-string v4, "os_api"

    const-string v5, "resolution"

    const-string v6, "google_aid"

    const-string v7, "build_serial"

    const-string v8, "carrier"

    const-string v9, "iid"

    const-string v10, "app_name"

    const-string v11, "version_name"

    const-string v12, "device_type"

    const-string v13, "uuid"

    const-string v14, "dpi"

    const-string v15, "aliyun_uuid"

    const-string v16, "mcc_mnc"

    const-string v17, "sim_region"

    const-string v18, "ab_client"

    const-string v19, "ab_group"

    const-string v20, "ab_feature"

    const-string v21, "device_id"

    const-string v22, "openudid"

    const-string v23, "clientudid"

    const-string v24, "aid"

    .line 2
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    sget-object v4, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_2

    .line 4
    aget-object v4, v4, v3

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    sget-object v5, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 7
    :try_start_0
    invoke-interface {p4, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/b;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p4

    goto :goto_1

    :catch_0
    move-exception p4

    goto :goto_2

    :cond_3
    move-object p4, v6

    .line 8
    :goto_1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 10
    :goto_2
    invoke-static {p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 11
    :cond_4
    :goto_3
    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->i()Lbykvm_19do/bykvm_19do/bykvm_19do/d;

    move-result-object p4

    if-nez p4, :cond_5

    move-object p4, v6

    goto :goto_4

    :cond_5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->i()Lbykvm_19do/bykvm_19do/bykvm_19do/d;

    move-result-object p4

    invoke-interface {p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/d;->a()Ljava/util/HashMap;

    move-result-object p4

    :goto_4
    if-eqz p4, :cond_6

    .line 12
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p4

    .line 13
    invoke-static {p4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 14
    :cond_6
    :goto_5
    sget-object p4, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p4

    if-lez p4, :cond_7

    .line 15
    sget-object p4, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    if-eqz p3, :cond_8

    const-string p3, "ssmix"

    const-string p4, "a"

    .line 16
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_8
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    const-string p3, "ac"

    .line 19
    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string p0, "tweaked_channel"

    const-string p3, ""

    .line 20
    invoke-static {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v3, "channel"

    if-eqz p4, :cond_a

    .line 22
    invoke-static {v3, p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 23
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 24
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string p0, "os_version"

    .line 25
    invoke-virtual {p1, p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-le p4, v2, :cond_c

    .line 27
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 28
    :cond_c
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p3, "_rticket"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "device_platform"

    const-string p3, "android"

    .line 30
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, -0x1

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "version_code"

    invoke-static {p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p0, :cond_d

    .line 32
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "manifest_version_code"

    invoke-static {p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p0, :cond_e

    .line 34
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "update_version_code"

    invoke-static {p4, p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p0, :cond_f

    .line 36
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string p0, "oaid"

    .line 37
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_10

    .line 39
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string p0, "cdid"

    .line 40
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 42
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string p0, "/"

    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 44
    invoke-static {p2, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    :cond_12
    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_13

    goto :goto_6

    :cond_13
    const/16 p1, 0x26

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/v1;Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 6

    .line 46
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->f()Lcom/apk/ls;

    move-result-object p0

    .line 47
    iget-object p0, p0, Lcom/apk/ls;->for:[Ljava/lang/String;

    .line 48
    array-length v0, p0

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    .line 50
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "?tt_data=a"

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    const/4 v2, 0x0

    .line 51
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v2

    invoke-static {v3, v4, v1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, p2, v3, v5, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 54
    aget-object v3, v0, v2

    sget-object v4, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->d:[Ljava/lang/String;

    invoke-static {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
