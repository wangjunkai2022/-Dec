.class public Lcom/apk/ye0;
.super Ljava/lang/Object;
.source "AESEngine.java"


# static fields
.field public static final else:[B

.field public static final goto:[I

.field public static final this:[I


# instance fields
.field public case:I

.field public do:I

.field public for:I

.field public if:[[I

.field public new:I

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/apk/ye0;->else:[B

    const/16 v1, 0x1e

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/apk/ye0;->goto:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/apk/ye0;->this:[I

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_2
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.96327264E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.07899912E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/ye0;->if:[[I

    .line 3
    array-length v0, p1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_5

    :cond_0
    mul-int/lit8 v4, v0, 0x4

    .line 4
    array-length v5, p1

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v0, 0x6

    .line 5
    iput v4, p0, Lcom/apk/ye0;->do:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v1, v7, v5

    const/4 v8, 0x0

    aput v4, v7, v8

    .line 6
    const-class v4, I

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    const/4 v7, 0x0

    .line 7
    :goto_0
    array-length v9, p1

    if-ge v8, v9, :cond_1

    shr-int/lit8 v9, v7, 0x2

    .line 8
    aget-object v9, v4, v9

    and-int/lit8 v10, v7, 0x3

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v2

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x3

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    aput v11, v9, v10

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v5

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lcom/apk/ye0;->do:I

    add-int/2addr p1, v5

    shl-int/2addr p1, v6

    move v6, v0

    :goto_1
    if-ge v6, p1, :cond_4

    add-int/lit8 v7, v6, -0x1

    shr-int/lit8 v8, v7, 0x2

    .line 10
    aget-object v8, v4, v8

    and-int/lit8 v7, v7, 0x3

    aget v7, v8, v7

    .line 11
    rem-int v8, v6, v0

    if-nez v8, :cond_2

    .line 12
    invoke-virtual {p0, v7, v2}, Lcom/apk/ye0;->if(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/apk/ye0;->for(I)I

    move-result v7

    sget-object v8, Lcom/apk/ye0;->goto:[I

    div-int v9, v6, v0

    sub-int/2addr v9, v5

    aget v8, v8, v9

    xor-int/2addr v7, v8

    goto :goto_2

    :cond_2
    if-le v0, v3, :cond_3

    if-ne v8, v1, :cond_3

    .line 13
    invoke-virtual {p0, v7}, Lcom/apk/ye0;->for(I)I

    move-result v7

    :cond_3
    :goto_2
    shr-int/lit8 v8, v6, 0x2

    .line 14
    aget-object v8, v4, v8

    and-int/lit8 v9, v6, 0x3

    sub-int v10, v6, v0

    shr-int/lit8 v11, v10, 0x2

    aget-object v11, v4, v11

    and-int/lit8 v10, v10, 0x3

    aget v10, v11, v10

    xor-int/2addr v7, v10

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_4
    iput-object v4, p0, Lcom/apk/ye0;->if:[[I

    return-void

    .line 16
    :cond_5
    new-instance p1, Lcom/apk/af0;

    const-string v0, "invalid key length (not 128/192/256)"

    invoke-direct {p1, v0}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do([B[B)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/apk/ye0;->if:[[I

    if-eqz v3, :cond_3

    .line 2
    array-length v4, v1

    const/16 v5, 0x10

    if-gt v5, v4, :cond_2

    .line 3
    array-length v4, v2

    if-gt v5, v4, :cond_1

    const/4 v4, 0x0

    .line 4
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    iput v6, v0, Lcom/apk/ye0;->for:I

    const/4 v7, 0x1

    .line 5
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    iput v6, v0, Lcom/apk/ye0;->for:I

    const/4 v8, 0x2

    .line 6
    aget-byte v10, v1, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    or-int/2addr v6, v10

    iput v6, v0, Lcom/apk/ye0;->for:I

    const/4 v10, 0x4

    const/4 v11, 0x3

    .line 7
    aget-byte v12, v1, v11

    const/16 v13, 0x18

    shl-int/2addr v12, v13

    or-int/2addr v6, v12

    iput v6, v0, Lcom/apk/ye0;->for:I

    const/4 v12, 0x5

    .line 8
    aget-byte v14, v1, v10

    and-int/lit16 v14, v14, 0xff

    iput v14, v0, Lcom/apk/ye0;->new:I

    const/4 v15, 0x6

    .line 9
    aget-byte v10, v1, v12

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v9

    or-int/2addr v10, v14

    iput v10, v0, Lcom/apk/ye0;->new:I

    const/4 v14, 0x7

    .line 10
    aget-byte v12, v1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    or-int/2addr v10, v12

    iput v10, v0, Lcom/apk/ye0;->new:I

    .line 11
    aget-byte v12, v1, v14

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    iput v10, v0, Lcom/apk/ye0;->new:I

    const/16 v12, 0x9

    .line 12
    aget-byte v14, v1, v9

    and-int/lit16 v14, v14, 0xff

    iput v14, v0, Lcom/apk/ye0;->try:I

    const/16 v16, 0xa

    .line 13
    aget-byte v15, v1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v9

    or-int/2addr v14, v15

    iput v14, v0, Lcom/apk/ye0;->try:I

    const/16 v15, 0xb

    .line 14
    aget-byte v12, v1, v16

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    or-int/2addr v12, v14

    iput v12, v0, Lcom/apk/ye0;->try:I

    const/16 v14, 0xc

    .line 15
    aget-byte v17, v1, v15

    shl-int/lit8 v17, v17, 0x18

    or-int v12, v12, v17

    iput v12, v0, Lcom/apk/ye0;->try:I

    const/16 v17, 0xd

    .line 16
    aget-byte v15, v1, v14

    and-int/lit16 v15, v15, 0xff

    iput v15, v0, Lcom/apk/ye0;->case:I

    const/16 v18, 0xe

    .line 17
    aget-byte v14, v1, v17

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v9

    or-int/2addr v14, v15

    iput v14, v0, Lcom/apk/ye0;->case:I

    const/16 v15, 0xf

    .line 18
    aget-byte v9, v1, v18

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    or-int/2addr v9, v14

    iput v9, v0, Lcom/apk/ye0;->case:I

    .line 19
    aget-byte v1, v1, v15

    shl-int/2addr v1, v13

    or-int/2addr v1, v9

    iput v1, v0, Lcom/apk/ye0;->case:I

    .line 20
    aget-object v9, v3, v4

    aget v9, v9, v4

    xor-int/2addr v6, v9

    iput v6, v0, Lcom/apk/ye0;->for:I

    .line 21
    aget-object v6, v3, v4

    aget v6, v6, v7

    xor-int/2addr v6, v10

    iput v6, v0, Lcom/apk/ye0;->new:I

    .line 22
    aget-object v6, v3, v4

    aget v6, v6, v8

    xor-int/2addr v6, v12

    iput v6, v0, Lcom/apk/ye0;->try:I

    .line 23
    aget-object v6, v3, v4

    aget v6, v6, v11

    xor-int/2addr v1, v6

    iput v1, v0, Lcom/apk/ye0;->case:I

    const/4 v1, 0x1

    .line 24
    :goto_0
    iget v6, v0, Lcom/apk/ye0;->do:I

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_0

    .line 25
    sget-object v6, Lcom/apk/ye0;->this:[I

    iget v9, v0, Lcom/apk/ye0;->for:I

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    iget v10, v0, Lcom/apk/ye0;->new:I

    const/16 v12, 0x8

    shr-int/2addr v10, v12

    and-int/lit16 v10, v10, 0xff

    aget v6, v6, v10

    invoke-virtual {v0, v6, v13}, Lcom/apk/ye0;->if(II)I

    move-result v6

    xor-int/2addr v6, v9

    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v10, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v10, v5

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    invoke-virtual {v0, v9, v5}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v6, v9

    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v10, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v6, v9

    aget-object v9, v3, v1

    aget v9, v9, v4

    xor-int/2addr v6, v9

    .line 26
    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->new:I

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    iget v14, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v14, v10

    and-int/lit16 v10, v14, 0xff

    aget v9, v9, v10

    invoke-virtual {v0, v9, v13}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v9, v12

    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v12, v5

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    invoke-virtual {v0, v10, v5}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v12, 0x8

    invoke-virtual {v0, v10, v12}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, v3, v1

    aget v10, v10, v7

    xor-int/2addr v9, v10

    .line 27
    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->try:I

    and-int/lit16 v14, v14, 0xff

    aget v14, v10, v14

    iget v15, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v15, v12

    and-int/lit16 v12, v15, 0xff

    aget v10, v10, v12

    invoke-virtual {v0, v10, v13}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v10, v14

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v14, v5

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    invoke-virtual {v0, v12, v5}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->new:I

    shr-int/2addr v14, v13

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v0, v12, v14}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v10, v12

    aget-object v12, v3, v1

    aget v12, v12, v8

    xor-int/2addr v10, v12

    .line 28
    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v15, v0, Lcom/apk/ye0;->case:I

    and-int/lit16 v15, v15, 0xff

    aget v15, v12, v15

    iget v8, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    aget v8, v12, v8

    invoke-virtual {v0, v8, v13}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v8, v15

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->new:I

    shr-int/2addr v14, v5

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    invoke-virtual {v0, v12, v5}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v8, v12

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v14, v13

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v0, v12, v14}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v8, v12

    add-int/lit8 v12, v1, 0x1

    aget-object v1, v3, v1

    aget v1, v1, v11

    xor-int/2addr v1, v8

    .line 29
    sget-object v8, Lcom/apk/ye0;->this:[I

    and-int/lit16 v14, v6, 0xff

    aget v14, v8, v14

    shr-int/lit8 v15, v9, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v8, v8, v15

    invoke-virtual {v0, v8, v13}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-virtual {v0, v14, v5}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-virtual {v0, v14, v15}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    aget-object v14, v3, v12

    aget v14, v14, v4

    xor-int/2addr v8, v14

    iput v8, v0, Lcom/apk/ye0;->for:I

    .line 30
    sget-object v8, Lcom/apk/ye0;->this:[I

    and-int/lit16 v14, v9, 0xff

    aget v14, v8, v14

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v8, v8, v15

    invoke-virtual {v0, v8, v13}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-virtual {v0, v14, v5}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v6, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-virtual {v0, v14, v15}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    aget-object v14, v3, v12

    aget v14, v14, v7

    xor-int/2addr v8, v14

    iput v8, v0, Lcom/apk/ye0;->new:I

    .line 31
    sget-object v8, Lcom/apk/ye0;->this:[I

    and-int/lit16 v14, v10, 0xff

    aget v14, v8, v14

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v8, v8, v15

    invoke-virtual {v0, v8, v13}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v6, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    invoke-virtual {v0, v14, v5}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    sget-object v14, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v15, v9, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-virtual {v0, v14, v15}, Lcom/apk/ye0;->if(II)I

    move-result v14

    xor-int/2addr v8, v14

    aget-object v14, v3, v12

    const/16 v19, 0x2

    aget v14, v14, v19

    xor-int/2addr v8, v14

    iput v8, v0, Lcom/apk/ye0;->try:I

    .line 32
    sget-object v8, Lcom/apk/ye0;->this:[I

    and-int/lit16 v1, v1, 0xff

    aget v1, v8, v1

    shr-int/2addr v6, v15

    and-int/lit16 v6, v6, 0xff

    aget v6, v8, v6

    invoke-virtual {v0, v6, v13}, Lcom/apk/ye0;->if(II)I

    move-result v6

    xor-int/2addr v1, v6

    sget-object v6, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v8, v9, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    invoke-virtual {v0, v6, v5}, Lcom/apk/ye0;->if(II)I

    move-result v6

    xor-int/2addr v1, v6

    sget-object v6, Lcom/apk/ye0;->this:[I

    shr-int/lit8 v8, v10, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    const/16 v8, 0x8

    invoke-virtual {v0, v6, v8}, Lcom/apk/ye0;->if(II)I

    move-result v6

    xor-int/2addr v1, v6

    add-int/lit8 v6, v12, 0x1

    aget-object v8, v3, v12

    aget v8, v8, v11

    xor-int/2addr v1, v8

    iput v1, v0, Lcom/apk/ye0;->case:I

    move v1, v6

    const/4 v8, 0x2

    const/16 v15, 0xf

    goto/16 :goto_0

    .line 33
    :cond_0
    sget-object v6, Lcom/apk/ye0;->this:[I

    iget v8, v0, Lcom/apk/ye0;->for:I

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    iget v9, v0, Lcom/apk/ye0;->new:I

    const/16 v10, 0x8

    shr-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v6, v6, v9

    invoke-virtual {v0, v6, v13}, Lcom/apk/ye0;->if(II)I

    move-result v6

    xor-int/2addr v6, v8

    sget-object v8, Lcom/apk/ye0;->this:[I

    iget v9, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v9, v5

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    invoke-virtual {v0, v8, v5}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v6, v8

    sget-object v8, Lcom/apk/ye0;->this:[I

    iget v9, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v9, v13

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    const/16 v9, 0x8

    invoke-virtual {v0, v8, v9}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v6, v8

    aget-object v8, v3, v1

    aget v8, v8, v4

    xor-int/2addr v6, v8

    .line 34
    sget-object v8, Lcom/apk/ye0;->this:[I

    iget v10, v0, Lcom/apk/ye0;->new:I

    and-int/lit16 v10, v10, 0xff

    aget v10, v8, v10

    iget v12, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v12, v9

    and-int/lit16 v9, v12, 0xff

    aget v8, v8, v9

    invoke-virtual {v0, v8, v13}, Lcom/apk/ye0;->if(II)I

    move-result v8

    xor-int/2addr v8, v10

    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v10, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v10, v5

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    invoke-virtual {v0, v9, v5}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v8, v9

    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v10, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v8, v9

    aget-object v9, v3, v1

    aget v9, v9, v7

    xor-int/2addr v8, v9

    .line 35
    sget-object v9, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->try:I

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    iget v14, v0, Lcom/apk/ye0;->case:I

    shr-int/2addr v14, v10

    and-int/lit16 v10, v14, 0xff

    aget v9, v9, v10

    invoke-virtual {v0, v9, v13}, Lcom/apk/ye0;->if(II)I

    move-result v9

    xor-int/2addr v9, v12

    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v12, v5

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    invoke-virtual {v0, v10, v5}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v12, v0, Lcom/apk/ye0;->new:I

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v12, 0x8

    invoke-virtual {v0, v10, v12}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, v3, v1

    const/4 v14, 0x2

    aget v10, v10, v14

    xor-int/2addr v9, v10

    .line 36
    sget-object v10, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->case:I

    and-int/lit16 v14, v14, 0xff

    aget v14, v10, v14

    iget v15, v0, Lcom/apk/ye0;->for:I

    shr-int/2addr v15, v12

    and-int/lit16 v12, v15, 0xff

    aget v10, v10, v12

    invoke-virtual {v0, v10, v13}, Lcom/apk/ye0;->if(II)I

    move-result v10

    xor-int/2addr v10, v14

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->new:I

    shr-int/2addr v14, v5

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    invoke-virtual {v0, v12, v5}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/apk/ye0;->this:[I

    iget v14, v0, Lcom/apk/ye0;->try:I

    shr-int/2addr v14, v13

    and-int/lit16 v14, v14, 0xff

    aget v12, v12, v14

    const/16 v14, 0x8

    invoke-virtual {v0, v12, v14}, Lcom/apk/ye0;->if(II)I

    move-result v12

    xor-int/2addr v10, v12

    add-int/lit8 v12, v1, 0x1

    aget-object v1, v3, v1

    aget v1, v1, v11

    xor-int/2addr v1, v10

    .line 37
    sget-object v10, Lcom/apk/ye0;->else:[B

    and-int/lit16 v14, v6, 0xff

    aget-byte v14, v10, v14

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v15, v15, 0x8

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    shl-int/2addr v15, v13

    xor-int/2addr v14, v15

    aget-object v15, v3, v12

    aget v15, v15, v4

    xor-int/2addr v14, v15

    iput v14, v0, Lcom/apk/ye0;->for:I

    and-int/lit16 v15, v8, 0xff

    .line 38
    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v9, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v4, v15

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    xor-int/2addr v4, v15

    shr-int/lit8 v15, v6, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    shl-int/2addr v15, v13

    xor-int/2addr v4, v15

    aget-object v15, v3, v12

    aget v15, v15, v7

    xor-int/2addr v4, v15

    iput v4, v0, Lcom/apk/ye0;->new:I

    and-int/lit16 v15, v9, 0xff

    .line 39
    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v7, v15

    shr-int/lit8 v15, v6, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    xor-int/2addr v7, v15

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v10, v15

    shl-int/2addr v15, v13

    xor-int/2addr v7, v15

    aget-object v15, v3, v12

    const/16 v20, 0x2

    aget v15, v15, v20

    xor-int/2addr v7, v15

    iput v7, v0, Lcom/apk/ye0;->try:I

    and-int/lit16 v1, v1, 0xff

    .line 40
    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v15, 0x8

    shr-int/2addr v6, v15

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v15

    xor-int/2addr v1, v6

    shr-int/lit8 v6, v8, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v5

    xor-int/2addr v1, v6

    shr-int/lit8 v6, v9, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v10, v6

    shl-int/2addr v6, v13

    xor-int/2addr v1, v6

    aget-object v3, v3, v12

    aget v3, v3, v11

    xor-int/2addr v1, v3

    iput v1, v0, Lcom/apk/ye0;->case:I

    int-to-byte v3, v14

    const/4 v6, 0x0

    .line 41
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v14, 0x8

    int-to-byte v3, v3

    const/4 v6, 0x1

    .line 42
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v14, 0x10

    int-to-byte v3, v3

    const/4 v6, 0x2

    .line 43
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v14, 0x18

    int-to-byte v3, v3

    .line 44
    aput-byte v3, v2, v11

    int-to-byte v3, v4

    const/4 v6, 0x4

    .line 45
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    const/4 v6, 0x5

    .line 46
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    const/4 v6, 0x6

    .line 47
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x7

    .line 48
    aput-byte v3, v2, v4

    int-to-byte v3, v7

    const/16 v4, 0x8

    .line 49
    aput-byte v3, v2, v4

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x9

    .line 50
    aput-byte v3, v2, v4

    shr-int/lit8 v3, v7, 0x10

    int-to-byte v3, v3

    .line 51
    aput-byte v3, v2, v16

    shr-int/lit8 v3, v7, 0x18

    int-to-byte v3, v3

    const/16 v4, 0xb

    .line 52
    aput-byte v3, v2, v4

    int-to-byte v3, v1

    const/16 v4, 0xc

    .line 53
    aput-byte v3, v2, v4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 54
    aput-byte v3, v2, v17

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    .line 55
    aput-byte v3, v2, v18

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    const/16 v3, 0xf

    .line 56
    aput-byte v1, v2, v3

    return v5

    .line 57
    :cond_1
    new-instance v1, Lcom/apk/af0;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    new-instance v1, Lcom/apk/af0;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_3
    new-instance v1, Lcom/apk/af0;

    const-string v2, "AES engine not initialised"

    invoke-direct {v1, v2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final for(I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/ye0;->else:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method public final if(II)I
    .locals 1

    ushr-int v0, p1, p2

    neg-int p2, p2

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method
