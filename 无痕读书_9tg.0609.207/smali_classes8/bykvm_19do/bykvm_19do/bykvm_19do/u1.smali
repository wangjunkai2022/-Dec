.class public Lbykvm_19do/bykvm_19do/bykvm_19do/u1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/t1;
.source "SourceFile"


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
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->c()Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->z()J

    move-result-wide v0

    const-wide/32 v2, 0x1499700

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()[J
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->e:[J

    return-object v0
.end method

.method public d()Z
    .locals 6

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

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->c()Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->z()J

    move-result-wide v1

    const-wide/32 v3, 0x1499700

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    .line 6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "_gen_time"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    .line 9
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->f()Lcom/apk/ls;

    move-result-object v3

    .line 10
    iget-object v3, v3, Lcom/apk/ls;->new:Ljava/lang/String;

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    move-result-object v4

    const/4 v5, 0x1

    .line 12
    invoke-static {v0, v2, v3, v5, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->e:[Ljava/lang/String;

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_19do/c;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->c()Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->y()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-interface {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/c;->a(ZLorg/json/JSONObject;)V

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->c()Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a(Lorg/json/JSONObject;)V

    return v5

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    return-object v0
.end method
