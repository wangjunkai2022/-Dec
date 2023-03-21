.class public Lorg/junit/internal/runners/ErrorReportingRunner;
.super Lorg/junit/runner/Runner;
.source "ErrorReportingRunner.java"


# instance fields
.field private final fCauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final fTestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fTestClass:Ljava/lang/Class;

    .line 20
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fCauses:Ljava/util/List;

    .line 21
    return-void
.end method

.method private describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;
    .locals 2
    .param p1, "child"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fTestClass:Ljava/lang/Class;

    const-string v1, "initializationError"

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method private getCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 51
    .end local p1    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .line 44
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p1, Lorg/junit/runners/model/InitializationError;

    if-eqz v0, :cond_1

    .line 45
    check-cast p1, Lorg/junit/runners/model/InitializationError;

    .end local p1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lorg/junit/runners/model/InitializationError;->getCauses()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 47
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p1, Lorg/junit/internal/runners/InitializationError;

    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Lorg/junit/internal/runners/InitializationError;

    .end local p1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lorg/junit/internal/runners/InitializationError;->getCauses()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local p1    # "cause":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/Throwable;
    .param p2, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 61
    .local v0, "description":Lorg/junit/runner/Description;
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 62
    new-instance v1, Lorg/junit/runner/notification/Failure;

    invoke-direct {v1, v0, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 63
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .locals 4

    .prologue
    .line 25
    iget-object v3, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fTestClass:Ljava/lang/Class;

    invoke-static {v3}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 26
    .local v0, "description":Lorg/junit/runner/Description;
    iget-object v3, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fCauses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 27
    .local v1, "each":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 29
    .end local v1    # "each":Ljava/lang/Throwable;
    :cond_0
    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 34
    iget-object v2, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->fCauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 35
    .local v0, "each":Ljava/lang/Throwable;
    invoke-direct {p0, v0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V

    goto :goto_0

    .line 37
    .end local v0    # "each":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
