.class public Lcom/baidu/tts/o/a/c;
.super Ljava/lang/Object;
.source "Tts.java"

# interfaces
.implements Lcom/baidu/tts/aop/tts/ITts;


# static fields
.field public static final synthetic a:Z


# instance fields
.field public b:Lcom/baidu/tts/m/j;

.field public c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

.field public d:Lcom/baidu/tts/f/m;

.field public e:Lcom/baidu/tts/a/c/c;

.field public volatile f:Lcom/baidu/tts/o/a/a;

.field public g:Lcom/baidu/tts/o/a/d;

.field public h:Lcom/baidu/tts/o/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/baidu/tts/o/a/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/m/j;

    invoke-direct {v0}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    .line 3
    new-instance v0, Lcom/baidu/tts/o/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/o/a/d;-><init>(Lcom/baidu/tts/o/a/c;)V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    .line 4
    new-instance v0, Lcom/baidu/tts/o/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/tts/o/a/b;-><init>(Lcom/baidu/tts/o/a/c;)V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/a/c/c;->a(FF)I

    move-result p1

    return p1
.end method

.method public a(I)I
    .locals 1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->f()Lcom/baidu/tts/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->a()Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->a(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(II)I
    .locals 1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->f()Lcom/baidu/tts/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->a()Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/b/b/a/c;->a(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/m/j;->a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/o/a/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->g:Lcom/baidu/tts/o/a/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/tts/h/b/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/h;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eq p1, v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/f/m;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/ttslistener/TtsListener;->onError(Lcom/baidu/tts/m/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public a(Lcom/baidu/tts/o/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    return-void
.end method

.method public auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(I)I
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->f()Lcom/baidu/tts/a/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->a()Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->b(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->b(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;
    .locals 2

    .line 2
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/f/m;Lcom/baidu/tts/m/j;)Lcom/baidu/tts/auth/AuthInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/a/c/c;->b(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0}, Lcom/baidu/tts/j/b;->f()V

    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->freeCustomResource(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public g()Lcom/baidu/tts/o/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    return-object v0
.end method

.method public getMode()Lcom/baidu/tts/f/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getMode()Lcom/baidu/tts/f/m;

    move-result-object v0

    return-object v0
.end method

.method public getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    return-object v0
.end method

.method public getTtsParams()Lcom/baidu/tts/m/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/a;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/baidu/tts/f/m;->a:Lcom/baidu/tts/f/m;

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/baidu/tts/m/j;

    invoke-direct {v0}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    .line 5
    :cond_1
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/baidu/tts/o/a/c;->a:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7
    :cond_3
    :goto_0
    sget-object v0, Lcom/baidu/tts/o/a/c$1;->a:[I

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    move-object v0, v2

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->c:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->a()Lcom/baidu/tts/m/b;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_5
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->b:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v2

    .line 11
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->d()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {}, Lcom/baidu/tts/b/a/a;->a()Lcom/baidu/tts/b/a/a;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/f;->a:Lcom/baidu/tts/f/f;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->c()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v2, v0}, Lcom/baidu/tts/b/a/a/d;->a(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/baidu/tts/b/b/a/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/b/a/f;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-virtual {v1}, Lcom/baidu/tts/m/j;->b()Lcom/baidu/tts/m/a;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/b/a/a;->a(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lcom/baidu/tts/a/c/c;

    invoke-direct {v1}, Lcom/baidu/tts/a/c/c;-><init>()V

    iput-object v1, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    .line 19
    new-instance v1, Lcom/baidu/tts/a/c/b;

    iget-object v3, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    invoke-direct {v1, v2, v0, v3}, Lcom/baidu/tts/a/c/b;-><init>(Lcom/baidu/tts/b/a/a/d;Lcom/baidu/tts/b/b/a/c;Lcom/baidu/tts/m/j;)V

    .line 20
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/a/c/a;)V

    .line 21
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_7

    .line 22
    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/a/c/c;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0

    .line 24
    :cond_8
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->b()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->c()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->d()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->e:Lcom/baidu/tts/a/c/c;

    invoke-virtual {v0}, Lcom/baidu/tts/a/c/c;->e()V

    .line 2
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/a;->b()V

    .line 3
    invoke-static {}, Lcom/baidu/tts/h/b/b;->a()Lcom/baidu/tts/h/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/h/b/b;->f()V

    .line 4
    new-instance v0, Lcom/baidu/tts/m/j;

    invoke-direct {v0}, Lcom/baidu/tts/m/j;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    return-void
.end method

.method public loadCustomResource(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadCustomResource(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public loadEnglishModel(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadEnglishModel(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public loadModel(Lcom/baidu/tts/m/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->loadModel(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1
.end method

.method public m()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method public n()Lcom/baidu/tts/f/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->d:Lcom/baidu/tts/f/m;

    return-object v0
.end method

.method public o()Lcom/baidu/tts/m/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->b:Lcom/baidu/tts/m/j;

    return-object v0
.end method

.method public p()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->c:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/baidu/tts/f/n;->S:Lcom/baidu/tts/f/n;

    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->h:Lcom/baidu/tts/o/a/b;

    iget-object v1, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAudioAttributes(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setAudioAttributes(II)I

    move-result p1

    return p1
.end method

.method public setAudioSampleRate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setAudioSampleRate(I)I

    move-result p1

    return p1
.end method

.method public setAudioStreamType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->setAudioStreamType(I)I

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setMode(Lcom/baidu/tts/f/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setMode(Lcom/baidu/tts/f/m;)V

    return-void
.end method

.method public setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/o/a/a;->setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setStereoVolume(FF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/aop/tts/ITts;->setStereoVolume(FF)I

    move-result p1

    return p1
.end method

.method public setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/a;->setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    return-void
.end method

.method public speak(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->speak(Lcom/baidu/tts/m/i;)V

    return-void
.end method

.method public synthesize(Lcom/baidu/tts/m/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/o/a/c;->f:Lcom/baidu/tts/o/a/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/aop/tts/ITts;->synthesize(Lcom/baidu/tts/m/i;)V

    return-void
.end method
