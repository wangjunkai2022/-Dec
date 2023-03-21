.class public Lcom/apk/bc0$do;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Lcom/apk/bc0$do;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final for:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public if:Lcom/apk/bc0$do;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final new:Lcom/apk/bc0$for;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public try:Ljava/util/concurrent/locks/Lock;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/locks/Lock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/bc0$do;->for:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    .line 4
    new-instance p1, Lcom/apk/bc0$for;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/apk/bc0$for;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/apk/bc0$do;->new:Lcom/apk/bc0$for;

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/bc0$for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    iget-object v1, p0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    iput-object v1, v0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;

    iget-object v1, p0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    iput-object v1, v0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/apk/bc0$do;->if:Lcom/apk/bc0$do;

    .line 7
    iput-object v0, p0, Lcom/apk/bc0$do;->do:Lcom/apk/bc0$do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    iget-object v0, p0, Lcom/apk/bc0$do;->new:Lcom/apk/bc0$for;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/apk/bc0$do;->try:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw v0
.end method
