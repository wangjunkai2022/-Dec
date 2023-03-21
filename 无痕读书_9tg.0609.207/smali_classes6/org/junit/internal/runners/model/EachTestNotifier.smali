.class public Lorg/junit/internal/runners/model/EachTestNotifier;
.super Ljava/lang/Object;
.source "EachTestNotifier.java"


# instance fields
.field private final fDescription:Lorg/junit/runner/Description;

.field private final fNotifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    .line 16
    iput-object p2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    .line 17
    return-void
.end method

.method private addMultipleFailureException(Lorg/junit/runners/model/MultipleFailureException;)V
    .locals 3
    .param p1, "mfe"    # Lorg/junit/runners/model/MultipleFailureException;

    .prologue
    .line 29
    invoke-virtual {p1}, Lorg/junit/runners/model/MultipleFailureException;->getFailures()Ljava/util/List;

    move-result-object v2

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

    .line 30
    .local v0, "each":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 32
    .end local v0    # "each":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 3
    .param p1, "e"    # Lorg/junit/internal/AssumptionViolatedException;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V

    .line 36
    return-void
.end method

.method public addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "targetException"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    instance-of v0, p1, Lorg/junit/runners/model/MultipleFailureException;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lorg/junit/runners/model/MultipleFailureException;

    .end local p1    # "targetException":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addMultipleFailureException(Lorg/junit/runners/model/MultipleFailureException;)V

    .line 26
    :goto_0
    return-void

    .line 23
    .restart local p1    # "targetException":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    goto :goto_0
.end method

.method public fireTestFinished()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 40
    return-void
.end method

.method public fireTestIgnored()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    .line 48
    return-void
.end method

.method public fireTestStarted()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->fDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 44
    return-void
.end method
