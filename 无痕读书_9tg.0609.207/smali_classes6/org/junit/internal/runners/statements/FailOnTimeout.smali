.class public Lorg/junit/internal/runners/statements/FailOnTimeout;
.super Lorg/junit/runners/model/Statement;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    }
.end annotation


# instance fields
.field private final fOriginalStatement:Lorg/junit/runners/model/Statement;

.field private final fTimeout:J


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;J)V
    .locals 0
    .param p1, "originalStatement"    # Lorg/junit/runners/model/Statement;
    .param p2, "timeout"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->fOriginalStatement:Lorg/junit/runners/model/Statement;

    .line 12
    iput-wide p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->fTimeout:J

    .line 13
    return-void
.end method

.method private evaluateStatement()Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;

    iget-object v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->fOriginalStatement:Lorg/junit/runners/model/Statement;

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;-><init>(Lorg/junit/runners/model/Statement;)V

    .line 25
    .local v0, "thread":Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->start()V

    .line 26
    iget-wide v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->fTimeout:J

    invoke-virtual {v0, v2, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->join(J)V

    .line 27
    invoke-static {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->access$000(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->recordStackTrace()V

    .line 30
    :cond_0
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->interrupt()V

    .line 31
    return-object v0
.end method

.method private throwExceptionForUnfinishedThread(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)V
    .locals 1
    .param p1, "thread"    # Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->throwTimeoutException(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)V

    .line 41
    return-void
.end method

.method private throwTimeoutException(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)V
    .locals 6
    .param p1, "thread"    # Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "test timed out after %d milliseconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->fTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->getRecordedStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 47
    throw v0
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->evaluateStatement()Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;

    move-result-object v0

    .line 18
    .local v0, "thread":Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
    invoke-static {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->access$000(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-direct {p0, v0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->throwExceptionForUnfinishedThread(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)V

    .line 21
    :cond_0
    return-void
.end method
