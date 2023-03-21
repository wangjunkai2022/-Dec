.class public Lorg/junit/runner/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/Result$1;,
        Lorg/junit/runner/Result$Listener;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final fFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation
.end field

.field private fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private fRunTime:J

.field private fStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/Result;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runner/Result;->fFailures:Ljava/util/List;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/junit/runner/Result;->fRunTime:J

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runner/Result;)J
    .locals 2
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/junit/runner/Result;->fStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/junit/runner/Result;J)J
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lorg/junit/runner/Result;->fStartTime:J

    return-wide p1
.end method

.method static synthetic access$114(Lorg/junit/runner/Result;J)J
    .locals 3
    .param p0, "x0"    # Lorg/junit/runner/Result;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/junit/runner/Result;->fRunTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/junit/runner/Result;->fRunTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/junit/runner/Result;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/junit/runner/Result;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/junit/runner/Result;->fFailures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/Result;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/junit/runner/Result;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public createListener()Lorg/junit/runner/notification/RunListener;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lorg/junit/runner/Result$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/runner/Result$Listener;-><init>(Lorg/junit/runner/Result;Lorg/junit/runner/Result$1;)V

    return-object v0
.end method

.method public getFailureCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/junit/runner/Result;->fFailures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFailures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/junit/runner/Result;->fFailures:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoreCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/junit/runner/Result;->fIgnoreCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRunCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/junit/runner/Result;->fCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRunTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/junit/runner/Result;->fRunTime:J

    return-wide v0
.end method

.method public wasSuccessful()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/junit/runner/Result;->getFailureCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
