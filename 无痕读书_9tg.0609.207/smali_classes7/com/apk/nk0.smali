.class public final Lcom/apk/nk0;
.super Ljava/lang/Object;
.source "-Base64.kt"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-Base64"
.end annotation


# static fields
.field public static final do:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/uk0;->for:[B

    .line 3
    sput-object v0, Lcom/apk/nk0;->do:[B

    .line 4
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    return-void
.end method

.method public static do([B[BI)Ljava/lang/String;
    .locals 10

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/apk/nk0;->do:[B

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "$this$encodeBase64"

    .line 2
    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 4
    new-array v0, v0, [B

    .line 5
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 6
    aget-byte v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    .line 7
    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    .line 8
    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v3, 0xff

    shr-int/2addr v9, v1

    .line 9
    aget-byte v9, p2, v9

    aput-byte v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v9, v5, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    .line 10
    aget-byte v3, p2, v3

    aput-byte v3, v0, v8

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    .line 11
    aget-byte v5, p2, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v6, 0x3f

    .line 12
    aget-byte v5, p2, v5

    aput-byte v5, v0, v3

    move v3, v7

    goto :goto_1

    .line 13
    :cond_1
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    if-eq v5, p1, :cond_3

    if-eq v5, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, v3, 0x1

    .line 14
    aget-byte v3, p0, v3

    .line 15
    aget-byte p0, p0, p1

    add-int/lit8 p1, v4, 0x1

    and-int/lit16 v5, v3, 0xff

    shr-int/2addr v5, v1

    .line 16
    aget-byte v5, p2, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, p1, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    .line 17
    aget-byte v3, p2, v3

    aput-byte v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    .line 18
    aget-byte p0, p2, p0

    aput-byte p0, v0, v4

    int-to-byte p0, v2

    .line 19
    aput-byte p0, v0, p1

    goto :goto_2

    .line 20
    :cond_3
    aget-byte p0, p0, v3

    add-int/lit8 p1, v4, 0x1

    and-int/lit16 v3, p0, 0xff

    shr-int/lit8 v1, v3, 0x2

    .line 21
    aget-byte v1, p2, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, p1, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 22
    aget-byte p0, p2, p0

    aput-byte p0, v0, p1

    add-int/lit8 p0, v1, 0x1

    int-to-byte p1, v2

    .line 23
    aput-byte p1, v0, v1

    .line 24
    aput-byte p1, v0, p0

    :goto_2
    const-string p0, "$this$toUtf8String"

    .line 25
    invoke-static {v0, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method
