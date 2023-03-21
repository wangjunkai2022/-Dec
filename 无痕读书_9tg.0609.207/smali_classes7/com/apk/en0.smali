.class public Lcom/apk/en0;
.super Ljava/lang/Object;
.source "OpenTags.java"


# instance fields
.field public final do:Lcom/apk/zm0;

.field public for:Lcom/apk/ln0;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ln0;",
            ">;"
        }
    .end annotation
.end field

.field public new:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/zm0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/en0;->if:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apk/en0;->new:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/apk/en0;->do:Lcom/apk/zm0;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Lcom/apk/om0;)Lcom/apk/ln0;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object v1, p0, Lcom/apk/en0;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/apk/en0;->do:Lcom/apk/zm0;

    invoke-virtual {v2, p1, p2}, Lcom/apk/zm0;->this(Ljava/lang/String;Lcom/apk/om0;)Lcom/apk/jn0;

    move-result-object p2

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/apk/en0;->do:Lcom/apk/zm0;

    if-eqz p1, :cond_1

    return-object v0

    .line 6
    :cond_1
    throw v0

    .line 7
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/ln0;

    .line 8
    iget-object v3, v2, Lcom/apk/ln0;->if:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    if-eqz p2, :cond_0

    .line 9
    iget-object v2, v2, Lcom/apk/ln0;->if:Ljava/lang/String;

    .line 10
    iget-object v3, p2, Lcom/apk/jn0;->catch:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    :cond_6
    return-object v0
.end method
