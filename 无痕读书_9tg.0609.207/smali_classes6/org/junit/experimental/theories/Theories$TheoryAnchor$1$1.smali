.class Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;
.super Lorg/junit/runners/model/Statement;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

.field final synthetic val$statement:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iput-object p2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 142
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleDataPointSuccess()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v1, v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleAssumptionViolation(Lorg/junit/internal/AssumptionViolatedException;)V

    goto :goto_0

    .line 145
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iget-object v2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v2, v2, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    iget-object v3, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;->this$1:Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;

    iget-object v3, v3, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-static {v3}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->access$000(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/junit/experimental/theories/internal/Assignments;->getArgumentStrings(Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->reportParameterizedError(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
