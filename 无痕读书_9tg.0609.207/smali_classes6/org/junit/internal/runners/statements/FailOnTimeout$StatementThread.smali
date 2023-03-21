.class Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;
.super Ljava/lang/Thread;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/statements/FailOnTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatementThread"
.end annotation


# instance fields
.field private fExceptionThrownByOriginalStatement:Ljava/lang/Throwable;

.field private fFinished:Z

.field private fRecordedStackTrace:[Ljava/lang/StackTraceElement;

.field private final fStatement:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;)V
    .locals 2
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fFinished:Z

    .line 55
    iput-object v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fExceptionThrownByOriginalStatement:Ljava/lang/Throwable;

    .line 57
    iput-object v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fRecordedStackTrace:[Ljava/lang/StackTraceElement;

    .line 60
    iput-object p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fStatement:Lorg/junit/runners/model/Statement;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fFinished:Z

    return v0
.end method

.method static synthetic access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fExceptionThrownByOriginalStatement:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public getRecordedStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fRecordedStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public recordStackTrace()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fRecordedStackTrace:[Ljava/lang/StackTraceElement;

    .line 65
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fStatement:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fFinished:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$StatementThread;->fExceptionThrownByOriginalStatement:Ljava/lang/Throwable;

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
