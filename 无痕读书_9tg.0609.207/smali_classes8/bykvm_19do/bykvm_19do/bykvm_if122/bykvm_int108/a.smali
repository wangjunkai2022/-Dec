.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;
.super Ljava/lang/Object;
.source "InitADNHelper.java"


# static fields
.field public static final d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;
    .locals 1

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 3
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 8
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/a;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;
    .locals 0

    .line 3
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;

    return-object p0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->j()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/b;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/e;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;
    .locals 1

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$b;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$b;->run()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->h()V

    return-void
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$c;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->b()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/f;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/g;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static g()Z
    .locals 5

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 1

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/h;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic h(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized i()V
    .locals 2

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$a;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$a;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private i(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/j;

    move-result-object p1

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$d;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$d;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)V

    invoke-virtual {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V

    return-void
.end method

.method public static synthetic i(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static j()V
    .locals 1

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method

.method public static synthetic j(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static k()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/m;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;)V
    .locals 1

    .line 9
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;

    .line 10
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;

    invoke-direct {p2, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
