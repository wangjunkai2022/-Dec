.class public Lcom/apk/pl0;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/apk/am0;


# instance fields
.field public final do:Lcom/apk/zl0;

.field public final if:Lcom/apk/rl0;


# direct methods
.method public constructor <init>(Lcom/apk/rl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/pl0;->if:Lcom/apk/rl0;

    .line 3
    new-instance p1, Lcom/apk/zl0;

    invoke-direct {p1}, Lcom/apk/zl0;-><init>()V

    iput-object p1, p0, Lcom/apk/pl0;->do:Lcom/apk/zl0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/em0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/apk/yl0;->do(Lcom/apk/em0;Ljava/lang/Object;)Lcom/apk/yl0;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/apk/pl0;->do:Lcom/apk/zl0;

    invoke-virtual {p2, p1}, Lcom/apk/zl0;->do(Lcom/apk/yl0;)V

    .line 3
    iget-object p1, p0, Lcom/apk/pl0;->if:Lcom/apk/rl0;

    .line 4
    iget-object p1, p1, Lcom/apk/rl0;->break:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pl0;->do:Lcom/apk/zl0;

    invoke-virtual {v0}, Lcom/apk/zl0;->if()Lcom/apk/yl0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/pl0;->if:Lcom/apk/rl0;

    invoke-virtual {v1, v0}, Lcom/apk/rl0;->for(Lcom/apk/yl0;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
