.class public Lcom/baidu/tts/a/c/b;
.super Ljava/lang/Object;
.source "TtsAdapter.java"

# interfaces
.implements Lcom/baidu/tts/a/c/a;


# instance fields
.field public a:Lcom/baidu/tts/b/a/a/d;

.field public b:Lcom/baidu/tts/b/b/a/c;

.field public c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field public d:Lcom/baidu/tts/b/a/b;

.field public e:Lcom/baidu/tts/b/b/a;

.field public f:Lcom/baidu/tts/b/a/b;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/m/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/a/c/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/baidu/tts/a/c/b;Lcom/baidu/tts/m/h;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/m/h;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/m/i;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/m/i;->g()Lcom/baidu/tts/f/i;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/baidu/tts/f/i;->a(Lcom/baidu/tts/f/i;)Z

    move-result p1

    return p1
.end method

.method public static synthetic b(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/b/b/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-object p0
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/a/c;->a(FF)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/b/b/a/c;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/baidu/tts/a/c/b;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 4
    iget-object p1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/b/a/a/d;)V

    .line 5
    iget-object p1, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-virtual {p0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/b/b/a/c;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/a/a/d;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/baidu/tts/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$1;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->d:Lcom/baidu/tts/b/a/b;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a/c;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/baidu/tts/a/c/b$2;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$2;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->e:Lcom/baidu/tts/b/b/a;

    invoke-interface {p1, v0}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/b/b/a;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->b(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v1}, Lcom/baidu/tts/j/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 4
    invoke-virtual {p0}, Lcom/baidu/tts/a/c/b;->g()V

    return-object v0
.end method

.method public b(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/b/b/a/c;->o()V

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->c()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->d()V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "TtsAdapter"

    const-string v1, "before engine stop"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v1}, Lcom/baidu/tts/j/b;->e()V

    const-string v1, "after engine stop"

    .line 3
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v1}, Lcom/baidu/tts/j/b;->e()V

    const-string v1, "after play stop"

    .line 5
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "TtsAdapter"

    const-string v1, "before engine destroy"

    .line 1
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v1}, Lcom/baidu/tts/j/b;->f()V

    const-string v1, "after engine destroy"

    .line 3
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->b:Lcom/baidu/tts/b/b/a/c;

    invoke-interface {v1}, Lcom/baidu/tts/j/b;->f()V

    const-string v1, "after player destroy"

    .line 5
    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/tts/a/c/b$3;

    invoke-direct {v0, p0}, Lcom/baidu/tts/a/c/b$3;-><init>(Lcom/baidu/tts/a/c/b;)V

    iput-object v0, p0, Lcom/baidu/tts/a/c/b;->f:Lcom/baidu/tts/b/a/b;

    .line 2
    iget-object v1, p0, Lcom/baidu/tts/a/c/b;->a:Lcom/baidu/tts/b/a/a/d;

    invoke-interface {v1, v0}, Lcom/baidu/tts/b/a/a/d;->a(Lcom/baidu/tts/b/a/b;)V

    return-void
.end method
