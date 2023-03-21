.class public Lorg/junit/internal/runners/JUnit38ClassRunner;
.super Lorg/junit/runner/Runner;
.source "JUnit38ClassRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/JUnit38ClassRunner$1;,
        Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;
    }
.end annotation


# instance fields
.field private fTest:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 78
    return-void
.end method

.method private static createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;
    .locals 7
    .param p0, "ts"    # Ljunit/framework/TestSuite;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->countTestCases()I

    move-result v0

    .line 124
    .local v0, "count":I
    if-nez v0, :cond_0

    const-string v1, ""

    .line 125
    .local v1, "example":Ljava/lang/String;
    :goto_0
    const-string v2, "TestSuite with %s tests%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    .end local v1    # "example":Ljava/lang/String;
    :cond_0
    const-string v2, " [example: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTest()Ljunit/framework/Test;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->fTest:Ljunit/framework/Test;

    return-object v0
.end method

.method private static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .locals 11
    .param p0, "test"    # Ljunit/framework/Test;

    .prologue
    .line 97
    instance-of v9, p0, Ljunit/framework/TestCase;

    if-eqz v9, :cond_1

    move-object v7, p0

    .line 98
    check-cast v7, Ljunit/framework/TestCase;

    .line 99
    .local v7, "tc":Ljunit/framework/TestCase;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v2

    .line 118
    .end local v7    # "tc":Ljunit/framework/TestCase;
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    instance-of v9, p0, Ljunit/framework/TestSuite;

    if-eqz v9, :cond_3

    move-object v8, p0

    .line 101
    check-cast v8, Ljunit/framework/TestSuite;

    .line 102
    .local v8, "ts":Ljunit/framework/TestSuite;
    invoke-virtual {v8}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-static {v8}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "name":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/annotation/Annotation;

    invoke-static {v6, v9}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v2

    .line 104
    .local v2, "description":Lorg/junit/runner/Description;
    invoke-virtual {v8}, Ljunit/framework/TestSuite;->testCount()I

    move-result v5

    .line 105
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 106
    invoke-virtual {v8, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v9

    invoke-static {v9}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v4

    .line 107
    .local v4, "made":Lorg/junit/runner/Description;
    invoke-virtual {v2, v4}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    .end local v2    # "description":Lorg/junit/runner/Description;
    .end local v3    # "i":I
    .end local v4    # "made":Lorg/junit/runner/Description;
    .end local v5    # "n":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 110
    .end local v8    # "ts":Ljunit/framework/TestSuite;
    :cond_3
    instance-of v9, p0, Lorg/junit/runner/Describable;

    if-eqz v9, :cond_4

    move-object v0, p0

    .line 111
    check-cast v0, Lorg/junit/runner/Describable;

    .line 112
    .local v0, "adapter":Lorg/junit/runner/Describable;
    invoke-interface {v0}, Lorg/junit/runner/Describable;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v0    # "adapter":Lorg/junit/runner/Describable;
    :cond_4
    instance-of v9, p0, Ljunit/extensions/TestDecorator;

    if-eqz v9, :cond_5

    move-object v1, p0

    .line 114
    check-cast v1, Ljunit/extensions/TestDecorator;

    .line 115
    .local v1, "decorator":Ljunit/extensions/TestDecorator;
    invoke-virtual {v1}, Ljunit/extensions/TestDecorator;->getTest()Ljunit/framework/Test;

    move-result-object v9

    invoke-static {v9}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v2

    goto :goto_0

    .line 118
    .end local v1    # "decorator":Ljunit/extensions/TestDecorator;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v2

    goto :goto_0
.end method

.method private setTest(Ljunit/framework/Test;)V
    .locals 0
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/junit/internal/runners/JUnit38ClassRunner;->fTest:Ljunit/framework/Test;

    .line 155
    return-void
.end method


# virtual methods
.method public createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 88
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner$OldTestClassAdaptingListener;-><init>(Lorg/junit/internal/runners/JUnit38ClassRunner;Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/JUnit38ClassRunner$1;)V

    return-object v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 7
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v6

    instance-of v6, v6, Lorg/junit/runner/manipulation/Filterable;

    if-eqz v6, :cond_1

    .line 130
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    .line 131
    .local v0, "adapter":Lorg/junit/runner/manipulation/Filterable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 144
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Filterable;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v6

    instance-of v6, v6, Ljunit/framework/TestSuite;

    if-eqz v6, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v4

    check-cast v4, Ljunit/framework/TestSuite;

    .line 134
    .local v4, "suite":Ljunit/framework/TestSuite;
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v4}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "filtered":Ljunit/framework/TestSuite;
    invoke-virtual {v4}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    .line 136
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 137
    invoke-virtual {v4, v2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v5

    .line 138
    .local v5, "test":Ljunit/framework/Test;
    invoke-static {v5}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {v1, v5}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v5    # "test":Ljunit/framework/Test;
    :cond_3
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    goto :goto_0
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 82
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    .line 83
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;->createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 84
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v1, v0}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 85
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 2
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v1

    instance-of v1, v1, Lorg/junit/runner/manipulation/Sortable;

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/junit/internal/runners/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    .line 149
    .local v0, "adapter":Lorg/junit/runner/manipulation/Sortable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 151
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Sortable;
    :cond_0
    return-void
.end method
