.class public Lbykvm_19do/bykvm_19do/bykvm_19do/c0;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/u;
.source "SourceFile"


# static fields
.field public static o:Ljava/lang/String; = "succEvent"


# instance fields
.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->l()I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    .line 5
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    .line 7
    iput p3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/k0;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->n:J

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    const/4 v0, 0x2

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    const/4 v0, 0x5

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    const/4 v0, 0x6

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    const/4 v0, 0x7

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    const/16 v0, 0x8

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    const/16 v0, 0x9

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->n:J

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tea_event_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    const-string v1, "event_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_monitor"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bav_monitor_rate"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    const-string v1, "monitor_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "monitor_num"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 22
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const-string v2, "local_time_ms"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    const-string v2, "tea_event_index"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d:Ljava/lang/String;

    const-string v1, "user_unique_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    const-string v1, "event_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    const-string v1, "is_monitor"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    const-string v1, "bav_monitor_rate"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    const-string v1, "monitor_status"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    const-string v1, "monitor_num"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->n:J

    const-string v2, "date"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 20

    const-string v0, "local_time_ms"

    const-string v1, "integer"

    const-string v2, "tea_event_index"

    const-string v3, "integer"

    const-string v4, "session_id"

    const-string v5, "varchar"

    const-string v6, "user_unique_id"

    const-string v7, "varchar"

    const-string v8, "event_name"

    const-string v9, "varchar"

    const-string v10, "is_monitor"

    const-string v11, "integer"

    const-string v12, "bav_monitor_rate"

    const-string v13, "integer"

    const-string v14, "monitor_status"

    const-string v15, "varchar"

    const-string v16, "monitor_num"

    const-string v17, "integer"

    const-string v18, "date"

    const-string v19, "integer"

    .line 1
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_19do/u;
    .locals 5

    const-string v0, "local_time_ms"

    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->a:J

    const-string v0, "tea_event_index"

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->b:J

    const-string v0, "session_id"

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->c:Ljava/lang/String;

    const-string v0, "user_unique_id"

    .line 10
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/u;->d:Ljava/lang/String;

    const-string v0, "event_name"

    .line 11
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    const-string v0, "is_monitor"

    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    const-string v0, "bav_monitor_rate"

    .line 13
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    const-string v0, "monitor_status"

    .line 14
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    const-string v0, "monitor_num"

    .line 15
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    const-string v0, "date"

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->n:J

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->i:Ljava/lang/String;

    const-string v2, "event_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->j:I

    const-string v2, "is_monitor"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->k:I

    const-string v2, "bav_monitor_rate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->l:Ljava/lang/String;

    const-string v2, "monitor_status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->m:I

    const-string v2, "monitor_num"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;->o:Ljava/lang/String;

    return-object v0
.end method
