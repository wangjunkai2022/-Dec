.class public final Lcom/apk/sh0;
.super Ljava/lang/Object;
.source "TaskRunner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/sh0$do;,
        Lcom/apk/sh0$for;,
        Lcom/apk/sh0$if;
    }
.end annotation


# static fields
.field public static final break:Lcom/apk/sh0$if;

.field public static final goto:Lcom/apk/sh0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final this:Ljava/util/logging/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final case:Ljava/lang/Runnable;

.field public do:I

.field public final else:Lcom/apk/sh0$do;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public for:J

.field public if:Z

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/rh0;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/rh0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apk/sh0$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/sh0$if;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/sh0;->break:Lcom/apk/sh0$if;

    .line 1
    new-instance v0, Lcom/apk/sh0;

    new-instance v1, Lcom/apk/sh0$for;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/apk/jh0;->this:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TaskRunner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    .line 2
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/apk/ih0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/apk/ih0;-><init>(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {v1, v3}, Lcom/apk/sh0$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Lcom/apk/sh0;-><init>(Lcom/apk/sh0$do;)V

    sput-object v0, Lcom/apk/sh0;->goto:Lcom/apk/sh0;

    .line 5
    const-class v0, Lcom/apk/sh0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(TaskRunner::class.java.name)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/apk/sh0;->this:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/apk/sh0$do;)V
    .locals 1
    .param p1    # Lcom/apk/sh0$do;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "backend"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    const/16 p1, 0x2710

    .line 2
    iput p1, p0, Lcom/apk/sh0;->do:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/sh0;->new:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/apk/sh0$new;

    invoke-direct {p1, p0}, Lcom/apk/sh0$new;-><init>(Lcom/apk/sh0;)V

    iput-object p1, p0, Lcom/apk/sh0;->case:Ljava/lang/Runnable;

    return-void
.end method

.method public static final do(Lcom/apk/sh0;Lcom/apk/ph0;)V
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Thread "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "currentThread"

    .line 4
    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lcom/apk/ph0;->for:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/ph0;->do()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, Lcom/apk/sh0;->if(Lcom/apk/ph0;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception v4

    monitor-enter p0

    .line 13
    :try_start_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/apk/sh0;->if(Lcom/apk/ph0;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    monitor-exit p0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v4

    :catchall_2
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1

    :cond_2
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public final case()Lcom/apk/rh0;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/apk/sh0;->do:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/apk/sh0;->do:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2
    new-instance v1, Lcom/apk/rh0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/apk/rh0;-><init>(Lcom/apk/sh0;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0

    throw v0
.end method

.method public final for()Lcom/apk/ph0;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    const-string v2, " MUST hold lock on "

    const-string v3, "Thread.currentThread()"

    const-string v4, "Thread "

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    return-object v5

    .line 4
    :cond_2
    iget-object v0, v1, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    invoke-interface {v0}, Lcom/apk/sh0$do;->for()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    .line 5
    iget-object v0, v1, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/apk/rh0;

    .line 6
    iget-object v10, v10, Lcom/apk/rh0;->for:Ljava/util/List;

    .line 7
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/apk/ph0;

    .line 8
    iget-wide v13, v10, Lcom/apk/ph0;->if:J

    sub-long/2addr v13, v6

    const-wide/16 v11, 0x0

    .line 9
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_3

    .line 10
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move-object v5, v10

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v5, :cond_a

    .line 11
    sget-boolean v6, Lcom/apk/jh0;->goto:Z

    if-eqz v6, :cond_7

    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_3
    const-wide/16 v2, -0x1

    .line 13
    iput-wide v2, v5, Lcom/apk/ph0;->if:J

    .line 14
    iget-object v2, v5, Lcom/apk/ph0;->do:Lcom/apk/rh0;

    .line 15
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/apk/rh0;->for:Ljava/util/List;

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, v1, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    iput-object v5, v2, Lcom/apk/rh0;->if:Lcom/apk/ph0;

    .line 20
    iget-object v3, v1, Lcom/apk/sh0;->new:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_8

    .line 21
    iget-boolean v0, v1, Lcom/apk/sh0;->if:Z

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 22
    :cond_8
    iget-object v0, v1, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    iget-object v2, v1, Lcom/apk/sh0;->case:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Lcom/apk/sh0$do;->execute(Ljava/lang/Runnable;)V

    :cond_9
    return-object v5

    .line 23
    :cond_a
    iget-boolean v0, v1, Lcom/apk/sh0;->if:Z

    if-eqz v0, :cond_c

    .line 24
    iget-wide v2, v1, Lcom/apk/sh0;->for:J

    sub-long/2addr v2, v6

    cmp-long v0, v8, v2

    if-gez v0, :cond_b

    .line 25
    iget-object v0, v1, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    invoke-interface {v0, v1}, Lcom/apk/sh0$do;->do(Lcom/apk/sh0;)V

    :cond_b
    const/4 v0, 0x0

    return-object v0

    :cond_c
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, v1, Lcom/apk/sh0;->if:Z

    add-long/2addr v6, v8

    .line 27
    iput-wide v6, v1, Lcom/apk/sh0;->for:J

    .line 28
    :try_start_0
    iget-object v0, v1, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    invoke-interface {v0, v1, v8, v9}, Lcom/apk/sh0$do;->if(Lcom/apk/sh0;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    .line 29
    :catch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/apk/sh0;->new()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 30
    :goto_5
    iput-boolean v5, v1, Lcom/apk/sh0;->if:Z

    goto/16 :goto_0

    :goto_6
    iput-boolean v5, v1, Lcom/apk/sh0;->if:Z

    throw v0
.end method

.method public final if(Lcom/apk/ph0;J)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Thread "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const-string v0, "Thread.currentThread()"

    invoke-static {p3, v0}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/apk/ph0;->do:Lcom/apk/rh0;

    .line 4
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/apk/rh0;->if:Lcom/apk/ph0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 6
    iget-boolean v1, v0, Lcom/apk/rh0;->new:Z

    .line 7
    iput-boolean v3, v0, Lcom/apk/rh0;->new:Z

    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/apk/rh0;->if:Lcom/apk/ph0;

    .line 9
    iget-object v3, p0, Lcom/apk/sh0;->new:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    cmp-long v5, p2, v3

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    .line 10
    iget-boolean v1, v0, Lcom/apk/rh0;->do:Z

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/apk/rh0;->try(Lcom/apk/ph0;JZ)Z

    .line 12
    :cond_3
    iget-object p1, v0, Lcom/apk/rh0;->for:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/sh0;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/sh0;->new:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/rh0;

    invoke-virtual {v1}, Lcom/apk/rh0;->if()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/rh0;

    .line 5
    invoke-virtual {v1}, Lcom/apk/rh0;->if()Z

    .line 6
    iget-object v1, v1, Lcom/apk/rh0;->for:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final try(Lcom/apk/rh0;)V
    .locals 3
    .param p1    # Lcom/apk/rh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/apk/jh0;->goto:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Thread "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/apk/rh0;->if:Lcom/apk/ph0;

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p1, Lcom/apk/rh0;->for:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    const-string v1, "$this$addIfAbsent"

    .line 7
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/apk/sh0;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/apk/sh0;->if:Z

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    invoke-interface {p1, p0}, Lcom/apk/sh0$do;->do(Lcom/apk/sh0;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/apk/sh0;->else:Lcom/apk/sh0$do;

    iget-object v0, p0, Lcom/apk/sh0;->case:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/apk/sh0$do;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
