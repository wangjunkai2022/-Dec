.class public final Lcom/apk/mo;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements Lcom/apk/gl;
.implements Lcom/apk/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/gl<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/apk/cl;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/res/Resources;

.field public final if:Lcom/apk/gl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/apk/gl;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/apk/mo;->do:Landroid/content/res/Resources;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/apk/mo;->if:Lcom/apk/gl;

    return-void
.end method

.method public static try(Landroid/content/res/Resources;Lcom/apk/gl;)Lcom/apk/gl;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apk/gl<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/apk/mo;

    invoke-direct {v0, p0, p1}, Lcom/apk/mo;-><init>(Landroid/content/res/Resources;Lcom/apk/gl;)V

    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/mo;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->do()V

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/mo;->if:Lcom/apk/gl;

    invoke-interface {v0}, Lcom/apk/gl;->for()I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/apk/mo;->do:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/apk/mo;->if:Lcom/apk/gl;

    invoke-interface {v2}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/mo;->if:Lcom/apk/gl;

    instance-of v1, v0, Lcom/apk/cl;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/apk/cl;

    invoke-interface {v0}, Lcom/apk/cl;->if()V

    :cond_0
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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method
