.class public Lcom/baidu/tts/o/a/d;
.super Lcom/baidu/tts/o/a/a;
.source "UninitialState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/o/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/o/a/a;-><init>(Lcom/baidu/tts/o/a/c;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->h()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getErrorEnum()Lcom/baidu/tts/f/n;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->a()Lcom/baidu/tts/f/n$a;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/baidu/tts/f/n$a;->a:Lcom/baidu/tts/f/n$a;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v1}, Lcom/baidu/tts/o/a/c;->g()Lcom/baidu/tts/o/a/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/o/a/a;->a(Lcom/baidu/tts/o/a/a;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v1}, Lcom/baidu/tts/o/a/c;->g()Lcom/baidu/tts/o/a/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/o/a/a;->a(Lcom/baidu/tts/o/a/a;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/m/e;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    move-result p1

    return p1
.end method

.method public loadCustomResource(Lcom/baidu/tts/m/e;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    move-result p1

    return p1
.end method

.method public loadEnglishModel(Lcom/baidu/tts/m/f;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    move-result p1

    return p1
.end method

.method public loadModel(Lcom/baidu/tts/m/g;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    move-result p1

    return p1
.end method

.method public setAudioAttributes(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->b(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/b/b/b$a;->c(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAudioSampleRate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setAudioStreamType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/c;->d(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setStereoVolume(FF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(F)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/b/b/b$a;->b(F)V

    const/4 p1, 0x0

    return p1
.end method

.method public speak(Lcom/baidu/tts/m/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    return-void
.end method

.method public synthesize(Lcom/baidu/tts/m/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/tts/o/a/a;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    return-void
.end method
