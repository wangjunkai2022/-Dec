.class public final Lcom/apk/hq0$for;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hq0;


# direct methods
.method public constructor <init>(Lcom/apk/hq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0}, Lcom/apk/iq0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0, p1}, Lcom/apk/iq0;->try(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/iq0;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/apk/hq0;->for(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    invoke-virtual {v3, v0, v1}, Lcom/apk/hq0;->do(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/hq0$do;

    iget-object v1, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/hq0$do;-><init>(Lcom/apk/hq0;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0, p1}, Lcom/apk/iq0;->try(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 4
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0, p1}, Lcom/apk/iq0;->this(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/iq0;->size()I

    move-result v1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/iq0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/apk/iq0;->size()I

    move-result p1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/iq0;->size()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/apk/fq0;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/apk/iq0;->size()I

    move-result p1

    if-eq v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apk/hq0;->new(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/apk/hq0$for;->do:Lcom/apk/hq0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/apk/hq0;->try([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
