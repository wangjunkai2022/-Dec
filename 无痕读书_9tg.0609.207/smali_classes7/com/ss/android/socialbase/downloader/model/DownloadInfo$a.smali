.class public Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:J

.field public D:Z

.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Z

.field public H:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:J

.field public N:Z

.field public O:Z

.field public P:Lorg/json/JSONObject;

.field public Q:Z

.field public R:Ljava/lang/String;

.field public S:[I

.field public T:I

.field public U:Z

.field public V:Z

.field public W:J

.field public X:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:[Ljava/lang/String;

.field public k:[I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    .line 5
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Z

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    .line 11
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    .line 12
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    .line 13
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    return p0
.end method

.method public static synthetic B(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->z:Z

    return p0
.end method

.method public static synthetic C(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic D(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->B:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic E(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->F:Z

    return p0
.end method

.method public static synthetic F(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Z

    return p0
.end method

.method public static synthetic G(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lcom/ss/android/socialbase/downloader/constants/EnqueueType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object p0
.end method

.method public static synthetic H(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->I:Z

    return p0
.end method

.method public static synthetic I(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->J:Z

    return p0
.end method

.method public static synthetic J(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->O:Z

    return p0
.end method

.method public static synthetic K(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->K:Z

    return p0
.end method

.method public static synthetic L(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->L:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic M(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->M:J

    return-wide v0
.end method

.method public static synthetic N(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    return p0
.end method

.method public static synthetic O(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->P:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic P(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->C:J

    return-wide v0
.end method

.method public static synthetic Q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->T:I

    return p0
.end method

.method public static synthetic R(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Z

    return p0
.end method

.method public static synthetic S(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    return p0
.end method

.method public static synthetic T(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->R:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic U(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->S:[I

    return-object p0
.end method

.method public static synthetic V(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->U:Z

    return p0
.end method

.method public static synthetic W(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->V:Z

    return p0
.end method

.method public static synthetic X(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->W:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->X:Z

    return p0
.end method

.method public static synthetic g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->f:Z

    return p0
.end method

.method public static synthetic i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->i:I

    return p0
.end method

.method public static synthetic k(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->l:I

    return p0
.end method

.method public static synthetic l(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->m:I

    return p0
.end method

.method public static synthetic m(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->n:Z

    return p0
.end method

.method public static synthetic n(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->j:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->k:[I

    return-object p0
.end method

.method public static synthetic p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    return p0
.end method

.method public static synthetic q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->p:I

    return p0
.end method

.method public static synthetic r(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->q:I

    return p0
.end method

.method public static synthetic s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->r:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic t(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->s:Z

    return p0
.end method

.method public static synthetic u(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->u:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic v(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->v:Z

    return p0
.end method

.method public static synthetic w(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->D:Z

    return p0
.end method

.method public static synthetic x(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic y(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->w:Z

    return p0
.end method

.method public static synthetic z(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->i:I

    return-object p0
.end method

.method public a(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->C:J

    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/constants/EnqueueType;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->h:Ljava/util/List;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->P:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->f:Z

    return-object p0
.end method

.method public a([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->k:[I

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->j:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 2

    .line 11
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;)V

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->l:I

    return-object p0
.end method

.method public b(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->M:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->r:Ljava/util/List;

    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->n:Z

    return-object p0
.end method

.method public b([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->S:[I

    return-object p0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->m:I

    return-object p0
.end method

.method public c(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->W:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    return-object p0
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->p:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->v:Z

    return-object p0
.end method

.method public e(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->q:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->s:Z

    return-object p0
.end method

.method public f(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 4
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->T:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->w:Z

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->u:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->A:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->B:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->z:Z

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->E:Ljava/lang/String;

    return-object p0
.end method

.method public j(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->D:Z

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->R:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->F:Z

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->L:Ljava/lang/String;

    return-object p0
.end method

.method public l(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Z

    return-object p0
.end method

.method public m(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->I:Z

    return-object p0
.end method

.method public n(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->J:Z

    return-object p0
.end method

.method public o(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->K:Z

    return-object p0
.end method

.method public p(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->O:Z

    return-object p0
.end method

.method public q(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    return-object p0
.end method

.method public r(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    return-object p0
.end method

.method public s(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->U:Z

    return-object p0
.end method

.method public t(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->V:Z

    return-object p0
.end method

.method public u(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->X:Z

    return-object p0
.end method

.method public v(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Z

    return-object p0
.end method
