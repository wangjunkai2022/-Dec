.class public Lorg/junit/internal/runners/ClassRoadie;
.super Ljava/lang/Object;
.source "ClassRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fDescription:Lorg/junit/runner/Description;

.field private fNotifier:Lorg/junit/runner/notification/RunNotifier;

.field private final fRunnable:Ljava/lang/Runnable;

.field private fTestClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/TestClass;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "testClass"    # Lorg/junit/internal/runners/TestClass;
    .param p3, "description"    # Lorg/junit/runner/Description;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/junit/internal/runners/ClassRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    .line 27
    iput-object p2, p0, Lorg/junit/internal/runners/ClassRoadie;->fTestClass:Lorg/junit/internal/runners/TestClass;

    .line 28
    iput-object p3, p0, Lorg/junit/internal/runners/ClassRoadie;->fDescription:Lorg/junit/runner/Description;

    .line 29
    iput-object p4, p0, Lorg/junit/internal/runners/ClassRoadie;->fRunnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method private runAfters()V
    .locals 6

    .prologue
    .line 71
    iget-object v4, p0, Lorg/junit/internal/runners/ClassRoadie;->fTestClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v4}, Lorg/junit/internal/runners/TestClass;->getAfters()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "afters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 74
    .local v0, "after":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v0    # "after":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private runBefores()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    iget-object v4, p0, Lorg/junit/internal/runners/ClassRoadie;->fTestClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v4}, Lorg/junit/internal/runners/TestClass;->getBefores()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 57
    .local v0, "before":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 59
    .end local v0    # "before":Ljava/lang/reflect/Method;
    .end local v1    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    throw v4
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 63
    .local v2, "e":Lorg/junit/internal/AssumptionViolatedException;
    new-instance v4, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v4}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v4

    .line 64
    .end local v2    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 66
    new-instance v4, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v4}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v4

    .line 68
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "targetException"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/ClassRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 40
    return-void
.end method

.method public runProtected()V
    .locals 1

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runBefores()V

    .line 45
    invoke-virtual {p0}, Lorg/junit/internal/runners/ClassRoadie;->runUnprotected()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    throw v0
.end method

.method protected runUnprotected()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->fRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void
.end method
