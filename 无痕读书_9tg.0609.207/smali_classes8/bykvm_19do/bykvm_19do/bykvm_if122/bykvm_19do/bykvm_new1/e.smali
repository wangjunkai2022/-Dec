.class public abstract Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;
.source "TTAdHeaderBidingRequestCore.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;


# instance fields
.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

.field public H:Landroid/content/Context;

.field public I:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

.field public J:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

.field public volatile K:Z

.field public volatile L:Z

.field public volatile M:Z

.field public N:Lcom/bytedance/msdk/base/TTBaseAd;

.field public final O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public P:I

.field public Q:I

.field public final R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

.field public T:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public U:J

.field public V:J

.field public W:Z

.field public final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public Y:Z

.field public Z:I

.field public a0:Lcom/bytedance/msdk/base/TTBaseAd;

.field public final b0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->K:Z

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->L:Z

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->M:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->O:Ljava/util/Map;

    const/16 v1, -0x3e8

    iput v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->P:I

    iput v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Q:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U:J

    iput-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->V:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->X:Ljava/util/Map;

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Y:Z

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$g;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$g;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b0:Ljava/util/Comparator;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$h;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$h;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c0:Ljava/util/Comparator;

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->G:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(I)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->G:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->G:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->W()V

    :cond_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->z()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->X:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getMSDKThreadLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$i;

    invoke-direct {p2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$i;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Landroid/os/Looper;)V

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->initMSDKThread()V

    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$j;

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getMSDKThreadLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$j;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    :goto_1
    return-void
.end method

.method private a(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;J)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->r:Ljava/util/Map;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    move-object v0, p3

    move v4, p1

    move v5, p2

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/Map;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;IIZJ)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;J)Ljava/util/Map;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V
    .locals 0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->j0()V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, -0x4

    invoke-static {p2, p1, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Ljava/lang/String;II)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object p1

    iget-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Z

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->d()V

    return-void
.end method

