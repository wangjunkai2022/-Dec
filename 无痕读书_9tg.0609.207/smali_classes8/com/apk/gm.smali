.class public Lcom/apk/gm;
.super Lcom/apk/ds;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/apk/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ds<",
        "Lcom/apk/kj;",
        "Lcom/apk/gl<",
        "*>;>;",
        "Lcom/apk/hm;"
    }
.end annotation


# instance fields
.field public new:Lcom/apk/hm$do;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/ds;-><init>(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic case(Lcom/apk/kj;Lcom/apk/gl;)Lcom/apk/gl;
    .locals 0
    .param p1    # Lcom/apk/kj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/apk/ds;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/gl;

    return-object p1
.end method

.method public for(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/kj;

    check-cast p2, Lcom/apk/gl;

    .line 2
    iget-object p1, p0, Lcom/apk/gm;->new:Lcom/apk/hm$do;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/apk/vk;

    .line 4
    iget-object p1, p1, Lcom/apk/vk;->try:Lcom/apk/jl;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/apk/jl;->do(Lcom/apk/gl;Z)V

    :cond_0
    return-void
.end method

.method public if(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/gl;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/apk/gl;->for()I

    move-result p1

    :goto_0
    return p1
.end method
