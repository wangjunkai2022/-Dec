.class public abstract Lorg/junit/runners/model/FrameworkMember;
.super Ljava/lang/Object;
.source "FrameworkMember.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/junit/runners/model/FrameworkMember",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract isPublic()Z
.end method

.method isShadowedBy(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMember;

    .line 21
    .local v0, "each":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    invoke-virtual {p0, v0}, Lorg/junit/runners/model/FrameworkMember;->isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    .line 25
    .end local v0    # "each":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method abstract isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract isStatic()Z
.end method
