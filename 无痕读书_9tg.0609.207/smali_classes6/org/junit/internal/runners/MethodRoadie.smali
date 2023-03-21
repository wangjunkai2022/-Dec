.class public Lorg/junit/internal/runners/MethodRoadie;
.super Ljava/lang/Object;
.source "MethodRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final fDescription:Lorg/junit/runner/Description;

.field private final fNotifier:Lorg/junit/runner/notification/RunNotifier;

.field private final fTest:Ljava/lang/Object;

.field private fTestMethod:Lorg/junit/internal/runners/TestMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/junit/internal/runners/TestMethod;Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "test"    # Ljava/lang/Object;
    .param p2, "method"    # Lorg/junit/internal/runners/TestMethod;
    .param p3, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p4, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/junit/internal/runners/MethodRoadie;->fTest:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    .line 34
    iput-object p4, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    .line 35
    iput-object p2, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    .line 36
    return-void
.end method

.method private runAfters()V
    .locals 6

    .prologue
    .line 146
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v4}, Lorg/junit/internal/runners/TestMethod;->getAfters()Ljava/util/List;

    move-result-object v1

    .line 147
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

    .line 149
    .local v0, "after":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTest:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
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
    .line 130
    :try_start_0
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v4}, Lorg/junit/internal/runners/TestMethod;->getBefores()Ljava/util/List;

    move-result-object v1

    .line 131
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

    .line 132
    .local v0, "before":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTest:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 134
    .end local v0    # "before":Ljava/lang/reflect/Method;
    .end local v1    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    throw v4
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Lorg/junit/internal/AssumptionViolatedException;
    new-instance v4, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v4}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v4

    .line 139
    .end local v2    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_2
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 141
    new-instance v4, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v4}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v4

    .line 143
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private runWithTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 57
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/internal/runners/MethodRoadie$1;-><init>(Lorg/junit/internal/runners/MethodRoadie;J)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 160
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 39
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->isIgnored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v2, v3}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    .line 54
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v2, v3}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 45
    :try_start_0
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->getTimeout()J

    move-result-wide v0

    .line 46
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 47
    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodRoadie;->runWithTimeout(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_1
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v2, v3}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodRoadie;->runTest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v0    # "timeout":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v3, v4}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    throw v2
.end method

.method public runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "test"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runBefores()V

    .line 96
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    .line 103
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 101
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "test should never throw an exception to this level"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    throw v1
.end method

.method public runTest()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$2;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/MethodRoadie$2;-><init>(Lorg/junit/internal/runners/MethodRoadie;)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method protected runTestMethod()V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTest:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/junit/internal/runners/TestMethod;->invoke(Ljava/lang/Object;)V

    .line 108
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v3}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v5}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 113
    .local v0, "actual":Ljava/lang/Throwable;
    instance-of v3, v0, Lorg/junit/internal/AssumptionViolatedException;

    if-nez v3, :cond_0

    .line 115
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v3}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v3, v0}, Lorg/junit/internal/runners/TestMethod;->isUnexpected(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception, expected<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie;->fTestMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v4}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> but was<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v0    # "actual":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
