.class public abstract Lcom/apk/ir;
.super Ljava/lang/Object;
.source "CustomTarget.java"

# interfaces
.implements Lcom/apk/pr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/pr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:I

.field public for:Lcom/apk/zq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final if:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/apk/gs;->const(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/apk/ir;->do:I

    .line 4
    iput p2, p0, Lcom/apk/ir;->if:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    const-string v2, " and height: "

    invoke-static {v1, p1, v2, p2}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final break(Lcom/apk/or;)V
    .locals 2
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/apk/ir;->do:I

    iget v1, p0, Lcom/apk/ir;->if:I

    invoke-interface {p1, v0, v1}, Lcom/apk/or;->if(II)V

    return-void
.end method

.method public final do(Lcom/apk/or;)V
    .locals 0
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public else(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final for(Lcom/apk/zq;)V
    .locals 0
    .param p1    # Lcom/apk/zq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/apk/ir;->for:Lcom/apk/zq;

    return-void
.end method

.method public final goto()Lcom/apk/zq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ir;->for:Lcom/apk/zq;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public try(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
