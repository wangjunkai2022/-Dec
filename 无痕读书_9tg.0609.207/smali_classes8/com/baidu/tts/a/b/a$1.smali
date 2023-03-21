.class public Lcom/baidu/tts/a/b/a$1;
.super Ljava/lang/Object;
.source "SpeechSynthesizerAdapter.java"

# interfaces
.implements Lcom/baidu/tts/aop/ttslistener/TtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/a/b/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/a/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->g()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getTtsErrorFlyweight()Lcom/baidu/tts/h/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/tts/h/a/a;->a()Lcom/baidu/tts/f/n;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/baidu/tts/a/b/a$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "isStopped exception="

    .line 4
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpeechSynthesizerAdapter"

    invoke-static {v1, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public onError(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a$1;->a(Lcom/baidu/tts/m/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onPlayFinished(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayProgressUpdate(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result p1

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechProgressChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPlayStart(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesizeDataArrived(Lcom/baidu/tts/m/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->e()I

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v3}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeDataArrived(Ljava/lang/String;[BII)V

    :cond_0
    return-void
.end method

.method public onSynthesizeFinished(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesizeStart(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
