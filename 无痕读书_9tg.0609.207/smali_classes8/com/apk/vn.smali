.class public Lcom/apk/vn;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lcom/apk/gl;
.implements Lcom/apk/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/gl<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/apk/cl;"
    }
.end annotation


# instance fields
.field public final do:Landroid/graphics/Bitmap;

.field public final if:Lcom/apk/pl;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/apk/pl;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/pl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/apk/vn;->do:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/apk/pl;

    iput-object p2, p0, Lcom/apk/vn;->if:Lcom/apk/pl;

    return-void
.end method

.method public static try(Landroid/graphics/Bitmap;Lcom/apk/pl;)Lcom/apk/vn;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/apk/pl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/apk/vn;

    invoke-direct {v0, p0, p1}, Lcom/apk/vn;-><init>(Landroid/graphics/Bitmap;Lcom/apk/pl;)V

    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/vn;->if:Lcom/apk/pl;

    iget-object v1, p0, Lcom/apk/vn;->do:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/vn;->do:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/apk/gs;->case(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/vn;->do:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/vn;->do:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public new()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
