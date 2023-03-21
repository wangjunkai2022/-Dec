.class public Lorg/junit/experimental/theories/Theories$TheoryAnchor;
.super Lorg/junit/runners/model/Statement;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/theories/Theories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TheoryAnchor"
.end annotation


# instance fields
.field private fInvalidParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/internal/AssumptionViolatedException;",
            ">;"
        }
    .end annotation
.end field

.field private fTestClass:Lorg/junit/runners/model/TestClass;

.field private fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

.field private successes:I


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/TestClass;)V
    .locals 1
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "testClass"    # Lorg/junit/runners/model/TestClass;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->successes:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fInvalidParameters:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 87
    iput-object p2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestClass:Lorg/junit/runners/model/TestClass;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->nullsOk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/Assignments;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p0, "x0"    # Lorg/junit/experimental/theories/Theories$TheoryAnchor;
    .param p1, "x1"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "x2"    # Lorg/junit/experimental/theories/internal/Assignments;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->methodCompletesWithParameters(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/Assignments;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method private getTestClass()Lorg/junit/runners/model/TestClass;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method private methodCompletesWithParameters(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/Assignments;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "complete"    # Lorg/junit/experimental/theories/internal/Assignments;
    .param p3, "freshInstance"    # Ljava/lang/Object;

    .prologue
    .line 169
    new-instance v0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;-><init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Lorg/junit/experimental/theories/internal/Assignments;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)V

    return-object v0
.end method

.method private nullsOk()Z
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Lorg/junit/experimental/theories/Theory;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/theories/Theory;

    .line 199
    .local v0, "annotation":Lorg/junit/experimental/theories/Theory;
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/theories/Theory;->nullsAccepted()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/experimental/theories/internal/Assignments;->allUnassigned(Ljava/lang/reflect/Method;Lorg/junit/runners/model/TestClass;)Lorg/junit/experimental/theories/internal/Assignments;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->runWithAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V

    .line 99
    iget v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->successes:I

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Never found parameters that satisfied method assumptions.  Violated assumptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fInvalidParameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected handleAssumptionViolation(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 1
    .param p1, "e"    # Lorg/junit/internal/AssumptionViolatedException;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fInvalidParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method protected handleDataPointSuccess()V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->successes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->successes:I

    .line 207
    return-void
.end method

.method protected varargs reportParameterizedError(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    array-length v0, p2

    if-nez v0, :cond_0

    .line 190
    throw p1

    .line 192
    :cond_0
    new-instance v0, Lorg/junit/experimental/theories/internal/ParameterizedAssertionError;

    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/junit/experimental/theories/internal/ParameterizedAssertionError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected runWithAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V
    .locals 1
    .param p1, "parameterAssignment"    # Lorg/junit/experimental/theories/internal/Assignments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/junit/experimental/theories/internal/Assignments;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->runWithIncompleteAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->runWithCompleteAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V

    goto :goto_0
.end method

.method protected runWithCompleteAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V
    .locals 2
    .param p1, "complete"    # Lorg/junit/experimental/theories/internal/Assignments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    invoke-direct {p0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;-><init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Ljava/lang/Class;Lorg/junit/experimental/theories/internal/Assignments;)V

    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->fTestMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 165
    return-void
.end method

.method protected runWithIncompleteAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V
    .locals 3
    .param p1, "incomplete"    # Lorg/junit/experimental/theories/internal/Assignments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lorg/junit/experimental/theories/internal/Assignments;->potentialsForNextUnassigned()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/PotentialAssignment;

    .line 120
    .local v1, "source":Lorg/junit/experimental/theories/PotentialAssignment;
    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/internal/Assignments;->assignNext(Lorg/junit/experimental/theories/PotentialAssignment;)Lorg/junit/experimental/theories/internal/Assignments;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->runWithAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V

    goto :goto_0

    .line 122
    .end local v1    # "source":Lorg/junit/experimental/theories/PotentialAssignment;
    :cond_0
    return-void
.end method
