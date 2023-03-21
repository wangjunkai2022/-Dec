.class public Lbykvm_19do/bykvm_19do/bykvm_19do/y1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/t1;
.source "SourceFile"


# static fields
.field public static final e:[J


# instance fields
.field public d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/y1;->e:[J

    return-void
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

    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/y1;->d:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()[J
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/y1;->e:[J

    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->e()Lbykvm_19do/bykvm_19do/bykvm_19do/b2;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/32 v3, 0xc350

    .line 3
    invoke-virtual {v2, v0, v1, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/b2;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "play_session"

    .line 4
    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->k()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->d()Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t1;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->b()Lbykvm_19do/bykvm_19do/bykvm_19do/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/y1;->d:J

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "p"

    return-object v0
.end method
