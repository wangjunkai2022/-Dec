.class public Lbykvm_19do/bykvm_19do/bykvm_19do/a0;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/u;
.source "SourceFile"


# instance fields
.field public i:[B

.field public j:I

.field public k:I

.field public l:Lorg/json/JSONArray;

.field public m:Lorg/json/JSONArray;

.field public n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

.field public o:Lorg/json/JSONArray;

.field public p:Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

.field public q:Lorg/json/JSONObject;

.field public r:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 2

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const/4 v0, 0x1

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->i:[B

    const/4 v0, 0x2

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->j:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->q:Lorg/json/JSONObject;

    .line 14
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    .line 15
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->p:Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    .line 16
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    .line 17
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->l:Lorg/json/JSONArray;

    .line 18
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    .line 19
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->r:Lorg/json/JSONArray;

    return-object p0
.end method

.method public a(JLorg/json/JSONObject;Lbykvm_19do/bykvm_19do/bykvm_19do/z;Lbykvm_19do/bykvm_19do/bykvm_19do/d0;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    .line 2
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->q:Lorg/json/JSONObject;

    .line 3
    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    .line 4
    iput-object p5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->p:Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    .line 6
    iput-object p7, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->l:Lorg/json/JSONArray;

    .line 7
    iput-object p8, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    .line 8
    iput-object p9, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->r:Lorg/json/JSONArray;

    return-void
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "_data"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 8

    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "_data"

    const-string v3, "blob"

    const-string v4, "_fail"

    const-string v5, "integer"

    const-string v6, "_full"

    const-string v7, "integer"

    .line 9
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 0

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->q:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/s;->b:Lorg/json/JSONObject;

    const-string v2, "time_sync"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 7
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "launch"

    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->p:Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->f()Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 13
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 14
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    .line 15
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "page_key"

    const-string v9, ""

    .line 16
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "duration"

    .line 17
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 18
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    const-string v3, "activites"

    .line 19
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "terminate"

    .line 22
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->l:Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-lez v1, :cond_6

    .line 24
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->l:Lorg/json/JSONArray;

    const-string v4, "event"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_6
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 26
    :goto_3
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    if-nez v4, :cond_8

    .line 27
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    iput-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    goto :goto_5

    :cond_8
    if-lez v3, :cond_9

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_9

    .line 28
    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->o:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 29
    :cond_9
    :goto_5
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-lez v4, :cond_b

    .line 30
    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->m:Lorg/json/JSONArray;

    const-string v6, "event_v3"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_b
    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->r:Lorg/json/JSONArray;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    :cond_c
    if-lez v2, :cond_d

    .line 32
    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->r:Lorg/json/JSONArray;

    const-string v6, "log_data"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wP {"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->n:Lbykvm_19do/bykvm_19do/bykvm_19do/z;

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    const-string v6, "la"

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/a0;->p:Lbykvm_19do/bykvm_19do/bykvm_19do/d0;

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    const-string v6, "te"

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", p: "

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v1: "

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v3: "

    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", m: "

    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "pack"

    return-object v0
.end method
