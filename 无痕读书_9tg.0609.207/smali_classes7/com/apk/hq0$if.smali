.class public final Lcom/apk/hq0$if;
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
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hq0;


# direct methods
.method public constructor <init>(Lcom/apk/hq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    iget-object v2, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Lcom/apk/fq0$do;

    .line 5
    iget-object v2, v2, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v2, v3, v1}, Lcom/apk/iq0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    check-cast p1, Lcom/apk/fq0$do;

    .line 7
    iget-object p1, p1, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget p1, p1, Lcom/apk/iq0;->for:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0}, Lcom/apk/iq0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/hq0;->if(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/apk/hq0;->do(II)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apk/gq0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/hq0$if;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v4, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-virtual {v4, v0, v2}, Lcom/apk/hq0;->do(II)Ljava/lang/Object;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-virtual {v5, v0, v1}, Lcom/apk/hq0;->do(II)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/hq0$new;

    iget-object v1, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    invoke-direct {v0, v1}, Lcom/apk/hq0$new;-><init>(Lcom/apk/hq0;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hq0$if;->do:Lcom/apk/hq0;

    check-cast v0, Lcom/apk/fq0$do;

    .line 2
    iget-object v0, v0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget v0, v0, Lcom/apk/iq0;->for:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
