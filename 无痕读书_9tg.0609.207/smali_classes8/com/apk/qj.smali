.class public interface abstract Lcom/apk/qj;
.super Ljava/lang/Object;
.source "Transformation.java"

# interfaces
.implements Lcom/apk/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/kj;"
    }
.end annotation


# virtual methods
.method public abstract if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/gl<",
            "TT;>;II)",
            "Lcom/apk/gl<",
            "TT;>;"
        }
    .end annotation
.end method
