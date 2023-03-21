.class public Lorg/junit/runners/Parameterized;
.super Lorg/junit/runners/Suite;
.source "Parameterized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;,
        Lorg/junit/runners/Parameterized$Parameter;,
        Lorg/junit/runners/Parameterized$Parameters;
    }
.end annotation


# static fields
.field private static final NO_RUNNERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final runners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/junit/runners/Parameterized;->NO_RUNNERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/junit/runners/Parameterized;->NO_RUNNERS:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/junit/runners/Parameterized;->runners:Ljava/util/ArrayList;

    .line 280
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->getParametersMethod()Lorg/junit/runners/model/FrameworkMethod;

    move-result-object v1

    const-class v2, Lorg/junit/runners/Parameterized$Parameters;

    invoke-virtual {v1, v2}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/Parameterized$Parameters;

    .line 282
    .local v0, "parameters":Lorg/junit/runners/Parameterized$Parameters;
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->allParameters()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v0}, Lorg/junit/runners/Parameterized$Parameters;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/junit/runners/Parameterized;->createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runners/Parameterized;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/Parameterized;

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->fieldsAreAnnotated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/junit/runners/Parameterized;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runners/Parameterized;

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->getAnnotatedFieldsByParameter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private allParameters()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->getParametersMethod()Lorg/junit/runners/model/FrameworkMethod;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "parameters":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Ljava/lang/Iterable;

    .end local v0    # "parameters":Ljava/lang/Object;
    return-object v0

    .line 296
    .restart local v0    # "parameters":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->parametersMethodReturnedWrongType()Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method private createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 7
    .param p2, "namePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "allParameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 317
    .local v1, "i":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 318
    .local v4, "parametersOfSingleTest":[Ljava/lang/Object;
    invoke-direct {p0, p2, v1, v4}, Lorg/junit/runners/Parameterized;->nameFor(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;

    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v6

    invoke-virtual {v6}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4, v3}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;-><init>(Lorg/junit/runners/Parameterized;Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .local v5, "runner":Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;
    iget-object v6, p0, Lorg/junit/runners/Parameterized;->runners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    goto :goto_0

    .line 325
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parametersOfSingleTest":[Ljava/lang/Object;
    .end local v5    # "runner":Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->parametersMethodReturnedWrongType()Ljava/lang/Exception;

    move-result-object v6

    throw v6

    .line 328
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private fieldsAreAnnotated()Z
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->getAnnotatedFieldsByParameter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAnnotatedFieldsByParameter()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getParametersMethod()Lorg/junit/runners/model/FrameworkMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v3

    const-class v4, Lorg/junit/runners/Parameterized$Parameters;

    invoke-virtual {v3, v4}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 303
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    .line 304
    .local v0, "each":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    return-object v0

    .line 309
    .end local v0    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No public static parameters method on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v5

    invoke-virtual {v5}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private nameFor(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "namePattern"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 331
    const-string v2, "\\{index\\}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "finalPattern":Ljava/lang/String;
    invoke-static {v0, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parametersMethodReturnedWrongType()Ljava/lang/Exception;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v3

    invoke-virtual {v3}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0}, Lorg/junit/runners/Parameterized;->getParametersMethod()Lorg/junit/runners/model/FrameworkMethod;

    move-result-object v3

    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, "{0}.{1}() must return an Iterable of arrays."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method protected getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lorg/junit/runners/Parameterized;->runners:Ljava/util/ArrayList;

    return-object v0
.end method
