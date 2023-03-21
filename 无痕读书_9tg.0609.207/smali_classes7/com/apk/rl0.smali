.class public Lcom/apk/rl0;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/rl0$if;
    }
.end annotation


# static fields
.field public static volatile native:Lcom/apk/rl0;

.field public static final public:Lcom/apk/sl0;

.field public static final return:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final break:Ljava/util/concurrent/ExecutorService;

.field public final case:Lcom/apk/am0;

.field public final catch:Z

.field public final class:Z

.field public final const:Z

.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/apk/em0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final else:Lcom/apk/ql0;

.field public final final:Z

.field public final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:Lcom/apk/pl0;

.field public final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final import:Lcom/apk/vl0;

.field public final new:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/apk/rl0$if;",
            ">;"
        }
    .end annotation
.end field

.field public final super:Z

.field public final this:Lcom/apk/dm0;

.field public final throw:Z

.field public final try:Lcom/apk/wl0;

.field public final while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/sl0;

    invoke-direct {v0}, Lcom/apk/sl0;-><init>()V

    sput-object v0, Lcom/apk/rl0;->public:Lcom/apk/sl0;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apk/rl0;->return:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/rl0;->public:Lcom/apk/sl0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lcom/apk/rl0$do;

    invoke-direct {v1, p0}, Lcom/apk/rl0$do;-><init>(Lcom/apk/rl0;)V

    iput-object v1, p0, Lcom/apk/rl0;->new:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    sget-boolean v2, Lcom/apk/fm0;->if:Z

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lcom/apk/fm0;

    const-string v3, "EventBus"

    invoke-direct {v2, v3}, Lcom/apk/fm0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v2, Lcom/apk/vl0$do;

    invoke-direct {v2}, Lcom/apk/vl0$do;-><init>()V

    .line 8
    :goto_1
    iput-object v2, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/apk/rl0;->do:Ljava/util/Map;

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    .line 11
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/apk/rl0;->for:Ljava/util/Map;

    .line 12
    sget-boolean v2, Lcom/apk/fm0;->if:Z

    if-eqz v2, :cond_2

    .line 13
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    new-instance v3, Lcom/apk/wl0$do;

    invoke-direct {v3, v2}, Lcom/apk/wl0$do;-><init>(Landroid/os/Looper;)V

    goto :goto_4

    :cond_2
    :goto_3
    move-object v3, v1

    .line 15
    :goto_4
    iput-object v3, p0, Lcom/apk/rl0;->try:Lcom/apk/wl0;

    if-eqz v3, :cond_3

    .line 16
    new-instance v1, Lcom/apk/ul0;

    iget-object v2, v3, Lcom/apk/wl0$do;->do:Landroid/os/Looper;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3}, Lcom/apk/ul0;-><init>(Lcom/apk/rl0;Landroid/os/Looper;I)V

    .line 17
    :cond_3
    iput-object v1, p0, Lcom/apk/rl0;->case:Lcom/apk/am0;

    .line 18
    new-instance v1, Lcom/apk/ql0;

    invoke-direct {v1, p0}, Lcom/apk/ql0;-><init>(Lcom/apk/rl0;)V

    iput-object v1, p0, Lcom/apk/rl0;->else:Lcom/apk/ql0;

    .line 19
    new-instance v1, Lcom/apk/pl0;

    invoke-direct {v1, p0}, Lcom/apk/pl0;-><init>(Lcom/apk/rl0;)V

    iput-object v1, p0, Lcom/apk/rl0;->goto:Lcom/apk/pl0;

    .line 20
    iget-object v1, v0, Lcom/apk/sl0;->break:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iput v1, p0, Lcom/apk/rl0;->while:I

    .line 21
    new-instance v1, Lcom/apk/dm0;

    iget-object v2, v0, Lcom/apk/sl0;->break:Ljava/util/List;

    iget-boolean v3, v0, Lcom/apk/sl0;->goto:Z

    iget-boolean v4, v0, Lcom/apk/sl0;->else:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/apk/dm0;-><init>(Ljava/util/List;ZZ)V

    iput-object v1, p0, Lcom/apk/rl0;->this:Lcom/apk/dm0;

    .line 22
    iget-boolean v1, v0, Lcom/apk/sl0;->do:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->class:Z

    .line 23
    iget-boolean v1, v0, Lcom/apk/sl0;->if:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->const:Z

    .line 24
    iget-boolean v1, v0, Lcom/apk/sl0;->for:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->final:Z

    .line 25
    iget-boolean v1, v0, Lcom/apk/sl0;->new:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->super:Z

    .line 26
    iget-boolean v1, v0, Lcom/apk/sl0;->try:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->catch:Z

    .line 27
    iget-boolean v1, v0, Lcom/apk/sl0;->case:Z

    iput-boolean v1, p0, Lcom/apk/rl0;->throw:Z

    .line 28
    iget-object v0, v0, Lcom/apk/sl0;->this:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/apk/rl0;->break:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 29
    :cond_5
    throw v1
