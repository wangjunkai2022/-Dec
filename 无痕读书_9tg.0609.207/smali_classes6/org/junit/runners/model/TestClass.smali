.class public Lorg/junit/runners/model/TestClass;
.super Ljava/lang/Object;
.source "TestClass.java"


# instance fields
.field private final fClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fFieldsForAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;>;"
        }
    .end annotation
.end field

.field private fMethodsForAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/junit/runners/model/TestClass;->fMethodsForAnnotations:Ljava/util/Map;

    .line 29
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/junit/runners/model/TestClass;->fFieldsForAnnotations:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 40
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Test class can only have one constructor"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_0
    iget-object v7, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-direct {p0, v7}, Lorg/junit/runners/model/TestClass;->getSuperClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 45
    .local v1, "eachClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/junit/internal/MethodSorter;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 46
    .local v3, "eachMethod":Ljava/lang/reflect/Method;
    new-instance v7, Lorg/junit/runners/model/FrameworkMethod;

    invoke-direct {v7, v3}, Lorg/junit/runners/model/FrameworkMethod;-><init>(Ljava/lang/reflect/Method;)V

    iget-object v8, p0, Lorg/junit/runners/model/TestClass;->fMethodsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v7, v8}, Lorg/junit/runners/model/TestClass;->addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "eachMethod":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 50
    .local v2, "eachField":Ljava/lang/reflect/Field;
    new-instance v7, Lorg/junit/runners/model/FrameworkField;

    invoke-direct {v7, v2}, Lorg/junit/runners/model/FrameworkField;-><init>(Ljava/lang/reflect/Field;)V

    iget-object v8, p0, Lorg/junit/runners/model/TestClass;->fFieldsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v7, v8}, Lorg/junit/runners/model/TestClass;->addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "eachClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "eachField":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    return-void
.end method

.method private addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/junit/runners/model/FrameworkMember",
            "<TT;>;>(TT;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 59
    .local v1, "each":Ljava/lang/annotation/Annotation;
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 60
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p2, v5}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 61
    .local v4, "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p1, v4}, Lorg/junit/runners/model/FrameworkMember;->isShadowedBy(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    .end local v1    # "each":Ljava/lang/annotation/Annotation;
    .end local v4    # "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    return-void

    .line 64
    .restart local v1    # "each":Ljava/lang/annotation/Annotation;
    .restart local v4    # "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    invoke-direct {p0, v5}, Lorg/junit/runners/model/TestClass;->runsTopToBottom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    const/4 v6, 0x0

    invoke-interface {v4, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<TT;>;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getSuperClasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 106
    .local v0, "current":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method private runsTopToBottom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Lorg/junit/Before;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/junit/BeforeClass;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkField;

    .line 156
    .local v1, "each":Lorg/junit/runners/model/FrameworkField;
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/junit/runners/model/FrameworkField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-virtual {p3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "How did getFields return a field we couldn\'t access?"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkField;
    :cond_1
    return-object v4
.end method

.method public getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fFieldsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 173
    .local v1, "each":Lorg/junit/runners/model/FrameworkMethod;
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {p3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :cond_1
    return-object v4
.end method

.method public getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fMethodsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "null"

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnlyConstructor()Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 137
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const-wide/16 v2, 0x1

    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/junit/Assert;->assertEquals(JJ)V

    .line 138
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public isANonStaticInnerClass()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
