.class public final Lorg/litepal/util/cipher/AESCrypt;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# static fields
.field public static final AES_MODE:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static DEBUG_LOG_ENABLED:Z = false

.field public static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final TAG:Ljava/lang/String; = "AESCrypt"

.field public static final ivBytes:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/litepal/util/cipher/AESCrypt;->ivBytes:[B

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lorg/litepal/util/cipher/AESCrypt;->DEBUG_LOG_ENABLED:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    .line 2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 5
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 6
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/litepal/util/cipher/AESCrypt;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const-string v0, "base64EncodedCipherText"

    .line 2
    invoke-static {v0, p1}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decodedCipherText"

    .line 4
    invoke-static {v0, p1}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;[B)V

    .line 5
    sget-object v0, Lorg/litepal/util/cipher/AESCrypt;->ivBytes:[B

    invoke-static {p0, v0, p1}, Lorg/litepal/util/cipher/AESCrypt;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object p0

    const-string p1, "decryptedBytes"

    .line 6
    invoke-static {p1, p0}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;[B)V

    .line 7
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, "message"

    .line 8
    invoke-static {p0, p1}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 9
    sget-boolean p1, Lorg/litepal/util/cipher/AESCrypt;->DEBUG_LOG_ENABLED:Z

    .line 10
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 11
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 12
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x2

    .line 13
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 14
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string p1, "decryptedBytes"

    .line 15
    invoke-static {p1, p0}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/litepal/util/cipher/AESCrypt;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const-string v0, "message"

    .line 2
    invoke-static {v0, p1}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lorg/litepal/util/cipher/AESCrypt;->ivBytes:[B

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/litepal/util/cipher/AESCrypt;->encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 4
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Base64.NO_WRAP"

    .line 5
    invoke-static {p1, p0}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    sget-boolean p1, Lorg/litepal/util/cipher/AESCrypt;->DEBUG_LOG_ENABLED:Z

    .line 7
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 9
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 11
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string p1, "cipherText"

    .line 12
    invoke-static {p1, p0}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "SHA-256 key "

    .line 5
    invoke-static {v0, p0}, Lorg/litepal/util/cipher/AESCrypt;->log(Ljava/lang/String;[B)V

    .line 6
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    sget-boolean p0, Lorg/litepal/util/cipher/AESCrypt;->DEBUG_LOG_ENABLED:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    sget-boolean p0, Lorg/litepal/util/cipher/AESCrypt;->DEBUG_LOG_ENABLED:Z

    if-eqz p0, :cond_0

    .line 2
    array-length p0, p1

    invoke-static {p1}, Lorg/litepal/util/cipher/AESCrypt;->bytesToHex([B)Ljava/lang/String;

    :cond_0
    return-void
.end method
