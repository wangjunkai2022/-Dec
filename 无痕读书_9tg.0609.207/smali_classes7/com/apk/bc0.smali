.class public Lcom/apk/bc0;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/bc0$do;,
        Lcom/apk/bc0$for;,
        Lcom/apk/bc0$if;
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/bc0$if;

.field public final for:Lcom/apk/bc0$do;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public if:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/apk/bc0;->if:Ljava/util/concurrent/locks/Lock;

    .line 3
    new-instance v1, Lcom/apk/bc0$do;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/apk/bc0$do;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/apk/bc0;->for:Lcom/apk/bc0$do;

    .line 4
    new-instance v0, Lcom/apk/bc0$if;

    invoke-direct {v0}, Lcom/apk/bc0$if;-><init>()V

    iput-object v0, p0, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/bc0;->for:Lcom/apk/bc0$do;

    .line 2
    iget-object v1, v0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v1, Lcom/apk/bc0$do;->for:Ljava/lang/Runnable;

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/apk/bc0$do;->do()Lcom/apk/bc0$for;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, v0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, v0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method

.method public final if(Ljava/lang/Runnable;)Lcom/apk/bc0$for;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Lcom/apk/bc0$do;

    iget-object v1, p0, Lcom/apk/bc0;->if:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/apk/bc0$do;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/apk/bc0;->for:Lcom/apk/bc0$do;

    .line 3
    iget-object v1, p1, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    iput-object v0, v1, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    iput-object v1, v0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    .line 7
    iput-object v0, p1, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    .line 8
    iput-object p1, v0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p1, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    iget-object p1, v0, Lcom/apk/bc0$do;->new:Lcom/apk/bc0$for;

    return-object p1

    :catchall_0
    move-exception v0

    .line 11
    iget-object p1, p1, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
