.class public Lcom/apk/t0;
.super Ljava/util/TimerTask;
.source "ReadTimerHelper.java"


# instance fields
.field public final synthetic do:Lcom/apk/s0;


# direct methods
.method public constructor <init>(Lcom/apk/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t0;->do:Lcom/apk/s0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/t0;->do:Lcom/apk/s0;

    .line 2
    iget-boolean v1, v0, Lcom/apk/s0;->new:Z

    if-eqz v1, :cond_3

    .line 3
    iget-boolean v1, v0, Lcom/apk/s0;->class:Z

    const/4 v2, 0x0

    const-string v3, "SP_TTS_SHOW_REWARD_DIALOG_KEY"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v1, "SP_TTS_TIME_SAVE_KEY"

    const-wide/16 v5, 0x0

    .line 4
    invoke-static {v1, v5, v6}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 6
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v1, v7, v8}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 8
    iget v1, v0, Lcom/apk/s0;->goto:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    .line 9
    invoke-static {v3, v4}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iput-boolean v2, v0, Lcom/apk/s0;->new:Z

    .line 11
    iget-object v1, v0, Lcom/apk/s0;->final:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 13
    iput-object v4, v0, Lcom/apk/s0;->final:Ljava/util/Timer;

    goto :goto_0

    .line 14
    :cond_1
    iget v1, v0, Lcom/apk/s0;->goto:I

    .line 15
    iget v5, v0, Lcom/apk/s0;->this:I

    if-lez v5, :cond_2

    sub-int/2addr v1, v5

    :cond_2
    const-string v5, "SP_TTS_USE_TIME_KEY"

    .line 16
    invoke-static {v5, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 17
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v6, v5, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget v5, v0, Lcom/apk/s0;->goto:I

    if-lt v1, v5, :cond_3

    .line 19
    invoke-static {v3, v4}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iput-boolean v2, v0, Lcom/apk/s0;->new:Z

    .line 21
    iget-object v1, v0, Lcom/apk/s0;->final:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 23
    iput-object v4, v0, Lcom/apk/s0;->final:Ljava/util/Timer;

    :cond_3
    :goto_0
    return-void
.end method
