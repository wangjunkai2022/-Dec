.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
.super Ljava/lang/Object;
.source "AdEventModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:J

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->s:I

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->t:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->w:J

    return-void
.end method

.method public static b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->w:J

    return-wide v0
.end method

.method public a(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->m:Ljava/lang/String;

    return-object p0
.end method

.method public a(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->r:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public b(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->q:I

    return-object p0
.end method

.method public b(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->w:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->n:I

    return-object p0
.end method

.method public c(J)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-wide p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->i:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->s:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->p:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->u:Ljava/lang/String;

    return-object p0
.end method

.method public g(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->t:I

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/d;->j:Ljava/lang/String;

    return-object p0
.end method
