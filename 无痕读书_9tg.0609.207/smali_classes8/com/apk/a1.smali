.class public Lcom/apk/a1;
.super Lcom/apk/n0;
.source "WebReadLockHelper.java"


# static fields
.field public static private:Lcom/apk/a1;


# instance fields
.field public finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

.field public package:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/n0;-><init>()V

    return-void
.end method

.method public static this()Lcom/apk/a1;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/a1;->private:Lcom/apk/a1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/a1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/a1;->private:Lcom/apk/a1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/a1;

    invoke-direct {v1}, Lcom/apk/a1;-><init>()V

    sput-object v1, Lcom/apk/a1;->private:Lcom/apk/a1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/a1;->private:Lcom/apk/a1;

    return-object v0
.end method


# virtual methods
.method public break(Lcom/apk/k1;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/finally;->goto:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/apk/finally;->super(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/finally;->goto:Lorg/json/JSONObject;

    const-string v1, "page_rd_needgg"

    invoke-static {v0, v1}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/finally;->goto:Lorg/json/JSONObject;

    const-string v1, "CACHE_WEB_AD_KEY"

    .line 6
    invoke-super {p0, v0}, Lcom/apk/n0;->goto(Lorg/json/JSONObject;)V

    .line 7
    const-class v0, Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-static {v0}, Lorg/litepal/LitePal;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/WebReadLockBean;

    iput-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/WebReadLockBean;-><init>()V

    iput-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    .line 9
    iget-wide v4, p0, Lcom/apk/n0;->do:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 10
    iput-boolean v3, p0, Lcom/apk/n0;->if:Z

    .line 11
    invoke-virtual {v0, v4, v5}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->setInterval(J)V

    .line 12
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->setInInterval(Z)V

    .line 13
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/n0;->else:J

    .line 14
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    iget-wide v3, p0, Lcom/apk/n0;->new:J

    invoke-virtual {v0, v3, v4}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->setReadUseTime(J)V

    .line 15
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    iget-wide v3, p0, Lcom/apk/n0;->else:J

    invoke-virtual {v0, v3, v4}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->setStartTime(J)V

    .line 16
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->getStartTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/n0;->else:J

    .line 18
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->getReadUseTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/n0;->new:J

    .line 19
    iget-object v0, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->isInInterval()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/n0;->if:Z

    .line 20
    :goto_1
    iget-boolean v0, p0, Lcom/apk/n0;->if:Z

    if-eqz v0, :cond_3

    .line 21
    iput-boolean v2, p0, Lcom/apk/n0;->this:Z

    .line 22
    iput-boolean v2, p0, Lcom/apk/n0;->final:Z

    .line 23
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-static {v1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/apk/n0;->return:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/apk/n0;->default:Ljava/util/Timer;

    .line 28
    new-instance v2, Lcom/apk/a1$do;

    invoke-direct {v2, p0, p1}, Lcom/apk/a1$do;-><init>(Lcom/apk/a1;Lcom/apk/k1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_6
    :goto_3
    return-void
.end method

.method public catch()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/n0;->if:Z

    .line 3
    iget-object v1, p0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/WebReadLockBean;->setInInterval(Z)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/apk/n0;->else:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/apk/n0;->new:J

    .line 6
    iget-boolean v1, p0, Lcom/apk/n0;->this:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_READ_TIME_SAVE_KEY_WEB"

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v1, "SP_EXTRA_CHAPS_TODAY_KEY_WEB"

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    iget-boolean v2, p0, Lcom/apk/n0;->if:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "inInterval"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    iget-wide v2, p0, Lcom/apk/n0;->else:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-wide v2, p0, Lcom/apk/n0;->new:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "readUseTime"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    const-class v2, Lcom/biquge/ebook/app/bean/WebReadLockBean;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lorg/litepal/LitePal;->updateAllAsync(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object v0

    new-instance v1, Lcom/apk/a1$if;

    invoke-direct {v1, p0}, Lcom/apk/a1$if;-><init>(Lcom/apk/a1;)V

    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->listen(Lorg/litepal/crud/callback/UpdateOrDeleteCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
