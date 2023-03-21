.class public final Lcom/apk/st;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/st$if;,
        Lcom/apk/st$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KO:",
        "Ljava/lang/Object;",
        "VO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/apk/st$for<",
            "TKO;TVO;>;>;"
        }
    .end annotation
.end field

.field public volatile for:I

.field public final if:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TKO;>;"
        }
    .end annotation
.end field

.field public volatile new:I

.field public volatile try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apk/st;->do:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apk/st;->if:Ljava/util/HashSet;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/apk/st;->for:I

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/apk/st;->new:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/apk/st;->try:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized do(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/apk/st;->do:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/st;->do:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/st$for;

    .line 4
    iget-object v0, p0, Lcom/apk/st;->if:Ljava/util/HashSet;

    .line 5
    iget-object v1, p1, Lcom/apk/st$for;->do:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-static {p1}, Lcom/apk/st$for;->if(Lcom/apk/st$for;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 8
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1

    .line 9
    :cond_0
    :goto_1
    monitor-exit p0

    return-void
.end method
