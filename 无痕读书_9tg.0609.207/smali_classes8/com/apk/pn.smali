.class public abstract Lcom/apk/pn;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Lcom/apk/oj;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/oj<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/jo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/jo;->do()Lcom/apk/jo;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/pn;->do:Lcom/apk/jo;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Lcom/apk/mj;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1
.end method

.method public final for(Landroid/graphics/ImageDecoder$Source;IILcom/apk/mj;)Lcom/apk/gl;
    .locals 9
    .param p1    # Landroid/graphics/ImageDecoder$Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/apk/mj;",
            ")",
            "Lcom/apk/gl<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/eo;->case:Lcom/apk/lj;

    invoke-virtual {p4, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/apk/ej;

    .line 2
    sget-object v0, Lcom/apk/co;->case:Lcom/apk/lj;

    invoke-virtual {p4, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/apk/co;

    .line 3
    sget-object v0, Lcom/apk/eo;->this:Lcom/apk/lj;

    .line 4
    invoke-virtual {p4, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apk/eo;->this:Lcom/apk/lj;

    .line 5
    invoke-virtual {p4, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    sget-object v0, Lcom/apk/eo;->else:Lcom/apk/lj;

    invoke-virtual {p4, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Lcom/apk/nj;

    .line 7
    new-instance p4, Lcom/apk/pn$do;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/apk/pn$do;-><init>(Lcom/apk/pn;IIZLcom/apk/ej;Lcom/apk/co;Lcom/apk/nj;)V

    move-object p2, p0

    check-cast p2, Lcom/apk/un;

    .line 8
    invoke-static {p1, p4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x2

    const-string p4, "BitmapImageDecoder"

    .line 9
    invoke-static {p4, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    :cond_1
    new-instance p3, Lcom/apk/vn;

    iget-object p2, p2, Lcom/apk/un;->if:Lcom/apk/pl;

    invoke-direct {p3, p1, p2}, Lcom/apk/vn;-><init>(Landroid/graphics/Bitmap;Lcom/apk/pl;)V

    return-object p3
.end method

.method public bridge synthetic if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/gl;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apk/pn;->for(Landroid/graphics/ImageDecoder$Source;IILcom/apk/mj;)Lcom/apk/gl;

    move-result-object p1

    return-object p1
.end method
