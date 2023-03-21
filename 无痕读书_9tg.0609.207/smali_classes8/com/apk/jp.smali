.class public Lcom/apk/jp;
.super Lcom/apk/zo;
.source "GifDrawableResource.java"

# interfaces
.implements Lcom/apk/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/zo<",
        "Lcom/apk/hp;",
        ">;",
        "Lcom/apk/cl;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/hp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/zo;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/zo;->do:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apk/hp;

    invoke-virtual {v0}, Lcom/apk/hp;->stop()V

    .line 2
    iget-object v0, p0, Lcom/apk/zo;->do:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apk/hp;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/hp;->new:Z

    .line 4
    iget-object v0, v0, Lcom/apk/hp;->do:Lcom/apk/hp$do;

    iget-object v0, v0, Lcom/apk/hp$do;->do:Lcom/apk/lp;

    .line 5
    iget-object v2, v0, Lcom/apk/lp;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, v0, Lcom/apk/lp;->const:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v4, v0, Lcom/apk/lp;->try:Lcom/apk/pl;

    invoke-interface {v4, v2}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v3, v0, Lcom/apk/lp;->const:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lcom/apk/lp;->case:Z

    .line 10
    iget-object v2, v0, Lcom/apk/lp;->break:Lcom/apk/lp$do;

    if-eqz v2, :cond_1

    .line 11
    iget-object v4, v0, Lcom/apk/lp;->new:Lcom/apk/qi;

    invoke-virtual {v4, v2}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    .line 12
    iput-object v3, v0, Lcom/apk/lp;->break:Lcom/apk/lp$do;

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/apk/lp;->class:Lcom/apk/lp$do;

    if-eqz v2, :cond_2

    .line 14
    iget-object v4, v0, Lcom/apk/lp;->new:Lcom/apk/qi;

    invoke-virtual {v4, v2}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    .line 15
    iput-object v3, v0, Lcom/apk/lp;->class:Lcom/apk/lp$do;

    .line 16
    :cond_2
    iget-object v2, v0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    if-eqz v2, :cond_3

    .line 17
    iget-object v4, v0, Lcom/apk/lp;->new:Lcom/apk/qi;

    invoke-virtual {v4, v2}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    .line 18
    iput-object v3, v0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    .line 19
    :cond_3
    iget-object v2, v0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    .line 20
    iput-boolean v1, v0, Lcom/apk/lp;->catch:Z

    return-void
.end method

.method public for()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zo;->do:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apk/hp;

    .line 2
    iget-object v0, v0, Lcom/apk/hp;->do:Lcom/apk/hp$do;

    iget-object v0, v0, Lcom/apk/hp$do;->do:Lcom/apk/lp;

    .line 3
    iget-object v1, v0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->else()I

    move-result v1

    iget v0, v0, Lcom/apk/lp;->super:I

    add-int/2addr v1, v0

    return v1
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/zo;->do:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apk/hp;

    invoke-virtual {v0}, Lcom/apk/hp;->if()Landroid/graphics/Bitmap;

    move-result-object v0

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
            "Lcom/apk/hp;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/apk/hp;

    return-object v0
.end method
