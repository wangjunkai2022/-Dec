.class public Lcom/baidu/tts/b/a/b/f$b;
.super Lcom/baidu/tts/m/d;
.source "OnlineSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/m/d<",
        "Lcom/baidu/tts/b/a/b/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/baidu/tts/f/b;

.field public c:Lcom/baidu/tts/f/c;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/tts/b/a/b/f$b;->x:Ljava/util/Set;

    .line 2
    sget-object v1, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/m/d;-><init>()V

    .line 2
    sget-object v0, Lcom/baidu/tts/f/b;->c:Lcom/baidu/tts/f/b;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    .line 3
    sget-object v0, Lcom/baidu/tts/f/c;->l:Lcom/baidu/tts/f/c;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    const-string v0, "0"

    .line 4
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    const/16 v0, 0x3e8

    .line 6
    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    .line 7
    sget-object v0, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v0}, Lcom/baidu/tts/f/l;->b()I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->p:I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/baidu/tts/b/a/b/f$b;->r:I

    const-string v0, "https"

    .line 9
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->s:Ljava/lang/String;

    const-string v0, "1"

    .line 10
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/b;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    sget-object p1, Lcom/baidu/tts/f/n;->Y:Lcom/baidu/tts/f/n;

    invoke-virtual {p1}, Lcom/baidu/tts/f/n;->b()I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->r:I

    return-void
.end method

.method public a(Lcom/baidu/tts/f/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->t:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->s:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->r:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->q:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$b;->p:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    return-void
.end method

.method public g()Lcom/baidu/tts/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->m:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->b:Lcom/baidu/tts/f/b;

    invoke-virtual {v0}, Lcom/baidu/tts/f/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->c:Lcom/baidu/tts/f/c;

    invoke-virtual {v0}, Lcom/baidu/tts/f/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->u:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->v:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$b;->w:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->n:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->o:I

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/a/b/f$b;->p:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$b;->w:Ljava/lang/String;

    return-object v0
.end method
