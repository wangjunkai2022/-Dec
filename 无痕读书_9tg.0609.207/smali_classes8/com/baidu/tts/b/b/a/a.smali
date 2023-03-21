.class public abstract Lcom/baidu/tts/b/b/a/a;
.super Lcom/baidu/tts/j/a;
.source "APlayExecutor.java"

# interfaces
.implements Lcom/baidu/tts/b/b/a/c;


# instance fields
.field public a:Lcom/baidu/tts/b/b/a;

.field public volatile b:Lcom/baidu/tts/b/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/b/b/a/b;->a(FF)I

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/b/b/a/b;->a(II)I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/b/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/b/a/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/b/b/a;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/m/h;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->b(I)I

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public g()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->a()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->e()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->f()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->o()V

    return-void
.end method
