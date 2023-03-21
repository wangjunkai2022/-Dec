.class public Lcom/apk/fp;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lcom/apk/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fp$if;,
        Lcom/apk/fp$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/oj<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/apk/hp;",
        ">;"
    }
.end annotation


# static fields
.field public static final case:Lcom/apk/fp$do;

.field public static final else:Lcom/apk/fp$if;


# instance fields
.field public final do:Landroid/content/Context;

.field public final for:Lcom/apk/fp$if;

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Lcom/apk/fp$do;

.field public final try:Lcom/apk/gp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/fp$do;

    invoke-direct {v0}, Lcom/apk/fp$do;-><init>()V

    sput-object v0, Lcom/apk/fp;->case:Lcom/apk/fp$do;

    .line 2
    new-instance v0, Lcom/apk/fp$if;

    invoke-direct {v0}, Lcom/apk/fp$if;-><init>()V

    sput-object v0, Lcom/apk/fp;->else:Lcom/apk/fp$if;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/apk/pl;Lcom/apk/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/apk/pl;",
            "Lcom/apk/nl;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/fp;->else:Lcom/apk/fp$if;

    sget-object v1, Lcom/apk/fp;->case:Lcom/apk/fp$do;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/fp;->do:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/apk/fp;->if:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lcom/apk/fp;->new:Lcom/apk/fp$do;

    .line 6
    new-instance p1, Lcom/apk/gp;

    invoke-direct {p1, p3, p4}, Lcom/apk/gp;-><init>(Lcom/apk/pl;Lcom/apk/nl;)V

    iput-object p1, p0, Lcom/apk/fp;->try:Lcom/apk/gp;

    .line 7
    iput-object v0, p0, Lcom/apk/fp;->for:Lcom/apk/fp$if;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Lcom/apk/mj;)Z
    .locals 1
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
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lcom/apk/np;->if:Lcom/apk/lj;

    invoke-virtual {p2, v0}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apk/fp;->if:Ljava/util/List;

    .line 3
    invoke-static {p2, p1}, Lcom/apk/ij;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final for(Ljava/nio/ByteBuffer;IILcom/apk/xi;Lcom/apk/mj;)Lcom/apk/jp;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BufferGifDecoder"

    .line 1
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v3

    const/4 v5, 0x2

    .line 2
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/apk/xi;->if()Lcom/apk/wi;

    move-result-object v0

    .line 3
    iget v6, v0, Lcom/apk/wi;->for:I

    const/4 v7, 0x0

    if-lez v6, :cond_7

    .line 4
    iget v6, v0, Lcom/apk/wi;->if:I

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    sget-object v6, Lcom/apk/np;->do:Lcom/apk/lj;

    move-object/from16 v8, p5

    invoke-virtual {v8, v6}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/apk/ej;->if:Lcom/apk/ej;

    if-ne v6, v8, :cond_1

    .line 6
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    :goto_0
    iget v8, v0, Lcom/apk/wi;->else:I

    .line 9
    div-int v8, v8, p3

    .line 10
    iget v9, v0, Lcom/apk/wi;->case:I

    .line 11
    div-int v9, v9, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_1
    const/4 v9, 0x1

    .line 13
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 14
    iget-object v10, v1, Lcom/apk/fp;->new:Lcom/apk/fp$do;

    iget-object v11, v1, Lcom/apk/fp;->try:Lcom/apk/gp;

    if-eqz v10, :cond_6

    .line 15
    new-instance v12, Lcom/apk/yi;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v0, v10, v8}, Lcom/apk/yi;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$do;Lcom/apk/wi;Ljava/nio/ByteBuffer;I)V

    .line 16
    invoke-virtual {v12, v6}, Lcom/apk/yi;->this(Landroid/graphics/Bitmap$Config;)V

    .line 17
    iget v0, v12, Lcom/apk/yi;->catch:I

    add-int/2addr v0, v9

    iget-object v6, v12, Lcom/apk/yi;->class:Lcom/apk/wi;

    iget v6, v6, Lcom/apk/wi;->for:I

    rem-int/2addr v0, v6

    iput v0, v12, Lcom/apk/yi;->catch:I

    .line 18
    invoke-virtual {v12}, Lcom/apk/yi;->do()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_4

    .line 19
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-static {v3, v4}, Lcom/apk/cs;->do(J)D

    :cond_3
    return-object v7

    .line 21
    :cond_4
    :try_start_1
    sget-object v0, Lcom/apk/qn;->if:Lcom/apk/qj;

    check-cast v0, Lcom/apk/qn;

    .line 22
    new-instance v6, Lcom/apk/hp;

    iget-object v10, v1, Lcom/apk/fp;->do:Landroid/content/Context;

    move-object v9, v6

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/apk/hp;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/apk/qj;IILandroid/graphics/Bitmap;)V

    .line 23
    new-instance v0, Lcom/apk/jp;

    invoke-direct {v0, v6}, Lcom/apk/jp;-><init>(Lcom/apk/hp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25
    invoke-static {v3, v4}, Lcom/apk/cs;->do(J)D

    :cond_5
    return-object v0

    .line 26
    :cond_6
    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_7
    :goto_2
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-static {v3, v4}, Lcom/apk/cs;->do(J)D

    :cond_8
    return-object v7

    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 30
    invoke-static {v3, v4}, Lcom/apk/cs;->do(J)D

    :cond_9
    throw v0
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/gl;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lcom/apk/fp;->for:Lcom/apk/fp$if;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/apk/fp$if;->do:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/xi;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/apk/xi;

    invoke-direct {v0}, Lcom/apk/xi;-><init>()V

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    .line 6
    iput-object v0, v6, Lcom/apk/xi;->if:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, v6, Lcom/apk/xi;->do:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    new-instance v0, Lcom/apk/wi;

    invoke-direct {v0}, Lcom/apk/wi;-><init>()V

    iput-object v0, v6, Lcom/apk/xi;->for:Lcom/apk/wi;

    .line 9
    iput v2, v6, Lcom/apk/xi;->new:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Lcom/apk/xi;->if:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, v6, Lcom/apk/xi;->if:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 14
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/apk/fp;->for(Ljava/nio/ByteBuffer;IILcom/apk/xi;Lcom/apk/mj;)Lcom/apk/jp;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object p2, p0, Lcom/apk/fp;->for:Lcom/apk/fp$if;

    invoke-virtual {p2, v6}, Lcom/apk/fp$if;->do(Lcom/apk/xi;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/apk/fp;->for:Lcom/apk/fp$if;

    invoke-virtual {p2, v6}, Lcom/apk/fp$if;->do(Lcom/apk/xi;)V

    throw p1

    :catchall_1
    move-exception p2

    .line 16
    monitor-exit p1

    throw p2
.end method
