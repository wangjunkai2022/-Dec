.class public abstract Lorg/junit/internal/ComparisonCriteria;
.super Ljava/lang/Object;
.source "ComparisonCriteria.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private assertArraysAreSameLength(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p1, "expecteds"    # Ljava/lang/Object;
    .param p2, "actuals"    # Ljava/lang/Object;
    .param p3, "header"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expected array was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "actual array was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 68
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "actualsLength":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 70
    .local v1, "expectedsLength":I
    if-eq v0, v1, :cond_2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "array lengths differed, expected.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 74
    :cond_2
    return v1
.end method

.method private isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expected"    # Ljava/lang/Object;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expecteds"    # Ljava/lang/Object;
    .param p3, "actuals"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .prologue
    .line 27
    if-ne p2, p3, :cond_1

    .line 54
    :cond_0
    return-void

    .line 30
    :cond_1
    if-nez p1, :cond_2

    const-string v4, ""

    .line 32
    .local v4, "header":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2, p3, v4}, Lorg/junit/internal/ComparisonCriteria;->assertArraysAreSameLength(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 35
    .local v3, "expectedsLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 36
    invoke-static {p2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, "expected":Ljava/lang/Object;
    invoke-static {p3, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "actual":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/junit/internal/ComparisonCriteria;->isArray(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v0}, Lorg/junit/internal/ComparisonCriteria;->isArray(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, v2, v0}, Lorg/junit/internal/ComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/internal/ArrayComparisonFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "actual":Ljava/lang/Object;
    .end local v2    # "expected":Ljava/lang/Object;
    .end local v3    # "expectedsLength":I
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 42
    .restart local v0    # "actual":Ljava/lang/Object;
    .restart local v2    # "expected":Ljava/lang/Object;
    .restart local v3    # "expectedsLength":I
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "i":I
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Lorg/junit/internal/ArrayComparisonFailure;
    invoke-virtual {v1, v5}, Lorg/junit/internal/ArrayComparisonFailure;->addDimension(I)V

    .line 44
    throw v1

    .line 48
    .end local v1    # "e":Lorg/junit/internal/ArrayComparisonFailure;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v2, v0}, Lorg/junit/internal/ComparisonCriteria;->assertElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 49
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/AssertionError;
    new-instance v6, Lorg/junit/internal/ArrayComparisonFailure;

    invoke-direct {v6, v4, v1, v5}, Lorg/junit/internal/ArrayComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/AssertionError;I)V

    throw v6
.end method

.method protected abstract assertElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
