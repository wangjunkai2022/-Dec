.class public Lcom/baidu/tts/tools/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES_cbc_decrypt([B[B[B)[B
    .locals 3

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 4
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static AES_cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "AES/CBC/PKCS5Padding"

    const-string v1, "utf-8"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    .line 2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonUtility;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)[I
    .locals 5

    .line 1
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    :goto_1
    if-lez v2, :cond_0

    .line 3
    aget-byte v3, p0, v2

    aget-byte v4, p0, v1

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 4
    aget v2, v0, v2

    goto :goto_1

    .line 5
    :cond_0
    aget-byte v3, p0, v2

    aget-byte v4, p0, v1

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6
    :cond_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static addCAFHeaderForPCMData([B)[B
    .locals 17

    move-object/from16 v0, p0

    if-eqz v0, :cond_1

    .line 1
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    array-length v1, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x2c

    add-long/2addr v3, v1

    const-wide/16 v5, 0x10

    mul-long v5, v5, v3

    const/4 v7, 0x1

    int-to-long v8, v7

    mul-long v5, v5, v8

    const-wide/16 v8, 0x8

    .line 3
    div-long/2addr v5, v8

    const/16 v8, 0x2c

    new-array v9, v8, [B

    const/16 v10, 0x52

    const/4 v11, 0x0

    aput-byte v10, v9, v11

    const/16 v10, 0x49

    aput-byte v10, v9, v7

    const/4 v10, 0x2

    const/16 v12, 0x46

    aput-byte v12, v9, v10

    const/4 v13, 0x3

    aput-byte v12, v9, v13

    const/4 v12, 0x4

    const-wide/16 v13, 0xff

    and-long v7, v3, v13

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v9, v12

    const/4 v7, 0x5

    const/16 v8, 0x8

    shr-long v15, v3, v8

    and-long v10, v15, v13

    long-to-int v11, v10

    int-to-byte v10, v11

    aput-byte v10, v9, v7

    const/4 v7, 0x6

    const/16 v10, 0x10

    shr-long v15, v3, v10

    and-long v10, v15, v13

    long-to-int v11, v10

    int-to-byte v10, v11

    aput-byte v10, v9, v7

    const/4 v7, 0x7

    const/16 v10, 0x18

    shr-long/2addr v3, v10

    and-long/2addr v3, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v9, v7

    const/16 v3, 0x57

    aput-byte v3, v9, v8

    const/16 v3, 0x9

    const/16 v4, 0x41

    aput-byte v4, v9, v3

    const/16 v3, 0xa

    const/16 v4, 0x56

    aput-byte v4, v9, v3

    const/16 v3, 0xb

    const/16 v4, 0x45

    aput-byte v4, v9, v3

    const/16 v3, 0xc

    const/16 v4, 0x66

    aput-byte v4, v9, v3

    const/16 v3, 0xd

    const/16 v4, 0x6d

    aput-byte v4, v9, v3

    const/16 v3, 0xe

    const/16 v4, 0x74

    aput-byte v4, v9, v3

    const/16 v3, 0xf

    const/16 v7, 0x20

    aput-byte v7, v9, v3

    const/16 v3, 0x10

    aput-byte v3, v9, v3

    const/16 v3, 0x11

    const/4 v11, 0x0

    aput-byte v11, v9, v3

    const/16 v3, 0x12

    aput-byte v11, v9, v3

    const/16 v3, 0x13

    aput-byte v11, v9, v3

    const/16 v3, 0x14

    const/4 v12, 0x1

    aput-byte v12, v9, v3

    const/16 v3, 0x15

    aput-byte v11, v9, v3

    const/16 v3, 0x16

    int-to-byte v12, v12

    aput-byte v12, v9, v3

    const/16 v3, 0x17

    aput-byte v11, v9, v3

    const-wide/16 v7, 0x80

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v9, v10

    const/16 v7, 0x19

    const-wide/16 v11, 0x3e

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v7

    const/16 v7, 0x1a

    const-wide/16 v11, 0x0

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v9, v7

    const/16 v3, 0x1b

    long-to-int v7, v11

    int-to-byte v7, v7

    aput-byte v7, v9, v3

    const/16 v3, 0x1c

    and-long v11, v5, v13

    long-to-int v7, v11

    int-to-byte v7, v7

    aput-byte v7, v9, v3

    const/16 v7, 0x1d

    const/16 v3, 0x8

    shr-long v11, v5, v3

    and-long/2addr v11, v13

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v7

    const/16 v7, 0x1e

    const/16 v11, 0x10

    shr-long v15, v5, v11

    and-long v11, v15, v13

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v7

    const/16 v7, 0x1f

    shr-long/2addr v5, v10

    and-long/2addr v5, v13

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v9, v7

    const/16 v5, 0x20

    const/4 v6, 0x2

    aput-byte v6, v9, v5

    const/16 v5, 0x21

    const/4 v6, 0x0

    aput-byte v6, v9, v5

    const/16 v5, 0x22

    const/16 v7, 0x10

    aput-byte v7, v9, v5

    const/16 v5, 0x23

    aput-byte v6, v9, v5

    const/16 v5, 0x24

    const/16 v6, 0x64

    aput-byte v6, v9, v5

    const/16 v5, 0x25

    const/16 v6, 0x61

    aput-byte v6, v9, v5

    const/16 v5, 0x26

    aput-byte v4, v9, v5

    const/16 v4, 0x27

    aput-byte v6, v9, v4

    const/16 v4, 0x28

    and-long v5, v1, v13

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v9, v4

    const/16 v4, 0x29

    const/16 v3, 0x8

    shr-long v5, v1, v3

    and-long/2addr v5, v13

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v9, v4

    const/16 v3, 0x2a

    const/16 v4, 0x10

    shr-long v4, v1, v4

    and-long/2addr v4, v13

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v9, v3

    const/16 v3, 0x2b

    shr-long/2addr v1, v10

    and-long/2addr v1, v13

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v9, v3

    .line 4
    array-length v1, v0

    const/16 v2, 0x2c

    add-int v8, v2, v1

    new-array v1, v8, [B

    const/4 v3, 0x0

    .line 5
    invoke-static {v9, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static copyBytesOfRange([BII)[B
    .locals 4

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    .line 1
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p2, p1

    .line 2
    new-array v0, v0, [B

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    sub-int v2, v1, p1

    .line 3
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf([B[BI)I
    .locals 5

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/baidu/tts/tools/CommonUtility;->a([B)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    array-length v3, p0

    if-nez v3, :cond_0

    return v0

    .line 3
    :cond_0
    array-length v3, p0

    if-lt p2, v3, :cond_1

    return v0

    .line 4
    :cond_1
    :goto_0
    array-length v3, p0

    if-ge p2, v3, :cond_5

    :goto_1
    if-lez v2, :cond_2

    .line 5
    aget-byte v3, p1, v2

    aget-byte v4, p0, p2

    if-eq v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 6
    aget v2, v1, v2

    goto :goto_1

    .line 7
    :cond_2
    aget-byte v3, p1, v2

    aget-byte v4, p0, p2

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_3
    array-length v3, p1

    if-ne v2, v3, :cond_4

    .line 9
    array-length p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonUtility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonUtility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 6
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static shortArrayToByteArray([S)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 5
    aget-short v4, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
