.class public abstract Lorg/junit/runners/ParentRunner;
.super Lorg/junit/runner/Runner;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/junit/runner/Runner;",
        "Lorg/junit/runner/manipulation/Filterable;",
        "Lorg/junit/runner/manipulation/Sortable;"
    }
.end annotation


# instance fields
.field private fFilteredChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private fScheduler:Lorg/junit/runners/model/RunnerScheduler;

.field private fSorter:Lorg/junit/runner/manipulation/Sorter;

.field private final fTestClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 57
    sget-object v0, Lorg/junit/runner/manipulation/Sorter;->NULL:Lorg/junit/runner/manipulation/Sorter;

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->fSorter:Lorg/junit/runner/manipulation/Sorter;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->fFilteredChildren:Ljava/util/List;

    .line 61
    new-instance v0, Lorg/junit/runners/ParentRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$1;-><init>(Lorg/junit/runners/ParentRunner;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->fScheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 75
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    .line 76
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->validate()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/runners/ParentRunner;
    .param p1, "x1"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->runChildren(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method static synthetic access$100(Lorg/junit/runners/ParentRunner;)Lorg/junit/runner/manipulation/Sorter;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/ParentRunner;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fSorter:Lorg/junit/runner/manipulation/Sorter;

    return-object v0
.end method

.method private comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$4;

    invoke-direct {v0, p0}, Lorg/junit/runners/ParentRunner$4;-><init>(Lorg/junit/runners/ParentRunner;)V

    return-object v0
.end method

.method private getFilteredChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fFilteredChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner;->fFilteredChildren:Ljava/util/List;

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fFilteredChildren:Ljava/util/List;

    return-object v0
.end method

.method private runChildren(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 235
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

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

    .line 236
    .local v0, "each":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/junit/runners/ParentRunner;->fScheduler:Lorg/junit/runners/model/RunnerScheduler;

    new-instance v3, Lorg/junit/runners/ParentRunner$3;

    invoke-direct {v3, p0, v0, p1}, Lorg/junit/runners/ParentRunner$3;-><init>(Lorg/junit/runners/ParentRunner;Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V

    invoke-interface {v2, v3}, Lorg/junit/runners/model/RunnerScheduler;->schedule(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 242
    .end local v0    # "each":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lorg/junit/runners/ParentRunner;->fScheduler:Lorg/junit/runners/model/RunnerScheduler;

    invoke-interface {v2}, Lorg/junit/runners/model/RunnerScheduler;->finished()V

    .line 243
    return-void
.end method

.method private shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/manipulation/Filter;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p2, "each":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v0

    return v0
.end method

.method private sortChild(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "child":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fSorter:Lorg/junit/runner/manipulation/Sorter;

    invoke-virtual {v0, p1}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method private validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 356
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    throw v1

    .line 359
    :cond_0
    return-void
.end method

.method private validateClassRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 139
    sget-object v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 140
    return-void
.end method

.method private withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 203
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->classRules()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "classRules":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/rules/RunRules;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method protected childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 226
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v0, Lorg/junit/runners/ParentRunner$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runners/ParentRunner$2;-><init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runner/notification/RunNotifier;)V

    return-object v0
.end method

.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 160
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 161
    .local v0, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0}, Lorg/junit/runners/ParentRunner;->withClassRules(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method protected classRules()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    const/4 v4, 0x0

    .line 213
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/ClassRule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, v4, v2, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/ClassRule;

    const-class v3, Lorg/junit/rules/TestRule;

    invoke-virtual {v1, v4, v2, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    return-object v0
.end method

.method protected collectInitializationErrors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v1, 0x1

    .line 113
    const-class v0, Lorg/junit/BeforeClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 114
    const-class v0, Lorg/junit/AfterClass;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/ParentRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 115
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;->validateClassRules(Ljava/util/List;)V

    .line 116
    return-void
.end method

.method protected abstract describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/junit/runner/Description;"
        }
    .end annotation
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 4
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 326
    .local v1, "each":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, v1}, Lorg/junit/runners/ParentRunner;->shouldRun(Lorg/junit/runner/manipulation/Filter;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 333
    .end local v0    # "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 336
    .end local v1    # "each":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    new-instance v3, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v3}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw v3

    .line 339
    :cond_2
    return-void
.end method

.method protected abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 5

    .prologue
    .line 295
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getRunnerAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 297
    .local v1, "description":Lorg/junit/runner/Description;
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "child":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 300
    .end local v0    # "child":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTestClass()Lorg/junit/runners/model/TestClass;
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 305
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v2, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 308
    .local v2, "testNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/runners/ParentRunner;->classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 309
    .local v1, "statement":Lorg/junit/runners/model/Statement;
    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/runner/notification/StoppedByUserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 317
    .end local v1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-virtual {v2}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestIgnored()V

    goto :goto_0

    .line 312
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Lorg/junit/runner/notification/StoppedByUserException;
    throw v0

    .line 314
    .end local v0    # "e":Lorg/junit/runner/notification/StoppedByUserException;
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation
.end method

.method protected final runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .param p3, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 268
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    new-instance v1, Lorg/junit/internal/runners/model/EachTestNotifier;

    invoke-direct {v1, p3, p2}, Lorg/junit/internal/runners/model/EachTestNotifier;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 269
    .local v1, "eachNotifier":Lorg/junit/internal/runners/model/EachTestNotifier;
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestStarted()V

    .line 271
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    .line 279
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    goto :goto_0

    .line 274
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->fireTestFinished()V

    throw v2
.end method

.method public setScheduler(Lorg/junit/runners/model/RunnerScheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lorg/junit/runners/model/RunnerScheduler;

    .prologue
    .line 389
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->fScheduler:Lorg/junit/runners/model/RunnerScheduler;

    .line 390
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 4
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .prologue
    .line 342
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner;->fSorter:Lorg/junit/runner/manipulation/Sorter;

    .line 343
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

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

    .line 344
    .local v0, "each":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0}, Lorg/junit/runners/ParentRunner;->sortChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    .end local v0    # "each":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->getFilteredChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    return-void
.end method

.method protected validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V
    .locals 4
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    .line 133
    .local v0, "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v0, p2, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoidNoArg(ZLjava/util/List;)V

    goto :goto_0

    .line 135
    .end local v0    # "eachTestMethod":Lorg/junit/runners/model/FrameworkMethod;
    :cond_0
    return-void
.end method

.method protected withAfterClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 187
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/AfterClass;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunAfters;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0
.end method

.method protected withBeforeClasses(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 3
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 173
    .local p0, "this":Lorg/junit/runners/ParentRunner;, "Lorg/junit/runners/ParentRunner<TT;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner;->fTestClass:Lorg/junit/runners/model/TestClass;

    const-class v2, Lorg/junit/BeforeClass;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "statement":Lorg/junit/runners/model/Statement;
    :goto_0
    return-object p1

    .restart local p1    # "statement":Lorg/junit/runners/model/Statement;
    :cond_0
    new-instance v1, Lorg/junit/internal/runners/statements/RunBefores;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0
.end method
