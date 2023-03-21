.class public Lcom/apk/xe0;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lcom/apk/te0;


# instance fields
.field public do:Lcom/apk/if0;

.field public for:Lcom/apk/ze0;

.field public if:[B


# direct methods
.method public constructor <init>(Lcom/apk/if0;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/apk/xe0;->if:[B

    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/apk/xe0;->do:Lcom/apk/if0;

    .line 4
    new-instance p1, Lcom/apk/ze0;

    invoke-direct {p1}, Lcom/apk/ze0;-><init>()V

    iput-object p1, p0, Lcom/apk/xe0;->for:Lcom/apk/ze0;

    .line 5
    iget-object v0, p0, Lcom/apk/xe0;->do:Lcom/apk/if0;

    .line 6
    iget-object v1, v0, Lcom/apk/if0;->new:[B

    .line 7
    iget-object v2, p0, Lcom/apk/xe0;->if:[B

    const/4 v3, 0x3

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 8
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 9
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v2, v6

    .line 10
    aget-byte v1, v1, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    .line 11
    aget-byte v1, v2, v5

    if-gtz v1, :cond_4

    aget-byte v1, v2, v6

    if-gtz v1, :cond_4

    aget-byte v1, v2, v3

    if-gtz v1, :cond_4

    .line 12
    iget-object v0, v0, Lcom/apk/if0;->super:[C

    if-eqz v0, :cond_3

    .line 13
    array-length v1, v0

    if-lez v1, :cond_3

    .line 14
    iget-object v1, p1, Lcom/apk/ze0;->do:[I

    const v2, 0x12345678

    aput v2, v1, v3

    const v2, 0x23456789

    .line 15
    aput v2, v1, v6

    const v2, 0x34567890

    .line 16
    aput v2, v1, v5

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 18
    aget-char v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/apk/ze0;->do(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    aget-byte p1, p2, v3

    :cond_1
    :goto_1
    const/16 v0, 0xc

    if-ge v3, v0, :cond_2

    .line 20
    iget-object v1, p0, Lcom/apk/xe0;->for:Lcom/apk/ze0;

    iget-object v2, p0, Lcom/apk/xe0;->for:Lcom/apk/ze0;

    .line 21
    iget-object v2, v2, Lcom/apk/ze0;->do:[I

    aget v2, v2, v5

    or-int/2addr v2, v5

    xor-int/lit8 v4, v2, 0x1

    mul-int v2, v2, v4

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/apk/ze0;->do(B)V

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v0, :cond_1

    .line 23
    aget-byte p1, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_3
    new-instance p1, Lcom/apk/af0;

    const/4 p2, 0x5

    const-string v0, "Wrong password!"

    invoke-direct {p1, v0, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid CRC in File Header"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    new-instance p1, Lcom/apk/af0;

    const-string p2, "one of more of the input parameters were null in StandardDecryptor"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/af0;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 1
    :try_start_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 2
    iget-object v2, p0, Lcom/apk/xe0;->for:Lcom/apk/ze0;

    .line 3
    iget-object v2, v2, Lcom/apk/ze0;->do:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    or-int/2addr v2, v3

    xor-int/lit8 v3, v2, 0x1

    mul-int v2, v2, v3

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 4
    iget-object v2, p0, Lcom/apk/xe0;->for:Lcom/apk/ze0;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lcom/apk/ze0;->do(B)V

    .line 5
    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/apk/af0;

    invoke-direct {p2, p1}, Lcom/apk/af0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return p3

    .line 7
    :cond_1
    new-instance p1, Lcom/apk/af0;

    const-string p2, "one of the input parameters were null in standard decrpyt data"

    invoke-direct {p1, p2}, Lcom/apk/af0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
