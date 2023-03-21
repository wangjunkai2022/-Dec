.class public Lcom/apk/se0;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lcom/apk/te0;


# instance fields
.field public break:[B

.field public case:I

.field public catch:I

.field public class:[B

.field public const:[B

.field public do:Lcom/apk/jf0;

.field public else:[B

.field public final:I

.field public for:Lcom/apk/ue0;

.field public goto:[B

.field public if:Lcom/apk/ye0;

.field public new:I

.field public this:[B

.field public try:I


# direct methods
.method public constructor <init>(Lcom/apk/jf0;[B[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/apk/se0;->catch:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/apk/se0;->final:I

    if-eqz p1, :cond_8

    .line 4
    iput-object p1, p0, Lcom/apk/se0;->do:Lcom/apk/jf0;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/apk/se0;->break:[B

    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 6
    iput-object v3, p0, Lcom/apk/se0;->class:[B

    new-array v3, v2, [B

    .line 7
    iput-object v3, p0, Lcom/apk/se0;->const:[B

    const-string v3, "HmacSHA1"

    .line 8
    iget-object p1, p1, Lcom/apk/jf0;->class:Lcom/apk/ef0;

    if-eqz p1, :cond_7

    .line 9
    iget p1, p1, Lcom/apk/ef0;->do:I

    const/4 v4, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20

    .line 10
    iput p1, p0, Lcom/apk/se0;->new:I

    .line 11
    iput p1, p0, Lcom/apk/se0;->try:I

    .line 12
    iput v2, p0, Lcom/apk/se0;->case:I

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/apk/af0;

    const-string p2, "invalid aes key strength for file: "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/apk/se0;->do:Lcom/apk/jf0;

    .line 14
    iget-object p3, p3, Lcom/apk/jf0;->case:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x18

    .line 16
    iput p1, p0, Lcom/apk/se0;->new:I

    .line 17
    iput p1, p0, Lcom/apk/se0;->try:I

    const/16 p1, 0xc

    .line 18
    iput p1, p0, Lcom/apk/se0;->case:I

    goto :goto_0

    .line 19
    :cond_2
    iput v2, p0, Lcom/apk/se0;->new:I

    .line 20
    iput v2, p0, Lcom/apk/se0;->try:I

    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lcom/apk/se0;->case:I

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/apk/se0;->do:Lcom/apk/jf0;

    .line 23
    iget-object p1, p1, Lcom/apk/jf0;->break:[C

    if-eqz p1, :cond_6

    .line 24
    array-length v0, p1

    if-lez v0, :cond_6

    .line 25
    :try_start_0
    new-instance v0, Lcom/apk/we0;

    const-string v2, "ISO-8859-1"

    const/16 v5, 0x3e8

    invoke-direct {v0, v3, v2, p2, v5}, Lcom/apk/we0;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 26
    new-instance p2, Lcom/apk/ve0;

    invoke-direct {p2, v0}, Lcom/apk/ve0;-><init>(Lcom/apk/we0;)V

    .line 27
    iget v0, p0, Lcom/apk/se0;->new:I

    iget v2, p0, Lcom/apk/se0;->try:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    invoke-virtual {p2, p1, v0}, Lcom/apk/ve0;->do([CI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    array-length p2, p1

    iget v0, p0, Lcom/apk/se0;->new:I

    iget v2, p0, Lcom/apk/se0;->try:I

    add-int v5, v0, v2

    add-int/2addr v5, v4

    if-ne p2, v5, :cond_5

    .line 29
    new-array p2, v0, [B

    iput-object p2, p0, Lcom/apk/se0;->else:[B

    .line 30
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/apk/se0;->goto:[B

    new-array v2, v4, [B

    .line 31
    iput-object v2, p0, Lcom/apk/se0;->this:[B

    .line 32
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget p2, p0, Lcom/apk/se0;->new:I

    iget-object v0, p0, Lcom/apk/se0;->goto:[B

    iget v2, p0, Lcom/apk/se0;->try:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget p2, p0, Lcom/apk/se0;->new:I

    iget v0, p0, Lcom/apk/se0;->try:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/apk/se0;->this:[B

    invoke-static {p1, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object p1, p0, Lcom/apk/se0;->this:[B

    if-eqz p1, :cond_4

    .line 36
    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 37
    new-instance p1, Lcom/apk/ye0;

    iget-object p2, p0, Lcom/apk/se0;->else:[B

    invoke-direct {p1, p2}, Lcom/apk/ye0;-><init>([B)V

    iput-object p1, p0, Lcom/apk/se0;->if:Lcom/apk/ye0;

    .line 38
    new-instance p1, Lcom/apk/ue0;

    invoke-direct {p1, v3}, Lcom/apk/ue0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apk/se0;->for:Lcom/apk/ue0;

    .line 39
    iget-object p2, p0, Lcom/apk/se0;->goto:[B

    .line 40
    :try_start_1
    iget-object p3, p1, Lcom/apk/ue0;->do:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p1, p1, Lcom/apk/ue0;->for:Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 42
    :cond_3
    new-instance p1, Lcom/apk/af0;

    const-string p2, "Wrong Password for file: "

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/apk/se0;->do:Lcom/apk/jf0;

    .line 43
    iget-object p3, p3, Lcom/apk/jf0;->case:Ljava/lang/String;

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, Lcom/apk/af0;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 45
    :cond_4
    new-instance p1, Lcom/apk/af0;

    const-string p2, "invalid derived password verifier for AES"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_5
    new-instance p1, Lcom/apk/af0;

    const-string p2, "invalid derived key"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 47
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 48
    :cond_6
    new-instance p1, Lcom/apk/af0;

    const-string p2, "empty or null password provided for AES Decryptor"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_7
    new-instance p1, Lcom/apk/af0;

    const-string p2, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_8
    new-instance p1, Lcom/apk/af0;

    const-string p2, "one of the input parameters is null in AESDecryptor Constructor"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/se0;->if:Lcom/apk/ye0;

    if-eqz v0, :cond_3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x10

    if-gt v2, v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v0

    .line 2
    :goto_1
    :try_start_0
    iput v1, p0, Lcom/apk/se0;->final:I

    .line 3
    iget-object v3, p0, Lcom/apk/se0;->for:Lcom/apk/ue0;

    invoke-virtual {v3, p1, v0, v1}, Lcom/apk/ue0;->update([BII)V

    .line 4
    iget-object v1, p0, Lcom/apk/se0;->class:[B

    iget v3, p0, Lcom/apk/se0;->catch:I

    invoke-static {v1, v3}, Lcom/apk/sb0;->e([BI)V

    .line 5
    iget-object v1, p0, Lcom/apk/se0;->if:Lcom/apk/ye0;

    iget-object v3, p0, Lcom/apk/se0;->class:[B

    iget-object v4, p0, Lcom/apk/se0;->const:[B

    invoke-virtual {v1, v3, v4}, Lcom/apk/ye0;->do([B[B)I

    const/4 v1, 0x0

    .line 6
    :goto_2
    iget v3, p0, Lcom/apk/se0;->final:I

    if-ge v1, v3, :cond_1

    add-int v3, v0, v1

    .line 7
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/apk/se0;->const:[B

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_1
    iget v0, p0, Lcom/apk/se0;->catch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apk/se0;->catch:I
    :try_end_0
    .catch Lcom/apk/af0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10
    throw p1

    :cond_2
    return p3

    .line 11
    :cond_3
    new-instance p1, Lcom/apk/af0;

    const-string p2, "AES not initialized properly"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
