.class public Lcom/baidu/tts/b/a/a/e;
.super Lcom/baidu/tts/b/a/a/b;
.source "InitializedEngineState.java"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/a/b;-><init>(Lcom/baidu/tts/b/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->t()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->q()Lcom/baidu/tts/b/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/e;->a()V

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/a;->a()Lcom/baidu/tts/b/a/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/a;->a(Lcom/baidu/tts/m/i;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->x()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->o()Lcom/baidu/tts/b/a/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method
