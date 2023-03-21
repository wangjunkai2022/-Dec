.class public Lcom/apk/wp;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/apk/dq;


# instance fields
.field public final do:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/apk/eq;",
            ">;"
        }
    .end annotation
.end field

.field public for:Z

.field public if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/eq;)V
    .locals 1
    .param p1    # Lcom/apk/eq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lcom/apk/wp;->for:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/apk/eq;->onDestroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/wp;->if:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/apk/eq;->onStart()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/apk/eq;->onStop()V

    :goto_0
    return-void
.end method

.method public for()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/wp;->for:Z

    .line 2
    iget-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    invoke-static {v0}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/eq;

    .line 3
    invoke-interface {v1}, Lcom/apk/eq;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/eq;)V
    .locals 1
    .param p1    # Lcom/apk/eq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public new()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/wp;->if:Z

    .line 2
    iget-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    invoke-static {v0}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/eq;

    .line 3
    invoke-interface {v1}, Lcom/apk/eq;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public try()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/wp;->if:Z

    .line 2
    iget-object v0, p0, Lcom/apk/wp;->do:Ljava/util/Set;

    invoke-static {v0}, Lcom/apk/gs;->else(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/eq;

    .line 3
    invoke-interface {v1}, Lcom/apk/eq;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
