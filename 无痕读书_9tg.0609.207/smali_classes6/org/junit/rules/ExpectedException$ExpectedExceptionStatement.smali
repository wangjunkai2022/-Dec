.class Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;
.super Lorg/junit/runners/model/Statement;
.source "ExpectedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/ExpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectedExceptionStatement"
.end annotation


# instance fields
.field private final fNext:Lorg/junit/runners/model/Statement;

.field final synthetic this$0:Lorg/junit/rules/ExpectedException;


# direct methods
.method public constructor <init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .param p2, "base"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 162
    iput-object p2, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->fNext:Lorg/junit/runners/model/Statement;

    .line 163
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
    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->fNext:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 169
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v1}, Lorg/junit/rules/ExpectedException;->access$000(Lorg/junit/rules/ExpectedException;)Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->expectsThrowable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v1}, Lorg/junit/rules/ExpectedException;->access$100(Lorg/junit/rules/ExpectedException;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    iget-object v2, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v2}, Lorg/junit/rules/ExpectedException;->access$200(Lorg/junit/rules/ExpectedException;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/junit/rules/ExpectedException;->access$300(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 174
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/AssertionError;
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    iget-object v2, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v2}, Lorg/junit/rules/ExpectedException;->access$400(Lorg/junit/rules/ExpectedException;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/junit/rules/ExpectedException;->access$300(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v1, v0}, Lorg/junit/rules/ExpectedException;->access$500(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
