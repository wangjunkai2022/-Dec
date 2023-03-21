.class public Lorg/junit/internal/requests/ClassRequest;
.super Lorg/junit/runner/Request;
.source "ClassRequest.java"


# instance fields
.field private final fCanUseSuiteMethod:Z

.field private fRunner:Lorg/junit/runner/Runner;

.field private final fRunnerLock:Ljava/lang/Object;

.field private final fTestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/junit/internal/requests/ClassRequest;-><init>(Ljava/lang/Class;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "canUseSuiteMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/requests/ClassRequest;->fRunnerLock:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lorg/junit/internal/requests/ClassRequest;->fTestClass:Ljava/lang/Class;

    .line 15
    iput-boolean p2, p0, Lorg/junit/internal/requests/ClassRequest;->fCanUseSuiteMethod:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .locals 3

    .prologue
    .line 24
    iget-object v1, p0, Lorg/junit/internal/requests/ClassRequest;->fRunnerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest;->fRunner:Lorg/junit/runner/Runner;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;

    iget-boolean v2, p0, Lorg/junit/internal/requests/ClassRequest;->fCanUseSuiteMethod:Z

    invoke-direct {v0, v2}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>(Z)V

    iget-object v2, p0, Lorg/junit/internal/requests/ClassRequest;->fTestClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/requests/ClassRequest;->fRunner:Lorg/junit/runner/Runner;

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest;->fRunner:Lorg/junit/runner/Runner;

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
