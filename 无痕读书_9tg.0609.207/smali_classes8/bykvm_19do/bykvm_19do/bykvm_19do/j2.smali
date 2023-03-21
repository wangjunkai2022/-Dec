.class public Lbykvm_19do/bykvm_19do/bykvm_19do/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Landroid/content/SharedPreferences;

.field public volatile f:Lorg/json/JSONObject;

.field public volatile g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    const-string p2, "embed_applog_stats"

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    .line 5
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a:Landroid/content/Context;

    const-string p2, "embed_header_custom"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    .line 6
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a:Landroid/content/Context;

    const-string p2, "embed_last_sp_session"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_monitor_rate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    const-string v1, "header_custom_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    const-string v1, "user_unique_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->p()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->a:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/m0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->a(I)Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->a(I)Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->p()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public K()J
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "abtest_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public L()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "ab_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    const-string v3, "ab_configure"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :cond_1
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->f:Lorg/json/JSONObject;

    .line 7
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public N()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_ab_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_log_collect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P()J
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "session_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()J
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "batch_event_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_last_day"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_order"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 14

    .line 2
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "setConfig, "

    .line 3
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->g:Lorg/json/JSONObject;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "session_interval"

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x3e8

    const-wide/32 v11, 0x93a80

    cmp-long v13, v5, v7

    if-lez v13, :cond_1

    cmp-long v13, v5, v11

    if-gtz v13, :cond_1

    mul-long v5, v5, v9

    .line 8
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v3, "batch_event_interval"

    .line 10
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    cmp-long v13, v5, v7

    if-lez v13, :cond_2

    cmp-long v7, v5, v11

    if-gtz v7, :cond_2

    mul-long v5, v5, v9

    .line 11
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const-string v3, "send_launch_timely"

    .line 13
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    int-to-long v6, v5

    cmp-long v8, v6, v11

    if-gtz v8, :cond_3

    .line 14
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    const-string v3, "abtest_fetch_interval"

    .line 16
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x14

    cmp-long v13, v5, v7

    if-lez v13, :cond_4

    cmp-long v7, v5, v11

    if-gtz v7, :cond_4

    mul-long v5, v5, v9

    .line 17
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 18
    :cond_4
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    const-string v3, "bav_log_collect"

    const/4 v5, 0x1

    .line 19
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 21
    :cond_5
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_4
    const-string v3, "bav_ab_config"

    .line 22
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 23
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 24
    :cond_6
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    const-string v3, "bav_monitor_rate"

    .line 25
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_7

    const/16 v6, 0x64

    if-gt p1, v6, :cond_7

    .line 26
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-static {v5}, Lbykvm_19do/bykvm_19do/bykvm_19do/k0;->a(Z)V

    goto :goto_6

    .line 28
    :cond_7
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-static {v4}, Lbykvm_19do/bykvm_19do/bykvm_19do/k0;->a(Z)V

    :goto_6
    const-string p1, "app_log_last_config_time"

    .line 30
    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/u;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "setAbConfig, "

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ab_configure"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->x()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->u()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->m()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->A()Z

    move-result v0

    return v0
.end method

.method public p()Lbykvm_19do/bykvm_19do/bykvm_19do/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->C()Z

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_last_day"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->d:Landroid/content/SharedPreferences;

    const-string v1, "session_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public w()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->B()Z

    move-result v0

    return v0
.end method

.method public y()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public z()J
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
