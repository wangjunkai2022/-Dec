.class public Lorg/junit/runner/JUnitCore;
.super Ljava/lang/Object;
.source "JUnitCore.java"


# instance fields
.field private final fNotifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {v0}, Lorg/junit/runner/notification/RunNotifier;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    return-void
.end method

.method static defaultComputer()Lorg/junit/runner/Computer;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lorg/junit/runner/Computer;

    invoke-direct {v0}, Lorg/junit/runner/Computer;-><init>()V

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lorg/junit/internal/RealSystem;

    invoke-direct {v0}, Lorg/junit/internal/RealSystem;-><init>()V

    invoke-static {v0, p0}, Lorg/junit/runner/JUnitCore;->runMainAndExit(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static varargs runClasses(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .param p0, "computer"    # Lorg/junit/runner/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Computer;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runClasses([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method private varargs runMain(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)Lorg/junit/runner/Result;
    .locals 14
    .param p1, "system"    # Lorg/junit/internal/JUnitSystem;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 81
    invoke-interface {p1}, Lorg/junit/internal/JUnitSystem;->out()Ljava/io/PrintStream;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "JUnit version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v9, "missingClasses":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 86
    .local v4, "each":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-interface {p1}, Lorg/junit/internal/JUnitSystem;->out()Ljava/io/PrintStream;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/annotation/Annotation;

    invoke-static {v4, v11}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v2

    .line 90
    .local v2, "description":Lorg/junit/runner/Description;
    new-instance v5, Lorg/junit/runner/notification/Failure;

    invoke-direct {v5, v2, v3}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 91
    .local v5, "failure":Lorg/junit/runner/notification/Failure;
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v2    # "description":Lorg/junit/runner/Description;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "each":Ljava/lang/String;
    .end local v5    # "failure":Lorg/junit/runner/notification/Failure;
    :cond_0
    new-instance v8, Lorg/junit/internal/TextListener;

    invoke-direct {v8, p1}, Lorg/junit/internal/TextListener;-><init>(Lorg/junit/internal/JUnitSystem;)V

    .line 95
    .local v8, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p0, v8}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 96
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-interface {v1, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Class;

    invoke-virtual {p0, v11}, Lorg/junit/runner/JUnitCore;->run([Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v10

    .line 97
    .local v10, "result":Lorg/junit/runner/Result;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runner/notification/Failure;

    .line 98
    .local v4, "each":Lorg/junit/runner/notification/Failure;
    invoke-virtual {v10}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    .end local v4    # "each":Lorg/junit/runner/notification/Failure;
    :cond_1
    return-object v10
.end method

.method private static varargs runMainAndExit(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)V
    .locals 2
    .param p0, "system"    # Lorg/junit/internal/JUnitSystem;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lorg/junit/runner/JUnitCore;

    invoke-direct {v1}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-direct {v1, p0, p1}, Lorg/junit/runner/JUnitCore;->runMain(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)Lorg/junit/runner/Result;

    move-result-object v0

    .line 48
    .local v0, "result":Lorg/junit/runner/Result;
    invoke-virtual {v0}, Lorg/junit/runner/Result;->wasSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v0, p1}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 176
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v0, p1}, Lorg/junit/runner/notification/RunNotifier;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    .line 185
    return-void
.end method

.method public run(Ljunit/framework/Test;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 148
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner;

    invoke-direct {v0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "computer"    # Lorg/junit/runner/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Computer;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "request"    # Lorg/junit/runner/Request;

    .prologue
    .line 138
    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;
    .locals 4
    .param p1, "runner"    # Lorg/junit/runner/Runner;

    .prologue
    .line 155
    new-instance v1, Lorg/junit/runner/Result;

    invoke-direct {v1}, Lorg/junit/runner/Result;-><init>()V

    .line 156
    .local v1, "result":Lorg/junit/runner/Result;
    invoke-virtual {v1}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v0

    .line 157
    .local v0, "listener":Lorg/junit/runner/notification/RunListener;
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v2, v0}, Lorg/junit/runner/notification/RunNotifier;->addFirstListener(Lorg/junit/runner/notification/RunListener;)V

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/junit/runner/notification/RunNotifier;->fireTestRunStarted(Lorg/junit/runner/Description;)V

    .line 160
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {p1, v2}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 161
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v2, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestRunFinished(Lorg/junit/runner/Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    .line 165
    return-object v1

    .line 163
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    throw v2
.end method

.method public varargs run([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method
