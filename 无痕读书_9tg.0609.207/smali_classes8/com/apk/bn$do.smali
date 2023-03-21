.class public Lcom/apk/bn$do;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lcom/apk/uj;
.implements Lcom/apk/uj$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "TData;>;",
        "Lcom/apk/uj$do<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public case:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/uj<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public else:Z

.field public for:I

.field public final if:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public new:Lcom/apk/ni;

.field public try:Lcom/apk/uj$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/uj$do<",
            "-TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/uj<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/bn$do;->if:Landroidx/core/util/Pools$Pool;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iput-object p1, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/apk/bn$do;->for:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/bn$do;->else:Z

    .line 2
    iget-object v0, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/uj;

    .line 3
    invoke-interface {v1}, Lcom/apk/uj;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 1
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/bn$do;->new:Lcom/apk/ni;

    .line 2
    iput-object p2, p0, Lcom/apk/bn$do;->try:Lcom/apk/uj$do;

    .line 3
    iget-object p2, p0, Lcom/apk/bn$do;->if:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    .line 4
    iget-object p2, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    iget v0, p0, Lcom/apk/bn$do;->for:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apk/uj;

    invoke-interface {p2, p1, p0}, Lcom/apk/uj;->case(Lcom/apk/ni;Lcom/apk/uj$do;)V

    .line 5
    iget-boolean p1, p0, Lcom/apk/bn$do;->else:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/apk/bn$do;->cancel()V

    :cond_0
    return-void
.end method

.method public do()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->do()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final else()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/apk/bn$do;->else:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/apk/bn$do;->for:I

    iget-object v1, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/apk/bn$do;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apk/bn$do;->for:I

    .line 4
    iget-object v0, p0, Lcom/apk/bn$do;->new:Lcom/apk/ni;

    iget-object v1, p0, Lcom/apk/bn$do;->try:Lcom/apk/uj$do;

    invoke-virtual {p0, v0, v1}, Lcom/apk/bn$do;->case(Lcom/apk/ni;Lcom/apk/uj$do;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 6
    invoke-static {v0, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/apk/bn$do;->try:Lcom/apk/uj$do;

    new-instance v1, Lcom/apk/bl;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/apk/bl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public for(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/apk/bn$do;->else()V

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/bn$do;->if:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/bn$do;->case:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/uj;

    .line 5
    invoke-interface {v1}, Lcom/apk/uj;->if()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public new(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/apk/bn$do;->try:Lcom/apk/uj$do;

    invoke-interface {v0, p1}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/bn$do;->else()V

    :goto_0
    return-void
.end method

.method public try()Lcom/apk/dj;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bn$do;->do:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/uj;

    invoke-interface {v0}, Lcom/apk/uj;->try()Lcom/apk/dj;

    move-result-object v0

    return-object v0
.end method
