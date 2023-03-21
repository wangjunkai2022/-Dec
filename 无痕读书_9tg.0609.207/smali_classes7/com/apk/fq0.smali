.class public Lcom/apk/fq0;
.super Lcom/apk/iq0;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/iq0<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public goto:Lcom/apk/hq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/hq0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/iq0;-><init>()V

    return-void
.end method


# virtual methods
.method public final catch()Lcom/apk/hq0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/hq0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fq0;->goto:Lcom/apk/hq0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/fq0$do;

    invoke-direct {v0, p0}, Lcom/apk/fq0$do;-><init>(Lcom/apk/fq0;)V

    iput-object v0, p0, Lcom/apk/fq0;->goto:Lcom/apk/hq0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/fq0;->goto:Lcom/apk/hq0;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/fq0;->catch()Lcom/apk/hq0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/hq0;->do:Lcom/apk/hq0$if;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/apk/hq0$if;

    invoke-direct {v1, v0}, Lcom/apk/hq0$if;-><init>(Lcom/apk/hq0;)V

    iput-object v1, v0, Lcom/apk/hq0;->do:Lcom/apk/hq0$if;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/apk/hq0;->do:Lcom/apk/hq0$if;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/fq0;->catch()Lcom/apk/hq0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/hq0;->if:Lcom/apk/hq0$for;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/apk/hq0$for;

    invoke-direct {v1, v0}, Lcom/apk/hq0$for;-><init>(Lcom/apk/hq0;)V

    iput-object v1, v0, Lcom/apk/hq0;->if:Lcom/apk/hq0$for;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/apk/hq0;->if:Lcom/apk/hq0$for;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/apk/iq0;->for:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 2
    iget v0, p0, Lcom/apk/iq0;->for:I

    .line 3
    iget-object v2, p0, Lcom/apk/iq0;->do:[I

    array-length v3, v2

    if-ge v3, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/apk/iq0;->if:[Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v1}, Lcom/apk/iq0;->do(I)V

    .line 6
    iget v1, p0, Lcom/apk/iq0;->for:I

    if-lez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/apk/iq0;->do:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p0, Lcom/apk/iq0;->if:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_0
    invoke-static {v2, v3, v0}, Lcom/apk/iq0;->for([I[Ljava/lang/Object;I)V

    .line 10
    :cond_1
    iget v1, p0, Lcom/apk/iq0;->for:I

    if-ne v1, v0, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/apk/iq0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/fq0;->catch()Lcom/apk/hq0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/hq0;->for:Lcom/apk/hq0$try;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/apk/hq0$try;

    invoke-direct {v1, v0}, Lcom/apk/hq0$try;-><init>(Lcom/apk/hq0;)V

    iput-object v1, v0, Lcom/apk/hq0;->for:Lcom/apk/hq0$try;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/apk/hq0;->for:Lcom/apk/hq0$try;

    return-object v0
.end method
