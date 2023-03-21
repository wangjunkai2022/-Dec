.class public abstract Lcom/baidu/tts/b/a/a/a;
.super Lcom/baidu/tts/j/a;
.source "AEngineExecutor.java"

# interfaces
.implements Lcom/baidu/tts/b/a/a/d;


# instance fields
.field public a:Lcom/baidu/tts/b/a/b/b;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/tts/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Lcom/baidu/tts/b/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/b/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/a/a/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/b/a/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 12
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/e;->a:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 13
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/b/a/b;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1, p1}, Lcom/baidu/tts/b/a/b;->a(Lcom/baidu/tts/m/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/b;->b(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/e;->c:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/b/a/b;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, p1}, Lcom/baidu/tts/b/a/b;->c(Lcom/baidu/tts/m/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/e;->b:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/b/a/b;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lcom/baidu/tts/b/a/b;->b(Lcom/baidu/tts/m/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d(Lcom/baidu/tts/m/h;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 2
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/e;->d:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/b/a/b;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/baidu/tts/b/a/b;->e(Lcom/baidu/tts/m/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Lcom/baidu/tts/m/h;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/baidu/tts/m/h;

    invoke-direct {p1}, Lcom/baidu/tts/m/h;-><init>()V

    .line 2
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/e;->g:Lcom/baidu/tts/f/e;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/e;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/b/a/b;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/baidu/tts/b/a/b;->d(Lcom/baidu/tts/m/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->a()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->e()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/a;->c:Lcom/baidu/tts/b/a/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/b;->f()V

    return-void
.end method
