.class public Lcom/baidu/tts/b/a/a/f;
.super Lcom/baidu/tts/b/a/a/b;
.source "PauseEngineState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/a/b;-><init>(Lcom/baidu/tts/b/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/f;->e()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/a;->a()Lcom/baidu/tts/b/a/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/a;->a(Lcom/baidu/tts/m/i;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->u()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->q()Lcom/baidu/tts/b/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->w()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->p()Lcom/baidu/tts/b/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->w()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->x()V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->o()Lcom/baidu/tts/b/a/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method
