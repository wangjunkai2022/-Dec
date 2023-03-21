.class public final enum Lorg/junit/internal/runners/rules/RuleFieldValidator;
.super Ljava/lang/Enum;
.source "RuleFieldValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/junit/internal/runners/rules/RuleFieldValidator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/junit/internal/runners/rules/RuleFieldValidator;

.field public static final enum CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

.field public static final enum CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

.field public static final enum RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

.field public static final enum RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;


# instance fields
.field private final fAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final fMethods:Z

.field private final fStaticMembers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    const-string v1, "CLASS_RULE_VALIDATOR"

    const-class v3, Lorg/junit/ClassRule;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/junit/internal/runners/rules/RuleFieldValidator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    .line 34
    new-instance v3, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    const-string v4, "RULE_VALIDATOR"

    const-class v6, Lorg/junit/Rule;

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lorg/junit/internal/runners/rules/RuleFieldValidator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v3, Lorg/junit/internal/runners/rules/RuleFieldValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    .line 38
    new-instance v6, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    const-string v7, "CLASS_RULE_METHOD_VALIDATOR"

    const-class v9, Lorg/junit/ClassRule;

    move v8, v12

    move v10, v5

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/junit/internal/runners/rules/RuleFieldValidator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v6, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    .line 42
    new-instance v6, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    const-string v7, "RULE_METHOD_VALIDATOR"

    const-class v9, Lorg/junit/Rule;

    move v8, v13

    move v10, v5

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/junit/internal/runners/rules/RuleFieldValidator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v6, Lorg/junit/internal/runners/rules/RuleFieldValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/junit/internal/runners/rules/RuleFieldValidator;

    sget-object v1, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    aput-object v1, v0, v2

    sget-object v1, Lorg/junit/internal/runners/rules/RuleFieldValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    aput-object v1, v0, v5

    sget-object v1, Lorg/junit/internal/runners/rules/RuleFieldValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    aput-object v1, v0, v12

    sget-object v1, Lorg/junit/internal/runners/rules/RuleFieldValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleFieldValidator;

    aput-object v1, v0, v13

    sput-object v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->$VALUES:[Lorg/junit/internal/runners/rules/RuleFieldValidator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V
    .locals 0
    .param p4, "methods"    # Z
    .param p5, "fStaticMembers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fAnnotation:Ljava/lang/Class;

    .line 52
    iput-boolean p5, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fStaticMembers:Z

    .line 53
    iput-boolean p4, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fMethods:Z

    .line 54
    return-void
.end method

.method private addError(Ljava/util/List;Lorg/junit/runners/model/FrameworkMember;Ljava/lang/String;)V
    .locals 3
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local p2, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fAnnotation:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/junit/runners/model/FrameworkMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method private isMethodRule(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/rules/MethodRule;

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isTestRule(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/rules/TestRule;

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private validateMember(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validateStatic(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validatePublic(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validateTestRuleOrMethodRule(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method private validatePublic(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "must be public."

    invoke-direct {p0, p2, p1, v0}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->addError(Ljava/util/List;Lorg/junit/runners/model/FrameworkMember;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method private validateStatic(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fStaticMembers:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "must be static."

    invoke-direct {p0, p2, p1, v0}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->addError(Ljava/util/List;Lorg/junit/runners/model/FrameworkMember;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fStaticMembers:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "must not be static."

    invoke-direct {p0, p2, p1, v0}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->addError(Ljava/util/List;Lorg/junit/runners/model/FrameworkMember;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method

.method private validateTestRuleOrMethodRule(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->isMethodRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->isTestRule(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fMethods:Z

    if-eqz v0, :cond_1

    const-string v0, "must return an implementation of MethodRule or TestRule."

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->addError(Ljava/util/List;Lorg/junit/runners/model/FrameworkMember;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    const-string v0, "must implement MethodRule or TestRule."

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/junit/internal/runners/rules/RuleFieldValidator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;

    return-object v0
.end method

.method public static values()[Lorg/junit/internal/runners/rules/RuleFieldValidator;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->$VALUES:[Lorg/junit/internal/runners/rules/RuleFieldValidator;

    invoke-virtual {v0}, [Lorg/junit/internal/runners/rules/RuleFieldValidator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/junit/internal/runners/rules/RuleFieldValidator;

    return-object v0
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V
    .locals 4
    .param p1, "target"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-boolean v3, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fMethods:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fAnnotation:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "members":Ljava/util/List;, "Ljava/util/List<+Lorg/junit/runners/model/FrameworkMember<*>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMember;

    .line 68
    .local v0, "each":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    invoke-direct {p0, v0, p2}, Lorg/junit/internal/runners/rules/RuleFieldValidator;->validateMember(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    goto :goto_1

    .line 64
    .end local v0    # "each":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "members":Ljava/util/List;, "Ljava/util/List<+Lorg/junit/runners/model/FrameworkMember<*>;>;"
    :cond_0
    iget-object v3, p0, Lorg/junit/internal/runners/rules/RuleFieldValidator;->fAnnotation:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 70
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "members":Ljava/util/List;, "Ljava/util/List<+Lorg/junit/runners/model/FrameworkMember<*>;>;"
    :cond_1
    return-void
.end method
