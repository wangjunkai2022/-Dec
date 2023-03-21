.class public Lcom/apk/sn;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lcom/apk/pj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/pj<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/pl;

.field public final if:Lcom/apk/pj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/pj<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/pl;Lcom/apk/pj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/pl;",
            "Lcom/apk/pj<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/sn;->do:Lcom/apk/pl;

    .line 3
    iput-object p2, p0, Lcom/apk/sn;->if:Lcom/apk/pj;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/io/File;Lcom/apk/mj;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/apk/gl;

    .line 2
    iget-object v0, p0, Lcom/apk/sn;->if:Lcom/apk/pj;

    new-instance v1, Lcom/apk/vn;

    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/apk/sn;->do:Lcom/apk/pl;

    invoke-direct {v1, p1, v2}, Lcom/apk/vn;-><init>(Landroid/graphics/Bitmap;Lcom/apk/pl;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/apk/gj;->do(Ljava/lang/Object;Ljava/io/File;Lcom/apk/mj;)Z

    move-result p1

    return p1
.end method

.method public if(Lcom/apk/mj;)Lcom/apk/fj;
    .locals 1
    .param p1    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sn;->if:Lcom/apk/pj;

    invoke-interface {v0, p1}, Lcom/apk/pj;->if(Lcom/apk/mj;)Lcom/apk/fj;

    move-result-object p1

    return-object p1
.end method
