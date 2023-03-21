.class public final Lcom/apk/bo;
.super Ljava/lang/Object;
.source "DefaultImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/bo$new;,
        Lcom/apk/bo$do;,
        Lcom/apk/bo$for;,
        Lcom/apk/bo$if;
    }
.end annotation


# static fields
.field public static final do:[B

.field public static final if:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/apk/bo;->do:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/apk/bo;->if:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getType(Lcom/apk/bo$for;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/apk/bo$for;->do()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 8
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 9
    invoke-interface {p1}, Lcom/apk/bo$for;->for()S

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x474946

    if-ne v0, v1, :cond_1

    .line 10
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    .line 11
    invoke-interface {p1}, Lcom/apk/bo$for;->for()S

    move-result v1

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x15

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/apk/bo$for;->skip(J)J
    :try_end_0
    .catch Lcom/apk/bo$for$do; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-interface {p1}, Lcom/apk/bo$for;->for()S

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    .line 14
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_1
    .catch Lcom/apk/bo$for$do; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p1

    .line 15
    :catch_0
    :try_start_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_3
    const v1, 0x52494646

    if-eq v0, v1, :cond_4

    .line 16
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_4
    const-wide/16 v0, 0x4

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/apk/bo$for;->skip(J)J

    .line 18
    invoke-interface {p1}, Lcom/apk/bo$for;->do()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p1}, Lcom/apk/bo$for;->do()I

    move-result v3

    or-int/2addr v2, v3

    const v3, 0x57454250

    if-eq v2, v3, :cond_5

    .line 19
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    .line 20
    :cond_5
    invoke-interface {p1}, Lcom/apk/bo$for;->do()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p1}, Lcom/apk/bo$for;->do()I

    move-result v3

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, -0x100

    const v4, 0x56503800

    if-eq v3, v4, :cond_6

    .line 21
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_6
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x58

    if-ne v2, v3, :cond_8

    .line 22
    invoke-interface {p1, v0, v1}, Lcom/apk/bo$for;->skip(J)J

    .line 23
    invoke-interface {p1}, Lcom/apk/bo$for;->for()S

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    .line 24
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_1
    return-object p1

    :cond_8
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_a

    .line 25
    invoke-interface {p1, v0, v1}, Lcom/apk/bo$for;->skip(J)J

    .line 26
    invoke-interface {p1}, Lcom/apk/bo$for;->for()S

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_9

    .line 27
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object p1

    .line 28
    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_2
    .catch Lcom/apk/bo$for$do; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 29
    :catch_1
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method


# virtual methods
.method public do(Ljava/io/InputStream;Lcom/apk/nl;)I
    .locals 6
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/nl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/bo$new;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lcom/apk/bo$new;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-static {p2, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, -0x1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/apk/bo$new;->do()I

    move-result v1

    const v2, 0xffd8

    and-int v3, v1, v2

    if-eq v3, v2, :cond_1

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4949

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/apk/bo$new;->for()S

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/apk/bo$new;->for()S

    move-result v1

    const/16 v2, 0xda

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0xd9

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v0}, Lcom/apk/bo$new;->do()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/16 v3, 0xe1

    if-eq v1, v3, :cond_6

    int-to-long v1, v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/apk/bo$new;->skip(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    :goto_2
    const/4 v2, -0x1

    :cond_6
    if-ne v2, p1, :cond_7

    goto :goto_3

    .line 10
    :cond_7
    const-class v1, [B

    invoke-interface {p2, v2, v1}, Lcom/apk/nl;->case(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Lcom/apk/bo$for$do; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/bo;->if(Lcom/apk/bo$for;[BI)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-interface {p2, v1}, Lcom/apk/nl;->put(Ljava/lang/Object;)V

    move p1, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {p2, v1}, Lcom/apk/nl;->put(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catch Lcom/apk/bo$for$do; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_3
    return p1
.end method

.method public getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/bo$new;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lcom/apk/bo$new;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/apk/bo;->getType(Lcom/apk/bo$for;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/apk/bo$do;

    const-string v1, "Argument must not be null"

    .line 5
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {v0, p1}, Lcom/apk/bo$do;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/apk/bo;->getType(Lcom/apk/bo$for;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final if(Lcom/apk/bo$for;[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/apk/bo$for;->if([BI)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2
    sget-object v2, Lcom/apk/bo;->do:[B

    array-length v2, v2

    if-le p3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 3
    :goto_1
    sget-object v4, Lcom/apk/bo;->do:[B

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 4
    aget-byte v5, p2, v3

    aget-byte v4, v4, v3

    if-eq v5, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_d

    .line 5
    new-instance v2, Lcom/apk/bo$if;

    invoke-direct {v2, p2, p3}, Lcom/apk/bo$if;-><init>([BI)V

    const/4 p2, 0x6

    .line 6
    invoke-virtual {v2, p2}, Lcom/apk/bo$if;->do(I)S

    move-result p3

    const/16 v3, 0x4949

    if-eq p3, v3, :cond_5

    const/16 v3, 0x4d4d

    if-eq p3, v3, :cond_4

    .line 7
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    .line 8
    :cond_4
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_3

    .line 9
    :cond_5
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    :goto_3
    iget-object v3, v2, Lcom/apk/bo$if;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 p3, 0xa

    .line 11
    invoke-virtual {v2, p3}, Lcom/apk/bo$if;->if(I)I

    move-result p3

    add-int/2addr p3, p2

    .line 12
    invoke-virtual {v2, p3}, Lcom/apk/bo$if;->do(I)S

    move-result p2

    :goto_4
    if-ge p1, p2, :cond_d

    add-int/lit8 v3, p3, 0x2

    mul-int/lit8 v4, p1, 0xc

    add-int/2addr v4, v3

    .line 13
    invoke-virtual {v2, v4}, Lcom/apk/bo$if;->do(I)S

    move-result v3

    const/16 v5, 0x112

    if-eq v3, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v4, 0x2

    .line 14
    invoke-virtual {v2, v3}, Lcom/apk/bo$if;->do(I)S

    move-result v3

    if-lt v3, v1, :cond_c

    const/16 v5, 0xc

    if-le v3, v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v4, 0x4

    .line 15
    invoke-virtual {v2, v5}, Lcom/apk/bo$if;->if(I)I

    move-result v5

    if-gez v5, :cond_8

    goto :goto_5

    .line 16
    :cond_8
    sget-object v6, Lcom/apk/bo;->if:[I

    aget v3, v6, v3

    add-int/2addr v5, v3

    const/4 v3, 0x4

    if-le v5, v3, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v4, 0x8

    if-ltz v4, :cond_c

    .line 17
    iget-object v3, v2, Lcom/apk/bo$if;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v4, v3, :cond_a

    goto :goto_5

    :cond_a
    if-ltz v5, :cond_c

    add-int/2addr v5, v4

    .line 18
    iget-object v3, v2, Lcom/apk/bo$if;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v5, v3, :cond_b

    goto :goto_5

    .line 19
    :cond_b
    invoke-virtual {v2, v4}, Lcom/apk/bo$if;->do(I)S

    move-result v0

    goto :goto_6

    :cond_c
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    return v0
.end method