.end method

.method public static do(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/apk/rl0;->do(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static if()Lcom/apk/rl0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/rl0;->native:Lcom/apk/rl0;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/apk/rl0;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/apk/rl0;->native:Lcom/apk/rl0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/apk/rl0;

    invoke-direct {v0}, Lcom/apk/rl0;-><init>()V

    sput-object v0, Lcom/apk/rl0;->native:Lcom/apk/rl0;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final break(Lcom/apk/em0;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/apk/em0;->if:Lcom/apk/cm0;

    iget-object v0, v0, Lcom/apk/cm0;->if:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/apk/rl0;->goto:Lcom/apk/pl0;

    invoke-virtual {p3, p1, p2}, Lcom/apk/pl0;->do(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown thread mode: "

    invoke-static {p3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/apk/em0;->if:Lcom/apk/cm0;

    iget-object p1, p1, Lcom/apk/cm0;->if:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/apk/rl0;->else:Lcom/apk/ql0;

    invoke-virtual {p3, p1, p2}, Lcom/apk/ql0;->do(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apk/rl0;->new(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p3, p0, Lcom/apk/rl0;->case:Lcom/apk/am0;

    if-eqz p3, :cond_4

    .line 7
    invoke-interface {p3, p1, p2}, Lcom/apk/am0;->do(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/apk/rl0;->new(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/apk/rl0;->new(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p3, p0, Lcom/apk/rl0;->case:Lcom/apk/am0;

    invoke-interface {p3, p1, p2}, Lcom/apk/am0;->do(Lcom/apk/em0;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/apk/rl0;->new(Lcom/apk/em0;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized case(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public catch(Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/rl0;->this:Lcom/apk/dm0;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 3
    sget-object v3, Lcom/apk/dm0;->new:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-boolean v3, v1, Lcom/apk/dm0;->for:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/apk/dm0;->for()Lcom/apk/dm0$do;

    move-result-object v3

    .line 6
    iput-object v0, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    .line 7
    iput-boolean v4, v3, Lcom/apk/dm0$do;->case:Z

    .line 8
    iput-object v2, v3, Lcom/apk/dm0$do;->else:Lcom/apk/gm0;

    .line 9
    :goto_0
    iget-object v2, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1, v3}, Lcom/apk/dm0;->do(Lcom/apk/dm0$do;)V

    .line 11
    invoke-virtual {v3}, Lcom/apk/dm0$do;->for()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v3}, Lcom/apk/dm0;->if(Lcom/apk/dm0$do;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/apk/dm0;->for()Lcom/apk/dm0$do;

    move-result-object v3

    .line 14
    iput-object v0, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    .line 15
    iput-boolean v4, v3, Lcom/apk/dm0$do;->case:Z

    .line 16
    iput-object v2, v3, Lcom/apk/dm0$do;->else:Lcom/apk/gm0;

    .line 17
    :goto_1
    iget-object v5, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    if-eqz v5, :cond_9

    .line 18
    iget-object v5, v3, Lcom/apk/dm0$do;->else:Lcom/apk/gm0;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/apk/gm0;->if()Lcom/apk/gm0;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 19
    iget-object v5, v3, Lcom/apk/dm0$do;->else:Lcom/apk/gm0;

    invoke-interface {v5}, Lcom/apk/gm0;->if()Lcom/apk/gm0;

    move-result-object v5

    .line 20
    iget-object v6, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    invoke-interface {v5}, Lcom/apk/gm0;->for()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget-object v5, v1, Lcom/apk/dm0;->do:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 22
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/hm0;

    .line 23
    iget-object v7, v3, Lcom/apk/dm0$do;->try:Ljava/lang/Class;

    invoke-interface {v6, v7}, Lcom/apk/hm0;->do(Ljava/lang/Class;)Lcom/apk/gm0;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_5
    move-object v5, v2

    .line 24
    :goto_2
    iput-object v5, v3, Lcom/apk/dm0$do;->else:Lcom/apk/gm0;

    if-eqz v5, :cond_7

    .line 25
    invoke-interface {v5}, Lcom/apk/gm0;->do()[Lcom/apk/cm0;

    move-result-object v5

    .line 26
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 27
    iget-object v9, v8, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    iget-object v10, v8, Lcom/apk/cm0;->for:Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Lcom/apk/dm0$do;->do(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 28
    iget-object v9, v3, Lcom/apk/dm0$do;->do:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 29
    :cond_7
    invoke-virtual {v1, v3}, Lcom/apk/dm0;->do(Lcom/apk/dm0$do;)V

    .line 30
    :cond_8
    invoke-virtual {v3}, Lcom/apk/dm0$do;->for()V

    goto :goto_1

    .line 31
    :cond_9
    invoke-virtual {v1, v3}, Lcom/apk/dm0;->if(Lcom/apk/dm0$do;)Ljava/util/List;

    move-result-object v1

    :goto_4
    move-object v3, v1

    .line 32
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 33
    sget-object v1, Lcom/apk/dm0;->new:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_5
    monitor-enter p0

    .line 35
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/cm0;

    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/apk/rl0;->class(Ljava/lang/Object;Lcom/apk/cm0;)V

    goto :goto_6

    .line 37
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 38
    :cond_b
    new-instance p1, Lcom/apk/tl0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apk/tl0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_c
    throw v2
.end method

.method public final class(Ljava/lang/Object;Lcom/apk/cm0;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/apk/cm0;->for:Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/apk/em0;

    invoke-direct {v1, p1, p2}, Lcom/apk/em0;-><init>(Ljava/lang/Object;Lcom/apk/cm0;)V

    .line 3
    iget-object v2, p0, Lcom/apk/rl0;->do:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/apk/rl0;->do:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    .line 8
    iget v5, p2, Lcom/apk/cm0;->new:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/em0;

    iget-object v6, v6, Lcom/apk/em0;->if:Lcom/apk/cm0;

    iget v6, v6, Lcom/apk/cm0;->new:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p2, Lcom/apk/cm0;->try:Z

    if-eqz p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lcom/apk/rl0;->throw:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/apk/rl0;->for:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/apk/rl0;->try()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/apk/rl0;->break(Lcom/apk/em0;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/apk/rl0;->for:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/apk/rl0;->try()Z

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/apk/rl0;->break(Lcom/apk/em0;Ljava/lang/Object;Z)V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p2, Lcom/apk/tl0;

    const-string v1, "Subscriber "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/apk/tl0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized const(Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcom/apk/rl0;->do:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apk/em0;

    .line 6
    iget-object v6, v5, Lcom/apk/em0;->do:Ljava/lang/Object;

    if-ne v6, p1, :cond_1

    .line 7
    iput-boolean v3, v5, Lcom/apk/em0;->for:Z

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/apk/rl0;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/apk/vl0;->do(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public else(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/rl0;->new:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/rl0$if;

    .line 2
    iget-object v1, v0, Lcom/apk/rl0$if;->do:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p1, v0, Lcom/apk/rl0$if;->if:Z

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/apk/rl0;->try()Z

    move-result p1

    iput-boolean p1, v0, Lcom/apk/rl0$if;->for:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lcom/apk/rl0$if;->if:Z

    .line 7
    iget-boolean p1, v0, Lcom/apk/rl0$if;->try:Z

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 8
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/apk/rl0;->goto(Ljava/lang/Object;Lcom/apk/rl0$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, v0, Lcom/apk/rl0$if;->if:Z

    .line 11
    iput-boolean p1, v0, Lcom/apk/rl0$if;->for:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 12
    iput-boolean p1, v0, Lcom/apk/rl0$if;->if:Z

    .line 13
    iput-boolean p1, v0, Lcom/apk/rl0$if;->for:Z

    .line 14
    throw v1

    .line 15
    :cond_1
    new-instance p1, Lcom/apk/tl0;

    const-string v0, "Internal error. Abort state was not reset"

    invoke-direct {p1, v0}, Lcom/apk/tl0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public for(Lcom/apk/yl0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/apk/yl0;->do:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/apk/yl0;->if:Lcom/apk/em0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p1, Lcom/apk/yl0;->do:Ljava/lang/Object;

    .line 4
    iput-object v2, p1, Lcom/apk/yl0;->if:Lcom/apk/em0;

    .line 5
    iput-object v2, p1, Lcom/apk/yl0;->for:Lcom/apk/yl0;

    .line 6
    sget-object v2, Lcom/apk/yl0;->new:Ljava/util/List;

    monitor-enter v2

    .line 7
    :try_start_0
    sget-object v3, Lcom/apk/yl0;->new:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    .line 8
    sget-object v3, Lcom/apk/yl0;->new:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-boolean p1, v1, Lcom/apk/em0;->for:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/apk/rl0;->new(Lcom/apk/em0;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final goto(Ljava/lang/Object;Lcom/apk/rl0$if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/apk/rl0;->throw:Z

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lcom/apk/rl0;->return:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/apk/rl0;->return:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/apk/rl0;->do(Ljava/util/List;[Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_0
    sget-object v3, Lcom/apk/rl0;->return:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 12
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 13
    invoke-virtual {p0, p1, p2, v5}, Lcom/apk/rl0;->this(Ljava/lang/Object;Lcom/apk/rl0$if;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/apk/rl0;->this(Ljava/lang/Object;Lcom/apk/rl0$if;Ljava/lang/Class;)Z

    move-result v4

    :cond_3
    if-nez v4, :cond_5

    .line 16
    iget-boolean p2, p0, Lcom/apk/rl0;->const:Z

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subscribers registered for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/apk/vl0;->do(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-boolean p2, p0, Lcom/apk/rl0;->super:Z

    if-eqz p2, :cond_5

    const-class p2, Lcom/apk/xl0;

    if-eq v0, p2, :cond_5

    const-class p2, Lcom/apk/bm0;

    if-eq v0, p2, :cond_5

    .line 19
    new-instance p2, Lcom/apk/xl0;

    invoke-direct {p2, p0, p1}, Lcom/apk/xl0;-><init>(Lcom/apk/rl0;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public new(Lcom/apk/em0;Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/apk/em0;->if:Lcom/apk/cm0;

    iget-object v0, v0, Lcom/apk/cm0;->do:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/apk/em0;->do:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, p2, Lcom/apk/bm0;

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/apk/rl0;->class:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p1, p1, Lcom/apk/em0;->do:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/apk/vl0;->if(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    check-cast p2, Lcom/apk/bm0;

    .line 8
    iget-object p1, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Initial event "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/apk/bm0;->if:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/apk/bm0;->for:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/apk/bm0;->do:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, p2}, Lcom/apk/vl0;->if(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/apk/rl0;->catch:Z

    if-nez v1, :cond_3

    .line 10
    iget-boolean v1, p0, Lcom/apk/rl0;->class:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/apk/rl0;->import:Lcom/apk/vl0;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not dispatch event: "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to subscribing class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/apk/em0;->do:Ljava/lang/Object;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v1, v2, v3, v0}, Lcom/apk/vl0;->if(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_1
    iget-boolean v1, p0, Lcom/apk/rl0;->final:Z

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lcom/apk/bm0;

    iget-object p1, p1, Lcom/apk/em0;->do:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/apk/bm0;-><init>(Lcom/apk/rl0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Lcom/apk/tl0;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, v0}, Lcom/apk/tl0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final this(Ljava/lang/Object;Lcom/apk/rl0$if;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/apk/rl0$if;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/rl0;->do:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/em0;

    .line 6
    iput-object p1, p2, Lcom/apk/rl0$if;->new:Ljava/lang/Object;

    .line 7
    :try_start_1
    iget-boolean v2, p2, Lcom/apk/rl0$if;->for:Z

    invoke-virtual {p0, v1, p1, v2}, Lcom/apk/rl0;->break(Lcom/apk/em0;Ljava/lang/Object;Z)V

    .line 8
    iget-boolean v1, p2, Lcom/apk/rl0$if;->try:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iput-boolean v0, p2, Lcom/apk/rl0$if;->try:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p2, Lcom/apk/rl0$if;->try:Z

    .line 10
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catchall_1
    move-exception p1

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EventBus[indexCount="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apk/rl0;->while:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/apk/rl0;->throw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/rl0;->try:Lcom/apk/wl0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Lcom/apk/wl0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/wl0$do;->do:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
