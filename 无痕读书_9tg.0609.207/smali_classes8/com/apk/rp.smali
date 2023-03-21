.class public final Lcom/apk/rp;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Lcom/apk/tp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/tp<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/pl;

.field public final for:Lcom/apk/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/tp<",
            "Lcom/apk/hp;",
            "[B>;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/tp<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/pl;Lcom/apk/tp;Lcom/apk/tp;)V
    .locals 0
    .param p1    # Lcom/apk/pl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/tp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/tp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/pl;",
            "Lcom/apk/tp<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lcom/apk/tp<",
            "Lcom/apk/hp;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/rp;->do:Lcom/apk/pl;

    .line 3
    iput-object p2, p0, Lcom/apk/rp;->if:Lcom/apk/tp;

    .line 4
    iput-object p3, p0, Lcom/apk/rp;->for:Lcom/apk/tp;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;
    .locals 2
    .param p1    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gl<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/apk/mj;",
            ")",
            "Lcom/apk/gl<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/rp;->if:Lcom/apk/tp;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/rp;->do:Lcom/apk/pl;

    invoke-static {v0, v1}, Lcom/apk/vn;->try(Landroid/graphics/Bitmap;Lcom/apk/pl;)Lcom/apk/vn;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lcom/apk/tp;->do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/apk/hp;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/rp;->for:Lcom/apk/tp;

    invoke-interface {v0, p1, p2}, Lcom/apk/tp;->do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