.method private a(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IJ)Z
    .locals 8

    invoke-direct {p0, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->setAdapterListener(Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;->a:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p5

    invoke-direct/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;J)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    move-object v2, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->loadAdInter(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;)V

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object p2

    iget-object p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p2, p5, p1, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0, p3, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string p3, " \u521b\u5efaTTAbsAdLoaderAdapter\u5931\u8d25"

    const-string p4, "TTMediationSDK"

    invoke-static {p2, p1, p3, p4}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ")Z"
        }
    .end annotation

    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5bf9\u8c61\u5931\u8d25  ---------  \u521d\u59cb\u5316\u7c7b "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u9700\u8981\u7ee7\u627f\u81ea\u81ea\u5b9a\u4e49ADN\u7684\u5e7f\u544a\u5bf9\u8c61\u57fa\u7c7b "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "TTMediationSDK_SDK_Init"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v1, Lcom/bytedance/msdk/api/AdError;

    const v2, 0xbf76

    invoke-direct {v1, v2, p1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const-string p1, ""

    invoke-static {p1, p2, v0, p3, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v3

    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    move/from16 v13, p3

    invoke-virtual {v3, v4, v1, v2, v13}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v3

    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v3, v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)Ljava/util/List;

    move-result-object v15

    const/4 v14, 0x0

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v3, v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v11

    iget-object v3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v12, 0x3

    invoke-static {v2, v3, v12, v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    iget-object v3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v5

    const/16 v17, 0x1

    xor-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x3

    const/4 v10, 0x0

    const-wide/16 v18, -0x1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move v9, v11

    move v14, v11

    const/4 v13, 0x3

    move-wide/from16 v11, v18

    invoke-static/range {v2 .. v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v5, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v5, v13}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqType(I)V

    iget-object v5, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v5, v14}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqTypeSrc(I)V

    iget-object v5, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0, v5, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V

    iget-object v4, v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v10, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-wide/16 v18, -0x1

    const-string v7, "adn cache\u547d\u4e2d"

    move/from16 v11, p3

    const/4 v1, 0x0

    move-object v3, v15

    move-wide/from16 v15, v18

    invoke-static/range {v5 .. v16}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;ILjava/lang/String;JLcom/bytedance/msdk/api/AdSlot;IIILjava/lang/String;J)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    invoke-virtual {v0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->onAdLoaded(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    return v17

    :cond_3
    :goto_2
    const/4 v1, 0x0

    return v1
.end method

.method private a0()I
    .locals 6

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->z()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/base/TTBaseAd;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_4
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_6
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_9
    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_a
    return-object v0
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V
    .locals 0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->i0()V

    return-void
.end method

.method private b(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IJ)Z
    .locals 17

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u521b\u5efa\u5e7f\u544a\u5bf9\u8c61\u5931\u8d25  ---------  \u6ca1\u6709\u521d\u59cb\u5316\uff0c\u4e0d\u80fd\u52a0\u8f7d\u5e7f\u544a\uff0c\u8bf7\u68c0\u67e5\u521d\u59cb\u5316\u914d\u7f6e"

    iget-object v1, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    const/4 v14, 0x0

    const v15, 0xbf76

    const-string v9, ""

    const-string v7, "TTMediationSDK_SDK_Init"

    if-nez v1, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u8001API\u4e0d\u652f\u6301\u81ea\u5b9a\u4e49Adapter\uff0c\u8bf7\u4f7f\u7528\u65b0\u7684API"

    invoke-static {v7, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v3, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v3, v15, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {v9, v1, v2, v13, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    return v14

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    if-nez v1, :cond_1

    invoke-virtual {v10, v13, v11, v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u914d\u7f6e\u4e3a\u7a7a"

    :goto_0
    move-object v14, v7

    move-object v4, v9

    move-object v9, v0

    goto/16 :goto_6

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u5b9a\u4e49Adapter \u83b7\u53d6\u914d\u7f6ewfcBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c()Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getClassName(II)Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    if-nez v1, :cond_2

    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u914d\u7f6e\u7684className\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u53cd\u5c04\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544aAdapter\u5bf9\u8c61 "

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v10, v2, v1, v13}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u5b9a\u4e49Adapter \u53cd\u5c04\u521b\u5efa\u521d\u59cb\u5316\u5bf9\u8c61\u4e3a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v7, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v3, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v3, v15, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {v9, v1, v2, v13, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    move-object v14, v7

    move-object v4, v9

    goto :goto_1

    :cond_3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p2

    move-object v14, v7

    move-wide/from16 v7, p5

    move-object/from16 v16, v9

    move/from16 v9, p4

    :try_start_3
    invoke-direct/range {v1 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIJI)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    move-object v14, v7

    move-object/from16 v16, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u5b9a\u4e49ADN \u521b\u5efa\u5e7f\u544a\u5bf9\u8c61\u5931\u8d25  ---------  \u5bf9\u8c61\u7c7b\u578b\u9519\u8bef  \u5bf9\u8c61\u7c7b\u578b\u4e3a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v2, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v3, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v3, v15, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v4, v16

    :try_start_4
    invoke-static {v4, v1, v2, v13, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    :goto_1
    invoke-virtual {v10, v13, v11, v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    :goto_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v14, v7

    move-object v4, v9

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    const-string v9, "\u81ea\u5b9a\u4e49Adapter InstantiationException"

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v14, v7

    move-object v4, v9

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    const-string v9, "\u81ea\u5b9a\u4e49Adapter IllegalAccessException"

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :cond_5
    move-object v14, v7

    move-object v4, v9

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v14, v7

    move-object v4, v9

    :goto_5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string v9, "\u81ea\u5b9a\u4e49Adapter ClassNotFoundException"

    :goto_6
    invoke-static {v14, v9}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v1, v10, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    new-instance v2, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {v2, v15, v9}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {v4, v0, v1, v13, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    invoke-virtual {v10, v13, v11, v12}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V

    const/4 v1, 0x0

    return v1
.end method

.method private b0()Z
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isCacheSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string v0, "wfcBean is null getTTAbsAdLoaderAdapter fail"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->O:Ljava/util/Map;

    return-object p0
.end method

.method private c0()Z
    .locals 1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V
    .locals 0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->f0()V

    return-void
.end method

.method private d(Lcom/bytedance/msdk/api/AdError;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->W:Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d0()Z
    .locals 2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e0()V
    .locals 12

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    const/4 v1, 0x0

    const v2, 0x9c5b

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkFlatFromId()I

    move-result v0

    invoke-static {v0}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    return-void

    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/e;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/e;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->f()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;

    invoke-direct {v1, p0, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    :cond_2
    const/16 v6, 0x2f

    const/16 v7, 0x2e

    const/16 v8, 0x13

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;

    move-result-object v0

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$n;

    invoke-direct {v1, p0, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$n;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b(Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V

    const/16 v0, 0x22

    const/16 v1, 0x13

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/4 v11, 0x7

    if-ne v0, v11, :cond_5

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/g;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/g;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->f()V

    invoke-direct {p0, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x2

    :cond_4
    :goto_0
    :pswitch_0
    const/16 v2, 0x23

    move v2, v1

    move v1, v0

    const/16 v0, 0x23

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v2

    goto :goto_0

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    move v0, v1

    move v1, v2

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_3
    if-eq v1, v9, :cond_9

    if-eq v1, v10, :cond_4

    if-eq v1, v5, :cond_c

    :pswitch_4
    const/16 v0, 0x44

    if-eq v1, v0, :cond_8

    const/16 v0, 0x45

    if-eq v1, v0, :cond_e

    goto :goto_6

    :goto_3
    const/16 v0, 0x13

    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    const/4 v5, 0x6

    if-ne v0, v5, :cond_6

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/b;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/b;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    :goto_4
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->f()V

    invoke-direct {p0, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/h;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/h;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    goto :goto_4

    :cond_7
    const/16 v5, 0x8

    if-ne v0, v5, :cond_a

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->f()V

    invoke-direct {p0, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0x2f

    :goto_5
    if-eq v0, v7, :cond_c

    if-eq v0, v6, :cond_c

    :cond_9
    :goto_6
    :pswitch_5
    const/16 v0, 0x2e

    goto :goto_5

    :cond_a
    const/16 v5, 0x9

    if-ne v0, v5, :cond_b

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/f;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/f;-><init>(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;)V

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_c
    :goto_7
    :pswitch_6
    return-void

    :cond_d
    :goto_8
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private f(Ljava/util/List;)Lcom/bytedance/msdk/base/TTBaseAd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)",
            "Lcom/bytedance/msdk/base/TTBaseAd;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getFillTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getFillTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private f0()V
    .locals 6

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->V:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;JLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;)",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->F()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->E()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->B()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-direct {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;-><init>()V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->c(I)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a(I)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->g(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->g(I)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j(I)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->t()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->x()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;

    move-result-object v3

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/g;)V

    invoke-direct {p0, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)Lcom/bytedance/msdk/base/TTBaseAd;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/bytedance/msdk/base/TTBaseAd;->getBiddingCpmWithOutExchangeRate()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c0:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b0:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object p1
.end method

.method private g0()V
    .locals 4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u4eceonAdLoaded\u7ed9\u5916\u90e8invokeAdVideoCache ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->f0()V

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$d;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$d;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$e;

    invoke-direct {v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$e;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/AdSlot;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private h0()V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i0()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->y:J

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    const v1, 0x9c68

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Lcom/bytedance/msdk/api/AdError;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getPrimeRitReqType()I

    move-result v8

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->c()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->B:Ljava/util/Map;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    invoke-virtual/range {v2 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private j0()V
    .locals 4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "network_ad_num_"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setNetWorkNum(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;->setNetWorkNum(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$o;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$o;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/AdLoadInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/AdLoadInfo;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/AdLoadInfo;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e7f\u544a\u8bf7\u6c42\u4e2d"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public D()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public E()I
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkPlatformId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "-3"

    return-object v0

    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getNetWorkPlatFormCpm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Z:I

    return v0
.end method

.method public J()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/o;->a(Lcom/bytedance/msdk/base/TTBaseAd;Z)Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->M:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, -0x64

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-ge v5, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_7
    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-nez v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b0:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-direct {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public L()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8d85\u8fc7\u5f53\u524d\u5c42\u6700\u77ed\u52a0\u8f7d\u65f6\u95f4....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8d85\u8fc7\u5f53\u524d\u5c42\u6700\u77ed\u52a0\u8f7d\u65f6\u95f4....\u6709P\u5c42\u5e7f\u544a\u56de\u8c03\u6210\u529f\u51fa\u53bb...."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8d85\u8fc7\u5f53\u524d\u5c42\u6700\u77ed\u52a0\u8f7d\u65f6\u95f4.....  \u5f53\u524d\u6709serverBidding\u5e7f\u544a\uff0cserverBidding\u8bf7\u6c42\u8fd8\u672a\u53d1\u8d77\u6216\u8005\u8fd8\u6ca1\u6709\u8fd4\u56de......."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8d85\u8fc7\u5f53\u524d\u5c42\u6700\u77ed\u52a0\u8f7d\u65f6\u95f4\u4e14\u6ee1\u8db3client bidding\u9650\u5236\u6761\u4ef6....\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f\u51fa\u53bb...."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method public M()V
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(Z)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->V()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u603b\u52a0\u8f7d\u65f6\u95f4\u8d85\u65f6.......\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u603b\u52a0\u8f7d\u65f6\u95f4\u8d85\u65f6.......\u6ca1\u6709\u5e7f\u544a\u56de\u8c03\u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const/16 v1, 0x2713

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public N()V
    .locals 3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setLinkedId(Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getPrimeRitReqType()I

    move-result v0

    invoke-virtual {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setPrimeRitReqType(I)V

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e(Ljava/util/List;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    iput-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->D()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void
.end method

.method public abstract O()V
.end method

.method public abstract P()V
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e7f\u544a\u7f13\u5b58\u6210\u529f\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdVideoCacheOnMainUI........"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->f0()V

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$f;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$f;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v2, "mLoadSortList: "

    invoke-static {v1, v0, v2}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v2, v3, v4, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--==-- hit cache!!! -----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--==-- not hit cache!!! -----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public S()V
    .locals 3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$k;

    invoke-direct {v2, p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$k;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Z[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T()V
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v2, "settings config.......AdUnitId = "

    invoke-static {v1, v0, v2}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u5f00\u5c4f\u5e7f\u544a\u8d70\u4e86\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u515c\u5e95\u65b9\u6848   adnName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->S:Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMNetworkRequestInfo;->getAdNetworkFlatFromId()I

    move-result v1

    invoke-static {v1}, Lcom/apk/eg;->do(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0xa02e

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;I)V

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e0()V

    return-void
.end method

.method public U()V
    .locals 4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->b()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SeverBidding\u5e7f\u544a\u6210\u529f\u8fd4\u56de...\u6240\u6709\u7684ClientBidding\u90fd\u6709\u8fd4\u56de\u7ed3\u679c\u4e14\u6ca1\u6709\u5230\u8fbe\u5176\u5c42\u8d85\u65f6...\u5f53\u524d\u5e7f\u544a\u6c60\u4e2d\u5e7f\u544a\u6570\u91cf\u6ee1\u8db3\u8981\u6c42...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v3, "\u6240\u6709\u5e7f\u544a\u90fd\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210....... "

    invoke-static {v2, v0, v3, v1}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SeverBidding\u5e7f\u544a\u8fd4\u56de\u4e14\u5230\u8fbeClientBidding\u7684\u7b49\u5f85\u65f6\u95f4\uff0c\u6240\u6709\u5e7f\u544a\u90fd\u6709\u8fd4\u56de\u7ed3\u679c...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const/16 v1, 0x4e25

    invoke-static {v1}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public V()V
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter;->setTotalTimedOut(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public W()V
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->e()D

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C:J

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->D:J

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->E:J

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->F:J

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->E()Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j:Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->F()Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i:Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->k:Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->m()I

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->o()I

    move-result v0

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Z:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v2, "mRitConfig="

    invoke-static {v1, v0, v2}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    return-void
.end method

.method public Y()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->h()V

    :cond_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public Z()V
    .locals 4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setIfTest(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setTransparentParams(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setAdloadSeq(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setLinkedId(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getReuestParam()Lcom/bytedance/msdk/api/TTRequestExtraParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/TTRequestExtraParams;->getExtraObject()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot;->getAdStyleType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tt_request_ad_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setReqType(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->D()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/msdk/api/AdSlot;->setWaterfallId(J)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setSegmentId(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setSegmentVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setmWaterfallExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/AdSlot;->setBidFloor(D)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setParalleType(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/AdSlot;->setReqParallelNum(I)V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 10

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v0, :cond_0

    const/16 p1, 0x1a

    const/16 p2, 0x32

    const/16 v0, 0x4c

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "   \u5c42\u6570\uff1a"

    const-string v5, "TTMediationSDK"

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cindex:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  \u7684config\u914d\u7f6e............"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->M:Z

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u5df2\u7ecf\u8c03\u7528destroy\u65b9\u6cd5\uff0c\u4e0d\u518d\u7ee7\u7eed\u5e7f\u544a\u8bf7\u6c42"

    invoke-static {p2, p1, v0, v5}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x0

    const/16 v7, -0x64

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->c(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u5c42\u64cd\u4f5c......\u6240\u6709\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210\uff0c\u4e14\u65e0\u5e7f\u544a\u8fd4\u56de......."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const/16 v8, 0x4e25

    invoke-static {v8}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u5c42\u64cd\u4f5c......\u6240\u6709\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210\uff0c\u4e14\u6709\u5e7f\u544a\u8fd4\u56de.......invokeAdLoadedOnMSDKThread"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u5b58\u5728client bidding\u4e14\u6ee1\u8db3\u89e6\u53d1\u6210\u529f\u56de\u8c03\u7684\u6761\u4ef6\uff0c\u5219\u7ed9\u51fa\u6210\u529f\u56de\u8c03....."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u8be5\u5c42\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7\uff0cisFromFailCallback\u4e3atrue......."

    invoke-static {p2, p1, v0, v5}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......idx\u4e0b\u6807\u8d8a\u754c......."

    invoke-static {p2, p1, v0, v5}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v7, :cond_9

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v0, "\u5c42\u64cd\u4f5c......\u8be5\u5c42\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7,p\u5c42\u548cclientBidding\u591a\u9636\u5e95\u4ef7\u5e7f\u544a\u5e76\u884c\u7684\u60c5\u51b5\u4e0b\uff0cP\u5c42\u5df2\u7ecf\u6267\u884c\u5b8c\u4e14\u5168\u90e8\u8bf7\u6c42\u5931\u8d25,\u4e0d\u7528\u8bf7\u6c42\u4e0b\u4e00\u5c42......."

    invoke-static {p2, p1, v0, v5}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->c(I)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    if-ge p2, v7, :cond_a

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cP\u5c42\u5e7f\u544a............"

    goto :goto_2

    :cond_a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v7, :cond_b

    const-string v4, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cClientBidding\u548c\u591a\u9636\u5e95\u4ef7\u5c42\u5e7f\u544a............"

    goto :goto_2

    :cond_b
    if-nez p2, :cond_c

    const-string v4, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884cserverBidding\u5c42\u5e7f\u544a............hasServerBidding: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const-string v4, "\u5c42\u64cd\u4f5c......\u5f00\u59cb\u6267\u884c\u666e\u901a\u5c42\u5e7f\u544a............"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->e()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0, v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->b(Z)V

    invoke-virtual {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    return-void

    :cond_d
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v2

    xor-int/2addr v2, v9

    invoke-virtual {p0, v0, v1, p2, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Z)V

    add-int/2addr p1, v9

    invoke-virtual {p0, p1, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    return-void

    :cond_e
    if-ge p2, v7, :cond_f

    iput p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Q:I

    goto :goto_4

    :cond_f
    iput p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->P:I

    :goto_4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->d(I)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0, p2, v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(IZ)V

    invoke-virtual {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->d(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_b

    :cond_10
    if-eq p2, v7, :cond_12

    if-nez p2, :cond_11

    goto :goto_5

    :cond_11
    const/4 p1, 0x5

    const/4 v0, 0x5

    goto :goto_a

    :cond_12
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c42\u64cd\u4f5c......ClientBidding,ServerBidding ,\u666e\u901a\u5e7f\u544a\u540c\u65f6\u53d1\u8d77\u8bf7\u6c42............"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p1, v9

    invoke-virtual {p0, p1, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    const/16 p1, 0x19

    const/4 p2, 0x4

    const/4 v0, 0x5

    :goto_6
    packed-switch p1, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    if-eq p2, v2, :cond_17

    if-eq p2, v1, :cond_17

    if-eq p2, v3, :cond_14

    :cond_13
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_9

    :pswitch_2
    const/16 v1, 0x4b

    if-eq v0, v1, :cond_13

    :goto_7
    :pswitch_3
    return-void

    :cond_14
    :goto_8
    const/16 p2, 0x5f

    :goto_9
    :pswitch_4
    const/16 p1, 0xb

    if-eq p2, p1, :cond_17

    return-void

    :goto_a
    const/16 p1, 0x19

    const/4 p2, 0x3

    goto :goto_6

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c42\u64cd\u4f5c......index:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u7684\u5e7f\u544a\u5df2\u7ecf\u52a0\u8f7d\u8fc7\u4e86\uff0c\u5f00\u59cb\u6267\u884c\u4e0b\u4e00\u5c42............"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    add-int/2addr p1, v9

    invoke-virtual {p0, p1, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    goto :goto_d

    :cond_16
    :goto_c
    const/16 p1, 0x3c

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_c

    :cond_17
    :goto_d
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x31

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TTMediationSDK"

    if-eq p1, v1, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_9

    const/4 v4, 0x4

    if-eq p1, v4, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SeverBidding\u5e7f\u544a\u8fd4\u56de\u4e14\u5230\u8fbeClientBidding\u7684\u7b49\u5f85\u65f6\u95f4\uff0c\u5e7f\u544a\u6c60\u4e2d\u7684\u5e7f\u544a\u6570\u91cf\u6ee1\u8db3...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u6240\u6709\u5e7f\u544a\u90fd\u5df2\u7ecf\u52a0\u8f7d\u5b8c\u6210....... "

    invoke-static {v0, p1, v1, v3}, Lcom/apk/goto;->package(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SeverBidding\u5e7f\u544a\u8fd4\u56de\u4e14\u5230\u8fbeClientBidding\u7684\u7b49\u5f85\u65f6\u95f4\uff0c\u6240\u6709\u5e7f\u544a\u90fd\u6709\u8fd4\u56de\u7ed3\u679c...\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const/16 v0, 0x4e25

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    const/16 p1, 0x48

    goto/16 :goto_2

    :cond_6
    const/16 p1, 0x4e

    const/16 v1, 0x95

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->r()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....P\u5c42\u5e7f\u544a\u6c60\u6ca1\u5e7f\u544a\u6216\u8005\u6570\u91cf\u4e0d\u8fbe\u6807\u5c1d\u8bd5\u6267\u884c\u4e0b\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTPAdPoolList.size()="

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Q:I

    goto/16 :goto_6

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709P\u5c42\u7c7b\u578b\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42....mTTPAdPoolList.size()="

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->L()V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->M()V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x()Z

    move-result p1

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u5c42\u8d85\u65f6....server Bidding \u8fd8\u6ca1\u6709\u63a5\u53e3\u8fd4\u56de\uff0c\u5c1d\u8bd5\u6267\u884c\u4e0b\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTCommonAdPoolList.size()="

    invoke-static {v1, p1, v4}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->P:I

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(I)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    :goto_0
    const/16 p1, 0x68

    const/16 v1, 0x4d

    const/16 p1, 0x4d

    const/16 v1, 0x68

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/16 p1, 0x1e

    if-le v1, p1, :cond_c

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x44

    if-lt v1, p1, :cond_d

    goto/16 :goto_8

    :pswitch_2
    if-eq v1, v0, :cond_c

    goto/16 :goto_8

    :cond_c
    move p1, v1

    :goto_2
    const/16 v0, 0x48

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    move v1, p1

    :cond_d
    const/16 p1, 0x22

    if-ne v1, p1, :cond_10

    :goto_4
    const/16 v0, 0x49

    const/16 p1, 0x24

    goto :goto_3

    :goto_5
    const/16 p1, 0x4d

    const/16 v1, 0x31

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u666e\u901a\u5e7f\u544a\u6c60\u6ca1\u5e7f\u544a\u6216\u8005\u6570\u91cf\u4e0d\u8fbe\u6807,\u5c1d\u8bd5\u6267\u884c\u4e0b\u5c42(\u4e0d\u4e00\u5b9a\u6267\u884c)....mTTCommonAdPoolList.size()="

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->P:I

    :goto_6
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(I)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    goto :goto_8

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42....mTTCommonAdPoolList.size()="

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u5c42\u8d85\u65f6....\u5e7f\u544a\u6c60\u5df2\u6709\u5e7f\u544a\u4e0d\u6267\u884c\u4e0b\u5c42\u4e14\u6ee1\u8db3client bidding\u7684\u8fd4\u56de\u6761\u4ef6....mTTCommonAdPoolList.size()="

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    :cond_10
    :goto_8
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(I)V

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->E()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->B()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a()V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U()V

    :cond_2
    return-void
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1, v0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const/16 p2, 0x4e25

    invoke-static {p2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->h0()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->d(Lcom/bytedance/msdk/api/AdError;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdLoadFailCallbackOnMainUI...... error Code = "

    invoke-static {v0, p2, v1}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v0, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error Message = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$q;

    invoke-direct {p2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$q;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/msdk/base/TTBaseAd;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setLoadSort(I)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setShowSort(I)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setExchangeRate(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setAdNetworkSlotType(I)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setCpm(D)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/api/AdLoadInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/AdLoadInfo;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/AdLoadInfo;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/AdLoadInfo;->setMediationRit(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/api/AdLoadInfo;->setAdnName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/api/AdLoadInfo;->setCustomAdnName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/bytedance/msdk/api/AdLoadInfo;->setErrCode(I)Lcom/bytedance/msdk/api/AdLoadInfo;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/bytedance/msdk/api/AdLoadInfo;->setErrMsg(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/bytedance/msdk/api/AdLoadInfo;->setAdType(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->T:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    invoke-direct {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    invoke-virtual {p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d(I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0xad76

    const-string v1, "\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings config.......AdUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u6682\u65e0config\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const v0, 0x9c68

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    move-result-object p1

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->d()V

    const/16 p1, 0x40

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_2
    :pswitch_1
    const/16 p1, 0x42

    goto :goto_1

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->canAdReuse()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v2

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v5, :cond_0

    new-instance v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    const-wide/16 v7, 0x0

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;-><init>(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;JLcom/bytedance/msdk/api/AdSlot;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    const-string p2, "--==-- \u5e7f\u544a\u590d\u7528:\u5e7f\u544a\u7f13\u5b58\u6210\u529f -------"

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdType()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getSubAdType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adnSlotId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ad\u4e2a\u6570: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->i()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    if-eqz v15, :cond_0

    iget-object v0, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/AdSlot;->getAdType()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->z()I

    move-result v4

    invoke-static {v0, v4}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "\u5e7f\u544a\u8bf7\u6c42\u4e2d"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/16 v8, 0x37

    const/16 v9, 0x39

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-eqz v15, :cond_4

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v1

    iget-object v2, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TMe"

    if-nez v1, :cond_1

    const-string v1, "adn \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v1

    iget-object v2, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lcom/bytedance/msdk/api/error/AdFreqError;

    const v3, 0xa051

    invoke-static {v3}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6, v1}, Lcom/bytedance/msdk/api/error/AdFreqError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v15, v1, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v0, 0x1

    const-wide/16 v17, -0x1

    move-object/from16 v8, p1

    move/from16 v13, p2

    move-object v3, v15

    move v15, v0

    move-object/from16 v16, v2

    invoke-static/range {v8 .. v18}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v2

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v8 .. v19}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    move-object v3, v15

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v1

    iget-object v4, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "adn \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v1

    iget-object v2, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->d(Ljava/lang/String;Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/bytedance/msdk/api/error/AdPacingError;

    const v4, 0xa052

    invoke-static {v4}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v9

    iget-object v10, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v6, v8, v1}, Lcom/bytedance/msdk/api/error/AdPacingError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v3, v1, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-wide/16 v17, -0x1

    move-object/from16 v8, p1

    move/from16 v13, p2

    move-object/from16 v16, v2

    invoke-static/range {v8 .. v18}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v2

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v8 .. v19}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_2
    const/16 v0, 0x39

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/msdk/api/error/AdBreakError;

    const v2, 0x9c6c

    invoke-static {v2}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/bytedance/msdk/api/error/AdBreakError;-><init>(ILjava/lang/String;)V

    iget-object v2, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v3, v2, v0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-wide/16 v17, -0x1

    move-object/from16 v8, p1

    move/from16 v13, p2

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v18}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/AdError;J)V

    invoke-virtual/range {p0 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;)V

    iget-object v9, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v1

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v8 .. v19}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_4
    move-object v3, v15

    :cond_5
    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v2

    iget-object v4, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e()I

    move-result v6

    invoke-virtual {v2, v4, v1, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v2

    iget-object v4, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v2, v1, v4, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Z)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    move/from16 v4, p2

    invoke-direct {v7, v1, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x26

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v0

    :goto_1
    :pswitch_1
    return v5

    :cond_6
    :goto_2
    const/16 v1, 0x24

    goto :goto_0

    :cond_7
    move/from16 v4, p2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_9

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;

    move-result-object v6

    iget-object v10, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {v6, v1, v10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_19do/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v1, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v0

    move v1, v2

    move v2, v0

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move/from16 v4, p2

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x1

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->h(Ljava/lang/String;)V

    iget-object v0, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v3, v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdSlot;II)V

    :cond_b
    if-eqz v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5f00\u59cb \u67d0\u4e00\u5c42\u7ea7\u7684waterFallConfig\u8bf7\u6c42 WaterFallConfig:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TTMediationSDK"

    invoke-static {v6, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IJ)Z

    move-result v5

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/4 v12, 0x0

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IJ)Z

    move-result v0

    move v5, v0

    :goto_6
    const/16 v0, 0x37

    :goto_7
    if-eq v0, v8, :cond_f

    if-eq v0, v9, :cond_d

    goto :goto_6

    :cond_d
    :goto_8
    return v12

    :cond_e
    const/4 v12, 0x0

    invoke-virtual {v7, v3, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;II)V

    const/4 v5, 0x0

    :cond_f
    :goto_9
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract b(Lcom/bytedance/msdk/api/AdError;)V
.end method

.method public b(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->M:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    new-instance p2, Lcom/bytedance/msdk/api/AdError;

    const v0, 0xa054

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->a(Ljava/util/List;)Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u4e2a\u5e7f\u544a\u52a0\u8f7d\u5b8c\u6210\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeSingleAdLoadCallbackUI......"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v5, "fill"

    invoke-static {v4, v5}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagThirdLevelByEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AdNetWorkName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] AdUnitId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]  \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",showSort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v3, "\u5355\u4e2a\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeSingleAdLoadCallbackUI...... errorCode:"

    invoke-static {v2, v0, v3}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p2, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  errorMsg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$c;

    invoke-direct {v0, p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final c(Lcom/bytedance/msdk/api/AdError;)V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$b;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Lcom/bytedance/msdk/api/AdError;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/bytedance/msdk/base/TTBaseAd;)V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getLinkedId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqType(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/base/TTBaseAd;->setMediationRitReqTypeSrc(I)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const/16 v2, 0x271c

    const-string v3, "load ad timeout !!!"

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isPAd()Z

    move-result v2

    const-string v3, "TTMediationSDK"

    const-string v4, ",CPM="

    const-string v5, ",showSort="

    const-string v6, ",loadSort="

    const-string v7, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v8, ",slotId\uff1a"

    if-eqz v2, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v9, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f...........\u8fd4\u56de\u4e86P\u5c42\u5e7f\u544a_\u5f53\u524dP\u5c42\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-static {v2, v1, v9}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v9, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f...........\u8fd4\u56de\u4e86ServerBidding\u5c42\u5e7f\u544a_\u5f53\u524dServerBidding\u5c42\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-static {v2, v1, v9}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isClientBiddingAd()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v9, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f...........\u8fd4\u56de\u4e86\u666e\u901a\u5c42\u5e7f\u544a_\u5f53\u524d\u666e\u901a\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-static {v2, v1, v9}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/bytedance/msdk/base/TTBaseAd;->isMultiBiddingAd()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u591a\u9636\u5e95\u4ef7"

    goto :goto_5

    :cond_5
    const-string v0, "clientBidding"

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v9}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f...........\u8fd4\u56de\u4e86"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u5c42\u5e7f\u544a_\u5f53\u524d"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u5c42\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getCpm()D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a()V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U()V

    :cond_7
    return-void
.end method

.method public c(I)Z
    .locals 3

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pangle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->s()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(I)Z
    .locals 11

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    const/16 v1, 0x9

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x41

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/16 p1, 0x42

    :goto_0
    const/16 v0, 0x43

    if-eq p1, v0, :cond_12

    goto/16 :goto_b

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "loadAdByLoadSort start...\u6267\u884c\u5f53\u524d\u52a0\u8f7d\u5c42\u7ea7\uff1aloadSort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  waterFallConfig.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v4

    if-eq v4, v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v4

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->f()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v4, :cond_7

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f(I)V

    :cond_7
    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(II)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v8, 0x4

    if-eqz v1, :cond_8

    iput v8, p1, Landroid/os/Message;->what:I

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    const/4 v1, 0x5

    iput v1, p1, Landroid/os/Message;->what:I

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    iput v2, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2713

    iput v1, p1, Landroid/os/Message;->arg1:I

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    iget-wide v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->F:J

    goto :goto_6

    :cond_b
    iget-wide v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->D:J

    :goto_6
    if-nez v6, :cond_d

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v1, :cond_d

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_c

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    invoke-virtual {v1, p1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    iget-wide v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_e

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    iget-wide v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    const/4 p1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_10

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    goto :goto_9

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    return p1

    :cond_11
    const/16 p1, 0xa

    :goto_a
    if-eq p1, v1, :cond_13

    if-eq p1, v2, :cond_13

    :cond_12
    const/16 p1, 0x9

    goto :goto_a

    :cond_13
    :goto_b
    return v3
.end method

.method public e(I)V
    .locals 4

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)V

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$a;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a0:Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->f(Ljava/util/List;)Lcom/bytedance/msdk/base/TTBaseAd;

    move-result-object v0

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a0:Lcom/bytedance/msdk/base/TTBaseAd;

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->W:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->V:J

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v8, v0, 0x1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a0:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    iget-wide v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->V:J

    iget-wide v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U:J

    sub-long/2addr v5, v9

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->j()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v9, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-static/range {v2 .. v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;JLjava/lang/String;ZI)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public onAdFailed(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 8

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_13

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Ljava/util/List;Lcom/bytedance/msdk/api/AdError;)V

    const-string v0, "TTMediationSDK"

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->b()I

    move-result v1

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->h()I

    move-result v5

    invoke-static {v1, v5}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    iget-object v7, p1, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25...........adnName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",slotType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",loadSort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",showSort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \uff0cadError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->a()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(I)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->j()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a()V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U()V

    :cond_4
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i()I

    move-result v2

    if-lt v1, v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u6709\u8fd4\u56de\u7ed3\u679c\u65f6P\u5c42\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void

    :cond_5
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u6709\u8fd4\u56de\u7ed3\u679c\u4e14\u6ee1\u8db3ClientBidding\u7b49\u5f85\u65f6\u95f4\u65f6\u666e\u901a\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void

    :cond_7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_9
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    :cond_b
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5f53\u524d\u5e7f\u544a\u6c60\u4e2d\u6709\u5e7f\u544a\u4e14\u6ee1\u8db3client bididing\u7684\u8fd4\u56de\u6761\u4ef6...\u7ed9\u51fa\u6210\u529f\u56de\u8c03..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void

    :cond_c
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/AdSlot;->getTestSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_this102/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    return-void

    :cond_d
    invoke-virtual {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->f()I

    move-result v1

    invoke-virtual {p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->b(I)I

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onAdFailed--\u300b \u52a0\u8f7d\u4e0b\u4e00\u5c42-nextIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_f

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->c(I)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->l()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v1, :cond_f

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_e
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    :goto_0
    invoke-virtual {p0, p1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(IZ)V

    :cond_10
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->g()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6240\u6709\u5e7f\u544a\u90fd\u52a0\u8f7d\u5931\u8d25...."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const/16 v0, 0x4e25

    invoke-static {v0}, Lcom/bytedance/msdk/api/AdError;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lcom/bytedance/msdk/api/AdError;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_13
    :goto_1
    return-void
.end method

.method public onAdLoaded(Lcom/bytedance/msdk/base/TTBaseAd;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->onAdLoaded(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/base/TTBaseAd;",
            ">;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-eqz v0, :cond_f

    const/16 v0, 0x2e

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->b()I

    move-result v1

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->h()I

    move-result v5

    invoke-static {v1, v5}, Lcom/apk/eg;->if(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, p2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/g;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;Lcom/bytedance/msdk/base/TTBaseAd;)V

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->a()I

    move-result v1

    const-string v3, "TTMediationSDK"

    if-nez v1, :cond_2

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u8fd4\u56de\u7684\u666e\u901a\u5e7f\u544a\u88abserver Bidding\u8fc7\u6ee4\u4e86......slotId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;)V

    :cond_3
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e(Ljava/util/List;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    const-string v4, " ,showSort:"

    if-nez v1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->isPAd()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P\u5c42\u5e7f\u544a\u5df2\u7ecf\u6210\u529f\u8fd4\u56deloadSort:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mTTPAdPoolList.size:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->x()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/f0;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/base/TTBaseAd;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u666e\u901a\u5e7f\u544a\u5f53\u524d\u5c42\u4f18\u5148\u7ea7\u6700\u9ad8\u7684\u5e7f\u544a\u5df2\u7ecf\u6210\u529f\u8fd4\u56deloadSort:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mTTCommonAdPoolList.size:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6ee1\u8db3\u5e7f\u544a\u7684\u8fd4\u56de\u6761\u4ef6...\u76f4\u63a5\u8fd4\u56de..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_6

    :cond_8
    const/16 p1, 0x34

    const/16 p2, 0x21

    :goto_1
    const/16 v1, 0x15

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_9
    :goto_3
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    const/16 v1, 0x48

    if-eq p1, v1, :cond_9

    goto :goto_5

    :goto_4
    const/16 p1, 0x2e

    const/16 p2, 0x2e

    goto :goto_3

    :goto_5
    :pswitch_2
    return-void

    :pswitch_3
    const/16 p1, 0x1d

    if-ne p2, p1, :cond_f

    :goto_6
    const/16 v1, 0x16

    const/16 p2, 0x2c

    const/16 p1, 0xa6

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/d;->m()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i()I

    move-result p2

    if-lt p1, p2, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u6709\u8fd4\u56de\u65f6P\u5c42\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    return-void

    :cond_b
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Lcom/bytedance/msdk/base/TTBaseAd;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SeverBidding\u5e7f\u544a\u6709\u8fd4\u56de\u4e14\u6ee1\u8db3ClientBidding\u7b49\u5f85\u65f6\u95f4\u65f6\u666e\u901a\u6c60\u4e2d\u6709\u5e7f\u544a\u76f4\u63a5\u8fd4\u56de......"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_8

    :cond_d
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->s:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/h;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->m()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6240\u6709\u5c42\u7ea7\u548c\u6240\u6709waterfall\u90fd\u5df2\u5b8c\u6210\u4e14\u6ee1\u8db3ClientBidding\u7b49\u5f85\u65f6\u95f4\u76f4\u63a5\u56de\u8c03..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->q()V

    goto :goto_8

    :cond_e
    :goto_7
    const/16 p1, 0x2f

    :pswitch_4
    packed-switch p1, :pswitch_data_2

    goto :goto_7

    :cond_f
    :goto_8
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onAdVideoCache()V
    .locals 2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 12

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->h0()V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f:Ljava/lang/String;

    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f\uff01\u7ed9\u5916\u90e8\u56de\u8c03\uff1ainvokeAdLoadCallbackOnMainUI........P.size:"

    invoke-static {v1, v0, v2}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   bidding.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   normal.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->y()V

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->d0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->c0()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->Y:Z

    if-nez v0, :cond_9

    :cond_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/base/TTBaseAd;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i()I

    move-result v4

    if-le v4, v1, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/base/TTBaseAd;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/bytedance/msdk/base/TTBaseAd;->isServerBiddingAd()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v1, v2

    move-object v5, v1

    :cond_8
    :goto_3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v3, v0, v5, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Ljava/util/List;)V

    :cond_9
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i()I

    move-result v1

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->i()I

    move-result v0

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_4
    move v11, v0

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->U:J

    sub-long v5, v0, v5

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a0()I

    move-result v7

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->P:I

    invoke-virtual {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(I)I

    move-result v8

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->B()Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object v10, v2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/base/TTBaseAd;JIIILjava/lang/String;I)V

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$p;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$p;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->g0()V

    :cond_d
    return-void
.end method
