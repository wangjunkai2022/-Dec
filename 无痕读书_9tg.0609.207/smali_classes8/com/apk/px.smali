.class public Lcom/apk/px;
.super Ljava/lang/Object;
.source "CookieJarImpl.java"

# interfaces
.implements Lcom/apk/kg0;


# instance fields
.field public if:Lcom/apk/rx;


# direct methods
.method public constructor <init>(Lcom/apk/rx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/px;->if:Lcom/apk/rx;

    return-void
.end method


# virtual methods
.method public declared-synchronized do(Lcom/apk/tg0;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/px;->if:Lcom/apk/rx;

    check-cast v0, Lcom/apk/sx;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ig0;

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/apk/sx;->new(Lcom/apk/tg0;Lcom/apk/ig0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized if(Lcom/apk/tg0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/px;->if:Lcom/apk/rx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lcom/apk/sx;

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/apk/sx;->if(Lcom/apk/tg0;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
