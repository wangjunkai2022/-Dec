.class public Lbykvm_19do/bykvm_19do/bykvm_19do/k1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/t1;
.source "SourceFile"


# instance fields
.field public d:J


# direct methods
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
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->c()Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->K()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 2
    :cond_0
    iget-wide v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k1;->d:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public c()[J
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->e:[J

    return-object v0
.end method

.method public d()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->k()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v3

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "header"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "magic_tag"

    const-string v4, "ss_app_log"

    .line 6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "_gen_time"

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    .line 9
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v4

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->f()Lcom/apk/ls;

    move-result-object v5

    .line 10
    iget-object v5, v5, Lcom/apk/ls;->try:Ljava/lang/String;

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    move-result-object v6

    const/4 v7, 0x1

    .line 12
    invoke-static {v3, v4, v5, v7, v6}, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;

    move-result-object v3

    .line 13
    sget-object v4, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->e:[Ljava/lang/String;

    invoke-static {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b()Lorg/json/JSONObject;

    move-result-object v3

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_19do/c;

    move-result-object v4

    invoke-static {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {v4, v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/c;->b(ZLorg/json/JSONObject;)V

    .line 16
    sget-boolean v3, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v3, :cond_0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Lorg/json/JSONObject;)V

    .line 19
    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/k1;->d:J

    return v7

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ab"

    return-object v0
.end method
