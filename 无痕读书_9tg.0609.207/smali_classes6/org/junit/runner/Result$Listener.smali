.class Lorg/junit/runner/Result$Listener;
.super Lorg/junit/runner/notification/RunListener;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runner/Result;


# direct methods
.method private constructor <init>(Lorg/junit/runner/Result;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runner/Result;Lorg/junit/runner/Result$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/runner/Result;
    .param p2, "x1"    # Lorg/junit/runner/Result$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/junit/runner/Result$Listener;-><init>(Lorg/junit/runner/Result;)V

    return-void
.end method


# virtual methods
.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .prologue
    .line 98
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-static {v0}, Lorg/junit/runner/Result;->access$300(Lorg/junit/runner/Result;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-static {v0}, Lorg/junit/runner/Result;->access$200(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 83
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-static {v0}, Lorg/junit/runner/Result;->access$400(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 93
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 6
    .param p1, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "endTime":J
    iget-object v2, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    iget-object v3, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-static {v3}, Lorg/junit/runner/Result;->access$000(Lorg/junit/runner/Result;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v4, v5}, Lorg/junit/runner/Result;->access$114(Lorg/junit/runner/Result;J)J

    .line 78
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/junit/runner/Result;->access$002(Lorg/junit/runner/Result;J)J

    .line 72
    return-void
.end method
