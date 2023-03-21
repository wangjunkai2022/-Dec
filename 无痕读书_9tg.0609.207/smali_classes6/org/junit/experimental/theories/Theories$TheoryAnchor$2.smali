.class Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;
.super Lorg/junit/runners/model/Statement;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/Theories$TheoryAnchor;->methodCompletesWithParameters(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/Assignments;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

.field final synthetic val$complete:Lorg/junit/experimental/theories/internal/Assignments;

.field final synthetic val$freshInstance:Ljava/lang/Object;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method constructor <init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Lorg/junit/experimental/theories/internal/Assignments;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iput-object p2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    iput-object p3, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    iput-object p4, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$freshInstance:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    iget-object v2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-static {v2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->access$000(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/junit/experimental/theories/internal/Assignments;->getMethodArguments(Z)[Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "values":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    iget-object v2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$2;->val$freshInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "values":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    goto :goto_0
.end method
