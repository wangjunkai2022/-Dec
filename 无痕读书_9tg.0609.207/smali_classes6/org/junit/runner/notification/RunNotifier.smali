.class public Lorg/junit/runner/notification/RunNotifier;
.super Ljava/lang/Object;
.source "RunNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/notification/RunNotifier$SafeNotifier;
    }
.end annotation


# instance fields
.field private final fListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile fPleaseStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->fPleaseStop:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/runner/notification/RunNotifier;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailures(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private fireTestFailures(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    .local p2, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier$4;-><init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$4;->run()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public addFirstListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    return-void
.end method

.method public addListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .prologue
    .line 156
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$5;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$5;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/notification/Failure;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$5;->run()V

    .line 164
    return-void
.end method

.method public fireTestFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/junit/runner/notification/Failure;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailures(Ljava/util/List;Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public fireTestFinished(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 188
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$7;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$7;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$7;->run()V

    .line 196
    return-void
.end method

.method public fireTestIgnored(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 172
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$6;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$6;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$6;->run()V

    .line 178
    return-void
.end method

.method public fireTestRunFinished(Lorg/junit/runner/Result;)V
    .locals 1
    .param p1, "result"    # Lorg/junit/runner/Result;

    .prologue
    .line 92
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$2;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Result;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$2;->run()V

    .line 100
    return-void
.end method

.method public fireTestRunStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 78
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$1;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$1;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$1;->run()V

    .line 86
    return-void
.end method

.method public fireTestStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/notification/StoppedByUserException;
        }
    .end annotation

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->fPleaseStop:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/junit/runner/notification/StoppedByUserException;

    invoke-direct {v0}, Lorg/junit/runner/notification/StoppedByUserException;-><init>()V

    throw v0

    .line 112
    :cond_0
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$3;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$3;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$3;->run()V

    .line 120
    return-void
.end method

.method public pleaseStop()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->fPleaseStop:Z

    .line 206
    return-void
.end method

.method public removeListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
