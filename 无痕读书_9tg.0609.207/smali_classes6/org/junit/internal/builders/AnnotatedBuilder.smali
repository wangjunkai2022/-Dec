.class public Lorg/junit/internal/builders/AnnotatedBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "AnnotatedBuilder.java"


# static fields
.field private static final CONSTRUCTOR_ERROR_FORMAT:Ljava/lang/String; = "Custom runner class %s should have a public constructor with signature %s(Class testClass)"


# instance fields
.field private fSuiteBuilder:Lorg/junit/runners/model/RunnerBuilder;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 0
    .param p1, "suiteBuilder"    # Lorg/junit/runners/model/RunnerBuilder;

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/junit/internal/builders/AnnotatedBuilder;->fSuiteBuilder:Lorg/junit/runners/model/RunnerBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/junit/runner/Runner;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runner/Runner;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-object v3

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/junit/runners/model/RunnerBuilder;

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/junit/internal/builders/AnnotatedBuilder;->fSuiteBuilder:Lorg/junit/runners/model/RunnerBuilder;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runner/Runner;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e2":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "simpleName":Ljava/lang/String;
    new-instance v3, Lorg/junit/runners/model/InitializationError;

    const-string v4, "Custom runner class %s should have a public constructor with signature %s(Class testClass)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/runner/RunWith;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/RunWith;

    .line 20
    .local v0, "annotation":Lorg/junit/runner/RunWith;
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
