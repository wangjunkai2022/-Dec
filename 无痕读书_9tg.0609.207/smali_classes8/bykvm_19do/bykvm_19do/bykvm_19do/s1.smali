.class public Lbykvm_19do/bykvm_19do/bykvm_19do/s1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/t1;
.source "SourceFile"


# instance fields
.field public d:Z


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
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/s1;->d:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public c()[J
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z1;->d:[J

    return-object v0
.end method

.method public d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->k()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    .line 4
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

    .line 5
    iget-object v3, v3, Lcom/apk/ls;->if:Ljava/lang/String;

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    move-result-object v4

    const/4 v5, 0x1

    .line 7
    invoke-static {v1, v2, v3, v5, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/t;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLbykvm_19do/bykvm_19do/bykvm_19do/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/s1;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/s1;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ac"

    return-object v0
.end method
