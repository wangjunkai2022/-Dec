.class public Lorg/junit/experimental/theories/internal/Assignments;
.super Ljava/lang/Object;
.source "Assignments.java"


# instance fields
.field private fAssigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final fClass:Lorg/junit/runners/model/TestClass;

.field private final fUnassigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V
    .locals 0
    .param p3, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;",
            "Lorg/junit/runners/model/TestClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "assigned":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    .local p2, "unassigned":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lorg/junit/experimental/theories/internal/Assignments;->fUnassigned:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lorg/junit/experimental/theories/internal/Assignments;->fClass:Lorg/junit/runners/model/TestClass;

    .line 30
    return-void
.end method

.method public static allUnassigned(Ljava/lang/reflect/Method;Lorg/junit/runners/model/TestClass;)Lorg/junit/experimental/theories/internal/Assignments;
    .locals 3
    .param p0, "testMethod"    # Ljava/lang/reflect/Method;
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-static {p0}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Method;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v1, Lorg/junit/experimental/theories/internal/Assignments;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v0, p1}, Lorg/junit/experimental/theories/internal/Assignments;-><init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V

    return-object v1
.end method

.method private getConstructorParameterCount()I
    .locals 3

    .prologue
    .line 119
    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->fClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v2}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/experimental/theories/ParameterSignature;->signatures(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "signatures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/ParameterSignature;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    .local v0, "constructorParameterCount":I
    return v0
.end method


# virtual methods
.method public assignNext(Lorg/junit/experimental/theories/PotentialAssignment;)Lorg/junit/experimental/theories/internal/Assignments;
    .locals 5
    .param p1, "source"    # Lorg/junit/experimental/theories/PotentialAssignment;

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v0, "assigned":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lorg/junit/experimental/theories/internal/Assignments;

    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->fUnassigned:Ljava/util/List;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/junit/experimental/theories/internal/Assignments;->fUnassigned:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/junit/experimental/theories/internal/Assignments;->fClass:Lorg/junit/runners/model/TestClass;

    invoke-direct {v1, v0, v2, v3}, Lorg/junit/experimental/theories/internal/Assignments;-><init>(Ljava/util/List;Ljava/util/List;Lorg/junit/runners/model/TestClass;)V

    return-object v1
.end method

.method public getActualValues(IIZ)[Ljava/lang/Object;
    .locals 4
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .prologue
    .line 65
    sub-int v3, p2, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 66
    .local v2, "values":[Ljava/lang/Object;
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 67
    iget-object v3, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v3}, Lorg/junit/experimental/theories/PotentialAssignment;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 69
    new-instance v3, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;

    invoke-direct {v3}, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;-><init>()V

    throw v3

    .line 71
    :cond_0
    sub-int v3, v0, p1

    aput-object v1, v2, v3

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public getAllArguments(Z)[Ljava/lang/Object;
    .locals 2
    .param p1, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotatedSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;
    .locals 2
    .param p1, "unassigned"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 94
    const-class v1, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->findDeepAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/theories/ParametersSuppliedBy;

    .line 96
    .local v0, "annotation":Lorg/junit/experimental/theories/ParametersSuppliedBy;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/theories/ParametersSuppliedBy;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/ParameterSupplier;

    goto :goto_0
.end method

.method public getArgumentStrings(Z)[Ljava/lang/Object;
    .locals 3
    .param p1, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 128
    .local v1, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v2}, Lorg/junit/experimental/theories/PotentialAssignment;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-object v1
.end method

.method public getConstructorArguments(Z)[Ljava/lang/Object;
    .locals 2
    .param p1, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/junit/experimental/theories/internal/Assignments;->getConstructorParameterCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethodArguments(Z)[Ljava/lang/Object;
    .locals 2
    .param p1, "nullsOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/junit/experimental/theories/internal/Assignments;->getConstructorParameterCount()I

    move-result v0

    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->fAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/experimental/theories/internal/Assignments;->getActualValues(IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;
    .locals 2
    .param p1, "unassigned"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/internal/Assignments;->getAnnotatedSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;

    move-result-object v0

    .line 85
    .local v0, "supplier":Lorg/junit/experimental/theories/ParameterSupplier;
    if-eqz v0, :cond_0

    .line 89
    .end local v0    # "supplier":Lorg/junit/experimental/theories/ParameterSupplier;
    :goto_0
    return-object v0

    .restart local v0    # "supplier":Lorg/junit/experimental/theories/ParameterSupplier;
    :cond_0
    new-instance v0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;

    .end local v0    # "supplier":Lorg/junit/experimental/theories/ParameterSupplier;
    iget-object v1, p0, Lorg/junit/experimental/theories/internal/Assignments;->fClass:Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, v1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;-><init>(Lorg/junit/runners/model/TestClass;)V

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->fUnassigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextUnassigned()Lorg/junit/experimental/theories/ParameterSignature;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/Assignments;->fUnassigned:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/theories/ParameterSignature;

    return-object v0
.end method

.method public potentialsForNextUnassigned()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/junit/experimental/theories/internal/Assignments;->nextUnassigned()Lorg/junit/experimental/theories/ParameterSignature;

    move-result-object v0

    .line 79
    .local v0, "unassigned":Lorg/junit/experimental/theories/ParameterSignature;
    invoke-virtual {p0, v0}, Lorg/junit/experimental/theories/internal/Assignments;->getSupplier(Lorg/junit/experimental/theories/ParameterSignature;)Lorg/junit/experimental/theories/ParameterSupplier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/junit/experimental/theories/ParameterSupplier;->getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
