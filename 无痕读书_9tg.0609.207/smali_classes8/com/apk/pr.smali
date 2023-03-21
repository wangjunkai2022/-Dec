.class public interface abstract Lcom/apk/pr;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/apk/eq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/eq;"
    }
.end annotation


# virtual methods
.method public abstract break(Lcom/apk/or;)V
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract do(Lcom/apk/or;)V
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract else(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract for(Lcom/apk/zq;)V
    .param p1    # Lcom/apk/zq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract goto()Lcom/apk/zq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract if(Ljava/lang/Object;Lcom/apk/sr;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/sr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/apk/sr<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract this(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract try(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
