.class public Lcom/apk/g0;
.super Ljava/lang/Object;
.source "TtsSpeechUtils.java"


# instance fields
.field public do:Lcom/apk/c0;

.field public for:I

.field public if:Lcom/apk/yb0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/e1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/apk/g0;->for:I

    .line 3
    new-instance v0, Lcom/apk/yb0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v1, Lcom/apk/g0$do;

    invoke-direct {v1, p0, p2, p1}, Lcom/apk/g0$do;-><init>(Lcom/apk/g0;Lcom/apk/e1;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/apk/yb0;-><init>(Lcom/apk/zb0;)V

    iput-object v0, p0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/g0;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public for()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/g0;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/apk/g0;->for:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->resume()I

    :cond_2
    :goto_0
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/g0;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/apk/g0;->for:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->pause()I

    :cond_2
    :goto_0
    return-void
.end method

.method public new(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/g0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    goto :goto_2

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/g0;->for:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 7
    iget-object p1, p1, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->batchSpeak(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_2

    :goto_0
    monitor-exit v0

    throw p1

    .line 11
    :cond_1
    monitor-enter v0

    .line 12
    :try_start_2
    iget-object p2, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 13
    iget-object p2, p2, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/g0;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    iget v0, p0, Lcom/apk/g0;->for:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/apk/c0;->case()V

    :cond_2
    :goto_0
    return-void
.end method
