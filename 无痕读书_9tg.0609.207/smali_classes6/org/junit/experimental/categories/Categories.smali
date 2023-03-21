.class public Lorg/junit/experimental/categories/Categories;
.super Lorg/junit/runners/Suite;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/Categories$CategoryFilter;,
        Lorg/junit/experimental/categories/Categories$ExcludeCategory;,
        Lorg/junit/experimental/categories/Categories$IncludeCategory;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 4
    .param p2, "builder"    # Lorg/junit/runners/model/RunnerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Lorg/junit/runners/model/RunnerBuilder;)V

    .line 159
    :try_start_0
    new-instance v1, Lorg/junit/experimental/categories/Categories$CategoryFilter;

    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories;->getIncludedCategory(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories;->getExcludedCategory(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/junit/experimental/categories/Categories$CategoryFilter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lorg/junit/experimental/categories/Categories;->filter(Lorg/junit/runner/manipulation/Filter;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {p0}, Lorg/junit/experimental/categories/Categories;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lorg/junit/experimental/categories/Categories;->canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    .line 181
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 182
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-direct {p0, v0}, Lorg/junit/experimental/categories/Categories;->assertNoCategorizedDescendentsOfUncategorizeableParents(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 184
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_1
    return-void
.end method

.method private assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V
    .locals 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 188
    .local v0, "each":Lorg/junit/runner/Description;
    const-class v2, Lorg/junit/experimental/categories/Category;

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Lorg/junit/runners/model/InitializationError;

    const-string v3, "Category annotations on Parameterized classes are not supported on individual methods."

    invoke-direct {v2, v3}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    invoke-direct {p0, v0}, Lorg/junit/experimental/categories/Categories;->assertNoDescendantsHaveCategoryAnnotations(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 193
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_1
    return-void
.end method

.method private static canHaveCategorizedChildren(Lorg/junit/runner/Description;)Z
    .locals 3
    .param p0, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 199
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-virtual {v0}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    .line 200
    const/4 v2, 0x0

    .line 203
    .end local v0    # "each":Lorg/junit/runner/Description;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getExcludedCategory(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$ExcludeCategory;

    .line 174
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$ExcludeCategory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$ExcludeCategory;->value()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private getIncludedCategory(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Categories$IncludeCategory;

    .line 169
    .local v0, "annotation":Lorg/junit/experimental/categories/Categories$IncludeCategory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/junit/experimental/categories/Categories$IncludeCategory;->value()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
