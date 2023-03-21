.class public Lcom/apk/ip;
.super Ljava/lang/Object;
.source "GifDrawableEncoder.java"

# interfaces
.implements Lcom/apk/pj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/pj<",
        "Lcom/apk/hp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/io/File;Lcom/apk/mj;)Z
    .locals 0
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
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/hp;

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/hp;->do:Lcom/apk/hp$do;

    iget-object p1, p1, Lcom/apk/hp$do;->do:Lcom/apk/lp;

    .line 4
    iget-object p1, p1, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/apk/wr;->new(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if(Lcom/apk/mj;)Lcom/apk/fj;
    .locals 0
    .param p1    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Lcom/apk/fj;->do:Lcom/apk/fj;

    return-object p1
.end method
