.class public Lcom/apk/aq$do;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/aq;


# direct methods
.method public constructor <init>(Lcom/apk/aq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/aq$do;->do:Lcom/apk/aq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/apk/aq$do;->do:Lcom/apk/aq;

    iget-boolean v0, p2, Lcom/apk/aq;->for:Z

    .line 2
    invoke-virtual {p2, p1}, Lcom/apk/aq;->new(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/apk/aq;->for:Z

    .line 3
    iget-object p1, p0, Lcom/apk/aq$do;->do:Lcom/apk/aq;

    iget-boolean p1, p1, Lcom/apk/aq;->for:Z

    if-eq v0, p1, :cond_5

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/aq$do;->do:Lcom/apk/aq;

    iget-boolean p1, p1, Lcom/apk/aq;->for:Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/aq$do;->do:Lcom/apk/aq;

    iget-object p2, p1, Lcom/apk/aq;->if:Lcom/apk/yp$do;

    iget-boolean p1, p1, Lcom/apk/aq;->for:Z

    check-cast p2, Lcom/apk/qi$if;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p2, Lcom/apk/qi$if;->if:Lcom/apk/qi;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p2, Lcom/apk/qi$if;->do:Lcom/apk/jq;

    .line 9
    iget-object v0, p2, Lcom/apk/jq;->do:Ljava/util/Set;

    invoke-static {v0}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/zq;

    .line 10
    invoke-interface {v1}, Lcom/apk/zq;->try()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/apk/zq;->for()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-interface {v1}, Lcom/apk/zq;->clear()V

    .line 12
    iget-boolean v2, p2, Lcom/apk/jq;->for:Z

    if-nez v2, :cond_2

    .line 13
    invoke-interface {v1}, Lcom/apk/zq;->new()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v2, p2, Lcom/apk/jq;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_5
    :goto_1
    return-void
.end method
