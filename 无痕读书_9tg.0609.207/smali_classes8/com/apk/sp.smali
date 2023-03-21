.class public Lcom/apk/sp;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/apk/tp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/tp<",
        "Lcom/apk/hp;",
        "[B>;"
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
.method public do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;
    .locals 0
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
            "Lcom/apk/hp;",
            ">;",
            "Lcom/apk/mj;",
            ")",
            "Lcom/apk/gl<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/hp;

    .line 2
    iget-object p1, p1, Lcom/apk/hp;->do:Lcom/apk/hp$do;

    iget-object p1, p1, Lcom/apk/hp$do;->do:Lcom/apk/lp;

    .line 3
    iget-object p1, p1, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/apk/xo;

    invoke-static {p1}, Lcom/apk/wr;->for(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/apk/xo;-><init>([B)V

    return-object p2
.end method
