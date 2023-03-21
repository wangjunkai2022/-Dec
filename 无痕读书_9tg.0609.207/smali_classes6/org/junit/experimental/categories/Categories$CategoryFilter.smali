.class public Lorg/junit/experimental/categories/Categories$CategoryFilter;
.super Lorg/junit/runner/manipulation/Filter;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/categories/Categories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryFilter"
.end annotation


# instance fields
.field private final fExcluded:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fIncluded:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "includedCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "excludedCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fIncluded:Ljava/lang/Class;

    .line 89
    iput-object p2, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fExcluded:Ljava/lang/Class;

    .line 90
    return-void
.end method

.method private categories(Lorg/junit/runner/Description;)Ljava/util/List;
    .locals 2
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->parentDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object v0
.end method

.method private directCategories(Lorg/junit/runner/Description;)[Ljava/lang/Class;
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-array v1, v2, [Ljava/lang/Class;

    .line 151
    :goto_0
    return-object v1

    .line 147
    :cond_0
    const-class v1, Lorg/junit/experimental/categories/Category;

    invoke-virtual {p1, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/experimental/categories/Category;

    .line 148
    .local v0, "annotation":Lorg/junit/experimental/categories/Category;
    if-nez v0, :cond_1

    .line 149
    new-array v1, v2, [Ljava/lang/Class;

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v0}, Lorg/junit/experimental/categories/Category;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private hasCorrectCategoryAnnotation(Lorg/junit/runner/Description;)Z
    .locals 6
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->categories(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    iget-object v5, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fIncluded:Ljava/lang/Class;

    if-nez v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 116
    .local v1, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fExcluded:Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fExcluded:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 117
    goto :goto_0

    .line 120
    .end local v1    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 121
    .restart local v1    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fIncluded:Ljava/lang/Class;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fIncluded:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .end local v1    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move v3, v4

    .line 125
    goto :goto_0
.end method

.method public static include(Ljava/lang/Class;)Lorg/junit/experimental/categories/Categories$CategoryFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/junit/experimental/categories/Categories$CategoryFilter;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "categoryType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/experimental/categories/Categories$CategoryFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method private parentDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .locals 2
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/experimental/categories/Categories$CategoryFilter;->fIncluded:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .locals 4
    .param p1, "description"    # Lorg/junit/runner/Description;

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-direct {p0, p1}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->hasCorrectCategoryAnnotation(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    :goto_0
    return v2

    .line 102
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    .line 103
    .local v0, "each":Lorg/junit/runner/Description;
    invoke-virtual {p0, v0}, Lorg/junit/experimental/categories/Categories$CategoryFilter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 107
    .end local v0    # "each":Lorg/junit/runner/Description;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
