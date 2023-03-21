.class public Lbykvm_19do/bykvm_19do/bykvm_19do/d0;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/u;
.source "SourceFile"


# instance fields
.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 0

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const-string v3, "local_time_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    const-string v3, "tea_event_index"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;->j:J

    const-string v3, "stop_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;->i:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->g:Ljava/lang/String;

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->e:Ljava/lang/String;

    const-string v2, "ab_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f:Ljava/lang/String;

    const-string v2, "ab_sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "terminate"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/d0;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
