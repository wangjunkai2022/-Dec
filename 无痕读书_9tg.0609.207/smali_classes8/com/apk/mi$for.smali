.class public final Lcom/apk/mi$for;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/apk/pr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/mi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/pr<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public for:Lcom/apk/zq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Lcom/apk/or;)V
    .locals 2
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/apk/mi$for;->if:I

    iget v1, p0, Lcom/apk/mi$for;->do:I

    invoke-interface {p1, v0, v1}, Lcom/apk/or;->if(II)V

    return-void
.end method

.method public do(Lcom/apk/or;)V
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

.method public for(Lcom/apk/zq;)V
    .locals 0
    .param p1    # Lcom/apk/zq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/apk/mi$for;->for:Lcom/apk/zq;

    return-void
.end method

.method public goto()Lcom/apk/zq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mi$for;->for:Lcom/apk/zq;

    return-object v0
.end method

.method public if(Ljava/lang/Object;Lcom/apk/sr;)V
    .locals 0
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
            "(",
            "Ljava/lang/Object;",
            "Lcom/apk/sr<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
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

.method public this(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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
