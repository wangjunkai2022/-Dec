.class public Lcom/apk/r0;
.super Lcom/apk/n0;
.source "ReadLockHelper.java"


# static fields
.field public static strictfp:Lcom/apk/r0;


# instance fields
.field public abstract:Z

.field public continue:Z

.field public finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

.field public package:Lcom/apk/k1;

.field public private:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/n0;-><init>()V

    return-void
.end method

.method public static break(ZZJ)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SP_EXTRA_CHAPS_TODAY_KEY"

    const-string p2, ""

    .line 2
    invoke-static {p1, p2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, p1, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_1
    if-eqz p1, :cond_3

    const-string p0, "SP_EXTRA_CHAPS_HOUR_KEY"

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {p0, v1, v2}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 8
    sget-object p3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p3, p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    invoke-static {p0, v1, v2}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide p0

    sub-long/2addr v3, p0

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long v1, p0, p2

    if-lez v1, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static catch()Lcom/apk/r0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/r0;->strictfp:Lcom/apk/r0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/r0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/r0;->strictfp:Lcom/apk/r0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/r0;

    invoke-direct {v1}, Lcom/apk/r0;-><init>()V

    sput-object v1, Lcom/apk/r0;->strictfp:Lcom/apk/r0;

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
    sget-object v0, Lcom/apk/r0;->strictfp:Lcom/apk/r0;

    return-object v0
.end method

.method public static final(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_NOVEL_CHAPTER_NEED_VIDEO_AD_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static import(JJLjava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    const-string v3, "startTime"

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    cmp-long p0, p2, v1

    if-eqz p0, :cond_1

    const-string p0, "readUseTime"

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "readChapterIds"

    .line 5
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    const-class p0, Lcom/biquge/ebook/app/bean/ReadLockBean;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public class()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/apk/r0;->private:Z

    if-eqz v0, :cond_0

    const v0, 0x7f10029c

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/n0;->class:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/apk/n0;->catch:Z

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/apk/n0;->catch:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const v0, 0x7f10029d

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/apk/n0;->class:I

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const v0, 0x7f1002a0

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/apk/n0;->try()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public const(Ljava/lang/String;Ljava/lang/String;Lcom/apk/k1;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/apk/n0;->switch:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lcom/apk/r0;->package:Lcom/apk/k1;

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/apk/finally;->case:Lorg/json/JSONObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/apk/finally;->super(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/apk/finally;->case:Lorg/json/JSONObject;

    const-string v1, "viewsptoread"

    invoke-static {v0, v1}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/apk/finally;->case:Lorg/json/JSONObject;

    const-string v1, "CACHE_NOVEL_AD_KEY"

    .line 8
    invoke-super {p0, v0}, Lcom/apk/n0;->goto(Lorg/json/JSONObject;)V

    .line 9
    const-class v0, Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-static {v0}, Lorg/litepal/LitePal;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ReadLockBean;

    iput-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/ReadLockBean;-><init>()V

    iput-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    .line 11
    iget-wide v4, p0, Lcom/apk/n0;->do:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 12
    iput-boolean v2, p0, Lcom/apk/n0;->if:Z

    .line 13
    invoke-virtual {v0, v4, v5}, Lcom/biquge/ebook/app/bean/ReadLockBean;->setInterval(J)V

    .line 14
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/ReadLockBean;->setInInterval(Z)V

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/apk/n0;->else:J

    .line 16
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    iget-wide v4, p0, Lcom/apk/n0;->new:J

    invoke-virtual {v0, v4, v5}, Lcom/biquge/ebook/app/bean/ReadLockBean;->setReadUseTime(J)V

    .line 17
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    iget-wide v4, p0, Lcom/apk/n0;->else:J

    invoke-virtual {v0, v4, v5}, Lcom/biquge/ebook/app/bean/ReadLockBean;->setStartTime(J)V

    .line 18
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ReadLockBean;->getStartTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/apk/n0;->else:J

    .line 20
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ReadLockBean;->getReadUseTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/apk/n0;->new:J

    .line 21
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ReadLockBean;->getReadChapterIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ReadLockBean;->isInInterval()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/n0;->if:Z

    .line 23
    :goto_1
    iget-boolean v0, p0, Lcom/apk/n0;->if:Z

    const-string v4, ""

    const-string v5, "SP_VIEWTOPREWARD_CHAPTERS_KEY"

    if-eqz v0, :cond_3

    .line 24
    iput-boolean v3, p0, Lcom/apk/n0;->this:Z

    .line 25
    iput-boolean v3, p0, Lcom/apk/n0;->final:Z

    goto :goto_2

    .line 26
    :cond_3
    iget v0, p0, Lcom/apk/n0;->class:I

    if-lez v0, :cond_4

    .line 27
    iput-boolean v2, p0, Lcom/apk/n0;->catch:Z

    .line 28
    invoke-static {v5, v4}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 30
    :cond_4
    :goto_2
    :try_start_0
    invoke-static {v1}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-static {v1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/apk/n0;->return:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    .line 34
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "yes"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 36
    :cond_7
    iput-boolean v3, p0, Lcom/apk/r0;->private:Z

    if-eqz v3, :cond_8

    .line 37
    invoke-static {p1}, Lcom/apk/r0;->final(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 38
    iput-boolean v2, p0, Lcom/apk/n0;->break:Z

    if-eqz p3, :cond_8

    .line 39
    invoke-interface {p3}, Lcom/apk/k1;->for()V

    .line 40
    :cond_8
    iget-boolean p1, p0, Lcom/apk/r0;->private:Z

    if-eqz p1, :cond_9

    return-void

    .line 41
    :cond_9
    iget-boolean p1, p0, Lcom/apk/n0;->catch:Z

    if-eqz p1, :cond_c

    .line 42
    iget-boolean p1, p0, Lcom/apk/n0;->final:Z

    iget-boolean p2, p0, Lcom/apk/n0;->super:Z

    iget-wide v0, p0, Lcom/apk/n0;->throw:J

    invoke-static {p1, p2, v0, v1}, Lcom/apk/r0;->break(ZZJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 43
    invoke-virtual {p0}, Lcom/apk/r0;->this()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 44
    iput-boolean v2, p0, Lcom/apk/n0;->break:Z

    if-eqz p3, :cond_a

    .line 45
    invoke-interface {p3}, Lcom/apk/k1;->do()V

    :cond_a
    return-void

    .line 46
    :cond_b
    invoke-static {v5, v4}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 49
    array-length p1, p1

    iget p2, p0, Lcom/apk/n0;->class:I

    if-lt p1, p2, :cond_c

    .line 50
    invoke-virtual {p0}, Lcom/apk/r0;->this()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 51
    iput-boolean v2, p0, Lcom/apk/n0;->break:Z

    if-eqz p3, :cond_c

    .line 52
    invoke-interface {p3}, Lcom/apk/k1;->do()V

    .line 53
    :cond_c
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/apk/n0;->default:Ljava/util/Timer;

    .line 54
    new-instance v4, Lcom/apk/r0$do;

    invoke-direct {v4, p0, p3}, Lcom/apk/r0$do;-><init>(Lcom/apk/r0;Lcom/apk/k1;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_d
    :goto_4
    return-void
.end method

.method public synthetic super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v1, v2, v0}, Lcom/apk/r0;->import(JJLjava/lang/String;)V

    return-void
.end method

.method public final this()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->switch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/apk/n0;->throws:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SP_NOVEL_REWARD_CHAPTER_ID_KEY"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/apk/n0;->switch:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/n0;->switch:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public throw(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string p2, "SP_NOVEL_CHAPTER_NEED_VIDEO_AD_KEY"

    const-string v2, "#"

    .line 2
    invoke-static {p2, p1, v2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, p1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iput-boolean v1, p0, Lcom/apk/n0;->break:Z

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/apk/n0;->catch:Z

    const/4 p2, 0x0

    const-string v2, "SP_VIEWTOPREWARD_CHAPTERS_KEY"

    if-eqz p1, :cond_2

    .line 6
    invoke-static {v2}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Lcom/apk/n0;->const:Ljava/lang/String;

    const-string p1, "SP_EXTRA_CHAPS_TODAY_KEY"

    .line 8
    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    const-string p1, "SP_EXTRA_CHAPS_HOUR_KEY"

    .line 9
    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 10
    iput-boolean v1, p0, Lcom/apk/n0;->break:Z

    .line 11
    :cond_2
    iput-boolean v1, p0, Lcom/apk/n0;->if:Z

    .line 12
    iget-object p1, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/ReadLockBean;->setInInterval(Z)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/n0;->else:J

    const-wide/16 v3, 0x0

    .line 14
    iput-wide v3, p0, Lcom/apk/n0;->new:J

    .line 15
    iput-object v0, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    .line 16
    iget-boolean p1, p0, Lcom/apk/n0;->this:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 18
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_READ_TIME_SAVE_KEY"

    invoke-virtual {p1, v0, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 19
    :cond_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 20
    iget-boolean v0, p0, Lcom/apk/n0;->if:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "inInterval"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    iget-wide v3, p0, Lcom/apk/n0;->else:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "startTime"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget-wide v3, p0, Lcom/apk/n0;->new:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "readUseTime"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-object v0, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    const-string v3, "readChapterIds"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-class v0, Lcom/biquge/ebook/app/bean/ReadLockBean;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/litepal/LitePal;->updateAllAsync(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    move-result-object p1

    new-instance v0, Lcom/apk/r0$if;

    invoke-direct {v0, p0}, Lcom/apk/r0$if;-><init>(Lcom/apk/r0;)V

    invoke-virtual {p1, v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->listen(Lorg/litepal/crud/callback/UpdateOrDeleteCallback;)V

    .line 25
    iget p1, p0, Lcom/apk/n0;->class:I

    if-lez p1, :cond_4

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/apk/n0;->catch:Z

    .line 27
    invoke-static {v2}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/apk/n0;->const:Ljava/lang/String;

    :cond_4
    const-string p1, "SP_NOVEL_REWARD_CHAPTER_ID_KEY"

    .line 29
    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final while(Lcom/apk/k1;Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/apk/r0;->continue:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/apk/n0;->break:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/apk/r0;->private:Z

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/apk/n0;->catch:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-boolean v3, p0, Lcom/apk/r0;->abstract:Z

    if-eqz v3, :cond_4

    goto/16 :goto_3

    .line 6
    :cond_4
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    .line 7
    :cond_5
    iget-boolean v3, p0, Lcom/apk/n0;->this:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const-string v3, "SP_READ_TIME_SAVE_KEY"

    if-eqz p2, :cond_6

    .line 8
    :try_start_1
    invoke-static {v3}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v7, v3, v5, v6}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    :cond_6
    invoke-static {v3, v0, v1}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 13
    iget-boolean v3, p0, Lcom/apk/n0;->if:Z

    if-eqz v3, :cond_7

    iget-wide v7, p0, Lcom/apk/n0;->do:J

    goto :goto_0

    :cond_7
    iget-wide v7, p0, Lcom/apk/n0;->for:J

    :goto_0
    cmp-long v3, v5, v7

    if-lez v3, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    iget-wide v5, p0, Lcom/apk/n0;->new:J

    iget-boolean v3, p0, Lcom/apk/n0;->if:Z

    if-eqz v3, :cond_9

    iget-wide v7, p0, Lcom/apk/n0;->do:J

    goto :goto_1

    :cond_9
    iget-wide v7, p0, Lcom/apk/n0;->for:J

    :goto_1
    cmp-long v3, v5, v7

    if-lez v3, :cond_a

    goto :goto_4

    .line 15
    :cond_a
    iget-boolean v3, p0, Lcom/apk/n0;->if:Z

    if-nez v3, :cond_c

    .line 16
    iget-object v3, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 17
    iget-object v3, p0, Lcom/apk/n0;->goto:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    .line 18
    :goto_2
    iget v5, p0, Lcom/apk/n0;->case:I

    if-lt v3, v5, :cond_c

    .line 19
    iget-wide v5, p0, Lcom/apk/n0;->else:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/apk/n0;->try:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v3, v5, v7

    if-lez v3, :cond_c

    goto :goto_4

    :catch_0
    :cond_c
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_d

    .line 20
    invoke-virtual {p0}, Lcom/apk/r0;->this()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    move v2, v4

    .line 21
    :goto_5
    iput-boolean v2, p0, Lcom/apk/n0;->break:Z

    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    .line 22
    invoke-interface {p1}, Lcom/apk/k1;->do()V

    :cond_e
    if-eqz p2, :cond_f

    .line 23
    iget-object p1, p0, Lcom/apk/r0;->finally:Lcom/biquge/ebook/app/bean/ReadLockBean;

    if-eqz p1, :cond_f

    .line 24
    iget-wide p1, p0, Lcom/apk/n0;->new:J

    const-wide/16 v2, 0x2710

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/apk/n0;->new:J

    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, p1, p2, v2}, Lcom/apk/r0;->import(JJLjava/lang/String;)V

    :cond_f
    return-void
.end method
