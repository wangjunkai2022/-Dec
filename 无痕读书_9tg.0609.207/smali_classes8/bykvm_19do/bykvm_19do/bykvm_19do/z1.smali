.class public Lbykvm_19do/bykvm_19do/bykvm_19do/z1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/t1;
.source "SourceFile"


# static fields
.field public static final d:[J

.field public static final e:[J

.field public static final f:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->d:[J

    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->e:[J

    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->f:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
    .end array-data

    :array_1
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    :array_2
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0x1770
        0x2bf20
        0x2bf20
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/v1;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->l()J

    move-result-wide v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->e()Lbykvm_19do/bykvm_19do/bykvm_19do/b2;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1499700

    goto :goto_0

    :cond_0
    const v2, 0x2932e00

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()[J
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->k()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->e:[J

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->d:[J

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->e:[J

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->f:[J

    :goto_0
    return-object v0
.end method

.method public d()Z
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "_gen_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    .line 7
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->f()Lcom/apk/ls;

    move-result-object v3

    .line 8
    iget-object v3, v3, Lcom/apk/ls;->do:Ljava/lang/String;

    .line 9
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    move-result-object v4

    const/4 v5, 0x1

    .line 10
    invoke-static {v1, v2, v3, v5, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "device_id"

    const-string v2, ""

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "install_id"

    .line 12
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ssid"

    .line 13
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "r"

    return-object v0
.end method
