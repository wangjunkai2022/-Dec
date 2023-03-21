.class public Lcom/baidu/tts/b/a/b/e;
.super Lcom/baidu/tts/b/a/b/a;
.source "OfflineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/a/b/e$b;,
        Lcom/baidu/tts/b/a/b/e$a;
    }
.end annotation


# instance fields
.field public b:Lcom/baidu/tts/b/a/b/e$a;

.field public c:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/e;)Lcom/baidu/tts/b/a/b/e$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/baidu/tts/b/a/b/e;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    return-object p0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .locals 3

    .line 25
    invoke-virtual {p1}, Lcom/baidu/tts/m/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {p1, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataInit([BJ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 4

    .line 38
    invoke-virtual {p1}, Lcom/baidu/tts/m/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/baidu/tts/m/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object p1

    .line 43
    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {p1, v0, v2, v3}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->loadEnglishEngine([B[BJ)I

    move-result p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEnglishModel ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineSynthesizer"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 46
    :cond_1
    :goto_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 7

    .line 27
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->a()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 31
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1

    .line 32
    :cond_0
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 34
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object p1

    .line 35
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v5, v2, v4

    invoke-static {v3, p1, v5, v6}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData(Landroid/content/Context;[BJ)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 36
    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    aget-wide v4, v1, v4

    invoke-static {v3, v0, v4, v5}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSReInitData(Landroid/content/Context;[BJ)I

    move-result v4

    :cond_2
    add-int/2addr p1, v4

    return p1
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/baidu/tts/b/a/b/e$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    .line 5
    :cond_0
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/auth/d$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/a/b/e$a;->c()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetDatParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v0

    .line 12
    invoke-static {v1}, Lcom/baidu/tts/tools/ResourceTools;->stringToByteArrayAddNull(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/baidu/tts/h/b/b;->h()Landroid/content/Context;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before bdTTSEngineInit SpeechInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OfflineSynthesizer"

    invoke-static {v5, v4}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "offline_speechDatInfo"

    .line 16
    invoke-static {v3, v4, v2}, Lcom/baidu/tts/tools/SharedPreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    invoke-static {v3, v0, v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineInit(Landroid/content/Context;[B[B[J)I

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine init ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_2
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/f/n;->y:Lcom/baidu/tts/f/n;

    const-string v3, "bdTTSEngineInit result not 0"

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    :try_start_0
    new-instance v0, Lcom/baidu/tts/b/a/b/e$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/b/a/b/e$b;-><init>(Lcom/baidu/tts/b/a/b/e;Lcom/baidu/tts/m/i;)V

    .line 22
    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e$b;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->A:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 24
    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OfflineSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TOfflineSynthesizerParams;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/baidu/tts/b/a/b/e$a;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/e;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSDomainDataUninit(J)I

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/e;->c:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSEngineUninit(J)I

    const/4 v0, 0x0

    return-object v0
.end method
