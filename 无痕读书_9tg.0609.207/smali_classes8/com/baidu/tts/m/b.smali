.class public Lcom/baidu/tts/m/b;
.super Lcom/baidu/tts/n/a;
.source "AllSynthesizerParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a<",
        "Lcom/baidu/tts/m/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/tts/b/a/b/f$b;

.field public b:Lcom/baidu/tts/b/a/b/e$a;

.field public c:Lcom/baidu/tts/f/j;

.field public d:Lcom/baidu/tts/f/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 2
    sget-object v0, Lcom/baidu/tts/f/l;->d:Lcom/baidu/tts/f/l;

    iput-object v0, p0, Lcom/baidu/tts/m/b;->d:Lcom/baidu/tts/f/l;

    .line 3
    new-instance v0, Lcom/baidu/tts/b/a/b/f$b;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    .line 4
    new-instance v0, Lcom/baidu/tts/b/a/b/e$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/b/a/b/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/f/j;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/m/b;->c:Lcom/baidu/tts/f/j;

    return-void
.end method

.method public a(Lcom/baidu/tts/f/l;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/baidu/tts/m/b;->d:Lcom/baidu/tts/f/l;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->r(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->r(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/baidu/tts/b/a/b/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->t(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->t(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/baidu/tts/f/j;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/m/b;->c:Lcom/baidu/tts/f/j;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->s(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->s(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/b;->a:Lcom/baidu/tts/b/a/b/f$b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->q(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/m/b;->b:Lcom/baidu/tts/b/a/b/e$a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/d;->q(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public d()Lcom/baidu/tts/f/l;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/m/b;->d:Lcom/baidu/tts/f/l;

    return-object v0
.end method
