.class public Lcom/baidu/tts/b/b/b/b;
.super Lcom/baidu/tts/b/b/b/a;
.source "AudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/b/b/b$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Ljava/util/concurrent/locks/Condition;

.field public volatile d:Landroid/media/AudioTrack;

.field public e:Lcom/baidu/tts/b/b/b/b$a;

.field public f:Lcom/baidu/tts/i/a/b;

.field public g:Z

.field public h:I

.field public i:Lcom/baidu/tts/b/b/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/a;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/i/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/i/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    return-void
.end method

.method private a(III)I
    .locals 4

    .line 17
    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/16 v3, 0xc

    if-eq p2, v3, :cond_0

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    if-ne p3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    mul-int p2, p2, v0

    .line 19
    rem-int p2, p1, p2

    if-nez p2, :cond_3

    if-ge p1, v2, :cond_4

    :cond_3
    const/16 p1, 0x1400

    :cond_4
    return p1
.end method

.method private b(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/b;->a(I)V

    .line 25
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->a()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->d(Lcom/baidu/tts/m/h;)V

    return-void
.end method

.method private c(I)I
    .locals 1

    .line 10
    iget v0, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    if-le p1, v0, :cond_0

    .line 11
    iput p1, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    .line 12
    :cond_0
    iget p1, p0, Lcom/baidu/tts/b/b/b/b;->h:I

    return p1
.end method

.method private c(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/i/a/b;->b()V

    .line 9
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->f(Lcom/baidu/tts/m/h;)V

    return-void
.end method

.method private d(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method private f(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/c;->j()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 3
    div-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public a(FF)I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(F)V

    .line 66
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/b/b/b/b$a;->b(F)V

    return v0
.end method

.method public a(I)I
    .locals 9

    const-string v0, "AudioTrackPlayer"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioStreamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/m/c;->i()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v4

    .line 25
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v5

    .line 26
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v6

    .line 27
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v8

    .line 28
    invoke-direct {p0, v4, v5, v6}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v7

    .line 29
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 30
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 31
    :cond_1
    new-instance v1, Landroid/media/AudioTrack;

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 32
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/c;->d(I)V

    .line 33
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p1}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result p1

    .line 34
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result v1

    .line 35
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2, p1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 36
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 38
    monitor-exit v0

    return p1

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(II)I
    .locals 12

    const-string v0, "AudioTrackPlayer"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAudioAttributes   mUsage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mContentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->g()I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->h()I

    move-result v2

    if-eq p2, v2, :cond_3

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v2

    .line 45
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v3}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v3

    .line 46
    iget-object v4, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v4}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v4

    .line 47
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v5}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v10

    .line 48
    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v9

    .line 49
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 50
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    .line 51
    :cond_2
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 52
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 53
    new-instance v2, Landroid/media/AudioTrack;

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 54
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2, p1}, Lcom/baidu/tts/b/b/b/b$a;->b(I)V

    .line 55
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/b/b/b/b$a;->c(I)V

    .line 56
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p1}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result p1

    .line 57
    iget-object p2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p2}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result p2

    .line 58
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 59
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 60
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    monitor-exit v0

    return v1

    .line 63
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v3}, Lcom/baidu/tts/m/c;->i()I

    .line 7
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v3}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v8

    .line 8
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v3}, Lcom/baidu/tts/b/b/b/b$a;->g()I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v4}, Lcom/baidu/tts/b/b/b/b$a;->h()I

    move-result v4

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v7

    .line 11
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 12
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    .line 13
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 14
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result v1

    .line 16
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 14

    .line 67
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioTrackPlayer"

    const-string v2, "enter put"

    .line 68
    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 69
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->h()Lcom/baidu/tts/f/e;

    move-result-object v2

    .line 70
    sget-object v3, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    .line 72
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->b(Lcom/baidu/tts/m/h;)V

    .line 73
    :cond_0
    sget-object v3, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    if-ne v2, v3, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->i()Lcom/baidu/tts/f/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/f/k;->a()I

    move-result v3

    .line 75
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 76
    invoke-virtual {p0, v3}, Lcom/baidu/tts/b/b/b/b;->b(I)I

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/baidu/tts/i/a/b;->c(I)V

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 79
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    array-length v6, v3

    invoke-virtual {v5, v6}, Lcom/baidu/tts/i/a/b;->b(I)V

    .line 80
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v5}, Lcom/baidu/tts/i/a/b;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 81
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v5}, Lcom/baidu/tts/i/a/b;->c()Lcom/baidu/tts/i/a/a;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lcom/baidu/tts/i/a/a;->a()I

    move-result v6

    .line 83
    invoke-virtual {v5}, Lcom/baidu/tts/i/a/a;->b()I

    move-result v7

    const/4 v8, 0x0

    :cond_4
    const/4 v9, 0x1

    if-ge v8, v7, :cond_8

    .line 84
    iget-object v10, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    if-eq v10, v9, :cond_8

    if-eqz v3, :cond_8

    sub-int v9, v7, v8

    const-string v10, "AudioTrackPlayer"

    const-string v11, "before write"

    .line 85
    invoke-static {v10, v11}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int v10, v8, v6

    .line 86
    invoke-static {}, Lcom/baidu/tts/b/b/b/d;->b()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 87
    iget-object v11, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    if-nez v11, :cond_5

    .line 88
    new-instance v11, Lcom/baidu/tts/b/b/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lcom/baidu/tts/b/b/b/d;-><init>(J)V

    iput-object v11, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    .line 89
    :cond_5
    iget-object v11, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    if-eqz v11, :cond_6

    .line 90
    invoke-virtual {v11, v3, v10, v9}, Lcom/baidu/tts/b/b/b/d;->a([BII)V

    .line 91
    :cond_6
    iget-object v11, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v11, v3, v10, v9}, Landroid/media/AudioTrack;->write([BII)I

    move-result v9

    const-string v10, "AudioTrackPlayer"

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writtenbytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "--offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "--dataLength="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v9, :cond_7

    add-int/2addr v8, v9

    .line 93
    :goto_1
    iget-boolean v9, p0, Lcom/baidu/tts/b/b/b/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_4

    .line 94
    :try_start_1
    iget-object v9, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v9, "AudioTrackPlayer"

    .line 95
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "await before"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v9, p0, Lcom/baidu/tts/b/b/b/b;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->await()V

    const-string v9, "AudioTrackPlayer"

    .line 97
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "await after"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    iget-object v9, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    :goto_2
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v9

    .line 99
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    iget-object v9, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 101
    :cond_7
    monitor-exit v0

    return-object v1

    .line 102
    :cond_8
    iget-object v6, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 103
    monitor-exit v0

    return-object v1

    .line 104
    :cond_9
    invoke-virtual {v5}, Lcom/baidu/tts/i/a/a;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v6

    .line 106
    invoke-virtual {v5}, Lcom/baidu/tts/i/a/a;->d()F

    move-result v5

    int-to-float v6, v6

    mul-float v6, v6, v5

    .line 107
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 108
    invoke-direct {p0, v6}, Lcom/baidu/tts/b/b/b/b;->c(I)I

    move-result v7

    const-string v8, "AudioTrackPlayer"

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "percent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "--currentProgress="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "--progress="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/baidu/tts/n/a;->G()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/tts/m/h;

    .line 111
    invoke-virtual {v5, v7}, Lcom/baidu/tts/m/h;->d(I)V

    .line 112
    invoke-direct {p0, v5}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/m/h;)V

    goto/16 :goto_0

    .line 113
    :cond_a
    sget-object v3, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    if-ne v2, v3, :cond_c

    .line 114
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->f:Lcom/baidu/tts/i/a/b;

    invoke-virtual {v2}, Lcom/baidu/tts/i/a/b;->d()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Lcom/baidu/tts/n/a;->G()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/tts/m/h;

    .line 116
    invoke-virtual {v3, v2}, Lcom/baidu/tts/m/h;->d(I)V

    .line 117
    invoke-direct {p0, v3}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/m/h;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->c(Lcom/baidu/tts/m/h;)V

    goto :goto_4

    :cond_b
    const-string p1, "AudioTrackPlayer"

    const-string v2, "put responseBag=null"

    .line 119
    invoke-static {p1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    const-string p1, "AudioTrackPlayer"

    const-string v2, "end put"

    .line 120
    invoke-static {p1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/b/b/a;->a:Lcom/baidu/tts/b/b/a;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioTrackPlayerParams:",
            "Ljava/lang/Object;",
            ">(TAudioTrackPlayerParams;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/baidu/tts/b/b/b/b$a;

    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    return-void
.end method

.method public b(I)I
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string v0, "AudioTrackPlayer"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAudioTrack sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/c;->i()I

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v7

    .line 8
    iget-object v2, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v2}, Lcom/baidu/tts/b/b/b/b$a;->g()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v3}, Lcom/baidu/tts/b/b/b/b$a;->h()I

    move-result v3

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/b/b/b/b;->a(III)I

    move-result v6

    .line 11
    iget-object v4, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 12
    iget-object v4, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 13
    :cond_1
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 14
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 15
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    .line 16
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {p1}, Lcom/baidu/tts/b/b/b/b$a;->e()F

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->e:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->f()F

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 19
    iget-object p1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/d;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/tts/b/b/b/b;->g:Z

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/d;->a()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->i:Lcom/baidu/tts/b/b/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/b/b;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
