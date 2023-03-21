.class Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "Parameterized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/Parameterized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestClassRunnerForParameters"
.end annotation


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fParameters:[Ljava/lang/Object;

.field final synthetic this$0:Lorg/junit/runners/Parameterized;


# direct methods
.method constructor <init>(Lorg/junit/runners/Parameterized;Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p3, "parameters"    # [Ljava/lang/Object;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    .line 171
    invoke-direct {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Ljava/lang/Class;)V

    .line 172
    iput-object p3, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    .line 173
    iput-object p4, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private createTestUsingConstructorInjection()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createTestUsingFieldInjection()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v8, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    invoke-static {v8}, Lorg/junit/runners/Parameterized;->access$100(Lorg/junit/runners/Parameterized;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    array-length v9, v9

    if-eq v8, v9, :cond_0

    .line 192
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong number of parameters and @Parameter fields. @Parameter fields counted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", available parameters: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v8

    invoke-virtual {v8}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 196
    .local v7, "testClassInstance":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkField;

    .line 197
    .local v2, "each":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 198
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v8, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/Parameterized$Parameter;

    .line 199
    .local v1, "annotation":Lorg/junit/runners/Parameterized$Parameter;
    invoke-interface {v1}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    move-result v6

    .line 201
    .local v6, "index":I
    :try_start_0
    iget-object v8, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    aget-object v8, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    .line 203
    .local v5, "iare":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v10

    invoke-virtual {v10}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": Trying to set "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with the value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " that is not the right type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fParameters:[Ljava/lang/Object;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " instead of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 209
    .end local v1    # "annotation":Lorg/junit/runners/Parameterized$Parameter;
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "iare":Ljava/lang/IllegalArgumentException;
    .end local v6    # "index":I
    :cond_1
    return-object v7
.end method


# virtual methods
.method protected classBlock(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->childrenInvoker(Lorg/junit/runner/notification/RunNotifier;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createTest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    invoke-static {v0}, Lorg/junit/runners/Parameterized;->access$000(Lorg/junit/runners/Parameterized;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->createTestUsingFieldInjection()Ljava/lang/Object;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->createTestUsingConstructorInjection()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->fName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRunnerAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method protected testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateConstructor(Ljava/util/List;)V
    .locals 1
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
    .line 224
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    invoke-static {v0}, Lorg/junit/runners/Parameterized;->access$000(Lorg/junit/runners/Parameterized;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->validateZeroArgConstructor(Ljava/util/List;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected validateFields(Ljava/util/List;)V
    .locals 9
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
    .line 232
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateFields(Ljava/util/List;)V

    .line 233
    iget-object v6, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    invoke-static {v6}, Lorg/junit/runners/Parameterized;->access$000(Lorg/junit/runners/Parameterized;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    iget-object v6, p0, Lorg/junit/runners/Parameterized$TestClassRunnerForParameters;->this$0:Lorg/junit/runners/Parameterized;

    invoke-static {v6}, Lorg/junit/runners/Parameterized;->access$100(Lorg/junit/runners/Parameterized;)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 236
    .local v5, "usedIndices":[I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkField;

    .line 237
    .local v1, "each":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v7, Lorg/junit/runners/Parameterized$Parameter;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/junit/runners/Parameterized$Parameter;

    invoke-interface {v6}, Lorg/junit/runners/Parameterized$Parameter;->value()I

    move-result v3

    .line 238
    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v3, v6, :cond_1

    .line 239
    :cond_0
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid @Parameter value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". @Parameter fields counted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Please use an index between 0 and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    aget v6, v5, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v3

    goto :goto_0

    .line 248
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v3    # "index":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 249
    aget v4, v5, v3

    .line 250
    .local v4, "numberOfUse":I
    if-nez v4, :cond_4

    .line 251
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@Parameter("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is never used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    :cond_4
    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 253
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@Parameter("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is used more than once ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    .end local v0    # "annotatedFieldsByParameter":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "numberOfUse":I
    .end local v5    # "usedIndices":[I
    :cond_5
    return-void
.end method
