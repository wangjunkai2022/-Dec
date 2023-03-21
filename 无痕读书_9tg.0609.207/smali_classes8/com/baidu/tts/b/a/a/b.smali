.class public abstract Lcom/baidu/tts/b/a/a/b;
.super Ljava/lang/Object;
.source "AEngineState.java"

# interfaces
.implements Lcom/baidu/tts/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/tts/b/a/a/d;"
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/tts/b/a/a/c;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->c(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/a;->a(Lcom/baidu/tts/b/a/a/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/b/a/b/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/b/a/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 0

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

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/b;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->d(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
