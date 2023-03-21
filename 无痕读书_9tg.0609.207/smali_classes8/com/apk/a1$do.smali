.class public Lcom/apk/a1$do;
.super Ljava/util/TimerTask;
.source "WebReadLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a1;->break(Lcom/apk/k1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/k1;

.field public final synthetic if:Lcom/apk/a1;


# direct methods
.method public constructor <init>(Lcom/apk/a1;Lcom/apk/k1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a1$do;->if:Lcom/apk/a1;

    iput-object p2, p0, Lcom/apk/a1$do;->do:Lcom/apk/k1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/apk/a1$do;->if:Lcom/apk/a1;

    iget-object v1, p0, Lcom/apk/a1$do;->do:Lcom/apk/k1;

    .line 2
    iget-boolean v2, v0, Lcom/apk/a1;->package:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-boolean v2, v0, Lcom/apk/n0;->break:Z

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v2, "SP_EXTRA_CHAPS_TODAY_KEY_WEB"

    const-string v3, "SP_READ_TIME_SAVE_KEY_WEB"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 4
    :try_start_0
    iget-boolean v7, v0, Lcom/apk/n0;->final:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 5
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    .line 6
    invoke-static {v2, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v2, v7}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/apk/n0;->this:Z

    if-eqz v2, :cond_6

    .line 11
    invoke-static {v3}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 13
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v3, v9, v10}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    :cond_4
    invoke-static {v3, v4, v5}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 16
    iget-boolean v7, v0, Lcom/apk/n0;->if:Z

    if-eqz v7, :cond_5

    iget-wide v9, v0, Lcom/apk/n0;->do:J

    goto :goto_1

    :cond_5
    iget-wide v9, v0, Lcom/apk/n0;->for:J

    :goto_1
    cmp-long v7, v2, v9

    if-lez v7, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    iget-wide v2, v0, Lcom/apk/n0;->new:J

    iget-boolean v7, v0, Lcom/apk/n0;->if:Z

    if-eqz v7, :cond_7

    iget-wide v9, v0, Lcom/apk/n0;->do:J

    goto :goto_2

    :cond_7
    iget-wide v9, v0, Lcom/apk/n0;->for:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    cmp-long v7, v2, v9

    if-lez v7, :cond_8

    goto :goto_3

    :catch_0
    :cond_8
    const/4 v8, 0x0

    .line 18
    :goto_3
    iput-boolean v8, v0, Lcom/apk/n0;->break:Z

    if-eqz v8, :cond_9

    if-eqz v1, :cond_9

    .line 19
    invoke-interface {v1}, Lcom/apk/k1;->do()V

    .line 20
    :cond_9
    iget-object v1, v0, Lcom/apk/a1;->finally:Lcom/biquge/ebook/app/bean/WebReadLockBean;

    if-eqz v1, :cond_b

    .line 21
    iget-wide v1, v0, Lcom/apk/n0;->new:J

    const-wide/16 v7, 0x2710

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/apk/n0;->new:J

    .line 22
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    cmp-long v3, v1, v4

    if-eqz v3, :cond_a

    const-string v3, "readUseTime"

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    :cond_a
    const-class v1, Lcom/biquge/ebook/app/bean/WebReadLockBean;

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_b
    :goto_4
    return-void
.end method
