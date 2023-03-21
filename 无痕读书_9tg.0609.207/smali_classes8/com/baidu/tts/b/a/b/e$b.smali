.class public Lcom/baidu/tts/b/a/b/e$b;
.super Ljava/lang/Object;
.source "OfflineSynthesizer.java"

# interfaces
.implements Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Lcom/baidu/tts/b/a/b/e;

.field public c:Lcom/baidu/tts/m/i;

.field public d:I

.field public e:Lcom/baidu/tts/f/k;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/baidu/tts/b/a/b/e$b;->d:I

    .line 3
    sget-object p1, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Lcom/baidu/tts/f/k;

    .line 4
    new-instance p1, Lcom/baidu/tts/g/a/a;

    const-string v0, "bdtts-OfflineSynthesizer"

    invoke-direct {p1, v0}, Lcom/baidu/tts/g/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Lcom/baidu/tts/m/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/auth/d$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/16 v0, 0x17

    invoke-static {v2, v3, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetParam(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/baidu/tts/f/k;->c:Lcom/baidu/tts/f/k;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Lcom/baidu/tts/f/k;

    .line 5
    invoke-static {}, Lcom/baidu/tts/b/b/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-int v0, v2

    .line 6
    invoke-static {v0}, Lcom/baidu/tts/b/b/b/d;->a(I)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3e80

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Lcom/baidu/tts/f/k;

    .line 8
    invoke-static {}, Lcom/baidu/tts/b/b/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-int v0, v2

    .line 9
    invoke-static {v0}, Lcom/baidu/tts/b/b/b/d;->a(I)V

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sampleRate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sampleRateEnum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Lcom/baidu/tts/f/k;

    invoke-virtual {v2}, Lcom/baidu/tts/f/k;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OfflineSynthesizer"

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/m/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\d+(.\\d+)?"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "."

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x5

    if-lez v4, :cond_2

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 15
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v4}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 17
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/m/d;->D()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x6

    if-lez v4, :cond_4

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 22
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v4}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 24
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 25
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/m/d;->E()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 27
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x7

    if-lez v4, :cond_6

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 29
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v4}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v4

    aget-wide v7, v4, v1

    invoke-static {v7, v8, v6, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_3

    .line 30
    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 31
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v9, v0, v1

    invoke-static {v9, v10, v6, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 32
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$a;->f()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-lez v3, :cond_8

    .line 35
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 36
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v3

    aget-wide v5, v3, v1

    invoke-static {v5, v6, v4, v0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParamFloat(JIF)I

    goto :goto_4

    .line 37
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 38
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v7, v0, v1

    invoke-static {v7, v8, v4, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 39
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    move-result v0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engineResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    const/16 v0, 0x12

    iget-object v7, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v7}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/tts/b/a/b/e$a;->a()J

    move-result-wide v7

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    const/16 v0, 0xa

    iget-object v7, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v7}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/tts/m/d;->C()J

    move-result-wide v7

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v0}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v0

    aget-wide v3, v0, v1

    const/16 v0, 0x16

    iget-object v7, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v7}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/tts/b/a/b/e$a;->g()J

    move-result-wide v7

    invoke-static {v3, v4, v0, v7, v8}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSetParam(JIJ)I

    .line 44
    invoke-static {p0}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->setOnNewDataListener(Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine$OnNewDataListener;)V

    .line 45
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Lcom/baidu/tts/m/i;

    sget-object v3, Lcom/baidu/tts/f/d;->d:Lcom/baidu/tts/f/d;

    invoke-virtual {v3}, Lcom/baidu/tts/f/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/tts/m/i;->c(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Lcom/baidu/tts/m/i;

    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->e()[B

    move-result-object v0

    const-string v3, "before bdttssynthesis"

    .line 47
    invoke-static {v2, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-static {v3}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/b/a/b/e;)[J

    move-result-object v3

    aget-wide v7, v3, v1

    array-length v1, v0

    invoke-static {v7, v8, v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSSynthesis(J[BI)I

    move-result v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after bdttssynthesis result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x1

    if-nez v0, :cond_a

    const-string v0, "Success_Count"

    .line 52
    invoke-static {v1, v0, v5, v6}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 53
    invoke-static {v1, v0, v4, v5}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const-string v4, "Fail_Count"

    .line 54
    invoke-static {v1, v4, v5, v6}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    add-long/2addr v5, v2

    .line 55
    invoke-static {v1, v4, v5, v6}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 56
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->B:Lcom/baidu/tts/f/n;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;I)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0

    .line 57
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0

    .line 58
    :cond_c
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->u:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/e$b;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public onNewData([BI)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/a/b/e$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/a/b/e$b;->d:I

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e$b;->c:Lcom/baidu/tts/m/i;

    invoke-static {v0}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/baidu/tts/f/f;->b:Lcom/baidu/tts/f/f;

    invoke-virtual {v1}, Lcom/baidu/tts/f/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->e(I)V

    .line 4
    sget-object v1, Lcom/baidu/tts/f/a;->a:Lcom/baidu/tts/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/a;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a([B)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/h;->d(I)V

    .line 7
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->e:Lcom/baidu/tts/f/k;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/k;)V

    .line 8
    iget p1, p0, Lcom/baidu/tts/b/a/b/e$b;->d:I

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->c(I)V

    .line 9
    iget p1, p0, Lcom/baidu/tts/b/a/b/e$b;->d:I

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->b(I)V

    .line 10
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/e$b;->b:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/b/a/b/a;->a(Lcom/baidu/tts/m/h;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OfflineSynthesizer"

    const-string p2, "interrupted to interrupt syn"

    .line 12
    invoke-static {p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
