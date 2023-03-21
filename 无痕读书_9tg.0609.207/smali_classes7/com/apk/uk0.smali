.class public Lcom/apk/uk0;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/uk0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/apk/uk0;",
        ">;"
    }
.end annotation


# static fields
.field public static final new:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final try:Lcom/apk/uk0$do;


# instance fields
.field public transient do:I

.field public final for:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public transient if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/uk0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/uk0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    .line 1
    new-instance v0, Lcom/apk/uk0;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/apk/uk0;-><init>([B)V

    sput-object v0, Lcom/apk/uk0;->new:Lcom/apk/uk0;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/uk0;->for:[B

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->if:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/uk0;->try()[B

    move-result-object v0

    const-string v1, "$this$toUtf8String"

    .line 3
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    iput-object v2, p0, Lcom/apk/uk0;->if:Ljava/lang/String;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public case(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 2
    aget-byte p1, v0, p1

    return p1
.end method

.method public catch(Lcom/apk/rk0;II)V
    .locals 2
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$commonWrite"

    .line 1
    invoke-static {p0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 3
    invoke-virtual {p1, v0, p2, p3}, Lcom/apk/rk0;->instanceof([BII)Lcom/apk/rk0;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lcom/apk/uk0;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/uk0;->for()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 6
    invoke-virtual {p0, v4}, Lcom/apk/uk0;->case(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 7
    invoke-virtual {p1, v4}, Lcom/apk/uk0;->case(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public do()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/apk/nk0;->do([B[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else(ILcom/apk/uk0;II)Z
    .locals 1
    .param p2    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 2
    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/apk/uk0;->goto(I[BII)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v2, p1, Lcom/apk/uk0;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/apk/uk0;

    .line 2
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/apk/uk0;->for:[B

    .line 4
    array-length v4, v3

    if-ne v2, v4, :cond_1

    array-length v2, v3

    invoke-virtual {p1, v1, v3, v1, v2}, Lcom/apk/uk0;->goto(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 2
    array-length v0, v0

    return v0
.end method

.method public goto(I[BII)Z
    .locals 2
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 2
    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 4
    invoke-static {v0, p1, p2, p3, p4}, Lcom/apk/sb0;->goto([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/uk0;->do:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 4
    iput v0, p0, Lcom/apk/uk0;->do:I

    :goto_0
    return v0
.end method

.method public if(Ljava/lang/String;)Lcom/apk/uk0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/apk/uk0;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v1, p0, Lcom/apk/uk0;->for:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v1, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {p1, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/apk/uk0;-><init>([B)V

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 4
    sget-object v7, Lcom/apk/ol0;->do:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 5
    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 6
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public this()Lcom/apk/uk0;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/apk/uk0;->for:[B

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 3
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v5, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 5
    aput-byte v2, v1, v0

    .line 6
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_3

    .line 7
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 8
    aput-byte v0, v1, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/apk/uk0;

    invoke-direct {v0, v1}, Lcom/apk/uk0;-><init>([B)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/apk/uk0;->for:[B

    .line 2
    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "[size=0]"

    goto/16 :goto_1e

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/apk/uk0;->for:[B

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    const/16 v6, 0x40

    if-ge v3, v2, :cond_47

    .line 5
    aget-byte v7, v1, v3

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/16 v10, 0x1f

    const/16 v11, 0x7f

    const/16 v12, 0x9f

    const v13, 0xfffd

    const/high16 v14, 0x10000

    if-ltz v7, :cond_13

    add-int/lit8 v15, v4, 0x1

    if-ne v4, v6, :cond_3

    goto/16 :goto_1b

    :cond_3
    if-eq v7, v9, :cond_8

    if-eq v7, v8, :cond_8

    if-ltz v7, :cond_4

    if-ge v10, v7, :cond_6

    :cond_4
    if-le v11, v7, :cond_5

    goto :goto_2

    :cond_5
    if-lt v12, v7, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_46

    :cond_8
    if-ne v7, v13, :cond_9

    goto/16 :goto_1a

    :cond_9
    if-ge v7, v14, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    :goto_4
    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_5
    move v4, v15

    if-ge v3, v2, :cond_2

    .line 6
    aget-byte v7, v1, v3

    if-ltz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 7
    aget-byte v3, v1, v3

    add-int/lit8 v15, v4, 0x1

    if-ne v4, v6, :cond_b

    goto/16 :goto_1b

    :cond_b
    if-eq v3, v9, :cond_10

    if-eq v3, v8, :cond_10

    if-ltz v3, :cond_c

    if-ge v10, v3, :cond_e

    :cond_c
    if-le v11, v3, :cond_d

    goto :goto_6

    :cond_d
    if-lt v12, v3, :cond_f

    :cond_e
    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_46

    :cond_10
    if-ne v3, v13, :cond_11

    goto/16 :goto_1a

    :cond_11
    if-ge v3, v14, :cond_12

    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, 0x2

    :goto_8
    add-int/2addr v5, v3

    move v3, v7

    goto :goto_5

    :cond_13
    shr-int/lit8 v13, v7, 0x5

    const/4 v14, -0x2

    const/16 v15, 0x80

    if-ne v13, v14, :cond_20

    add-int/lit8 v7, v3, 0x1

    if-gt v2, v7, :cond_14

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 8
    :cond_14
    aget-byte v13, v1, v3

    .line 9
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_15

    const/4 v14, 0x1

    goto :goto_9

    :cond_15
    const/4 v14, 0x0

    :goto_9
    if-nez v14, :cond_16

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_16
    xor-int/lit16 v7, v7, 0xf80

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    if-ge v7, v15, :cond_17

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_17
    add-int/lit8 v13, v4, 0x1

    if-ne v4, v6, :cond_18

    goto/16 :goto_1b

    :cond_18
    if-eq v7, v9, :cond_1d

    if-eq v7, v8, :cond_1d

    if-ltz v7, :cond_19

    if-ge v10, v7, :cond_1b

    :cond_19
    if-le v11, v7, :cond_1a

    goto :goto_a

    :cond_1a
    if-lt v12, v7, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    goto :goto_b

    :cond_1c
    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_46

    :cond_1d
    const v4, 0xfffd

    if-ne v7, v4, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_1f

    const/4 v15, 0x1

    goto :goto_c

    :cond_1f
    const/4 v15, 0x2

    :goto_c
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x2

    move v4, v13

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v10, v7, 0x4

    const v11, 0xd800

    const v12, 0xdfff

    if-ne v10, v14, :cond_31

    add-int/lit8 v7, v3, 0x2

    if-gt v2, v7, :cond_21

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 10
    :cond_21
    aget-byte v10, v1, v3

    add-int/lit8 v13, v3, 0x1

    .line 11
    aget-byte v13, v1, v13

    and-int/lit16 v14, v13, 0xc0

    if-ne v14, v15, :cond_22

    const/4 v14, 0x1

    goto :goto_d

    :cond_22
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_23

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 12
    :cond_23
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_24

    const/4 v14, 0x1

    goto :goto_e

    :cond_24
    const/4 v14, 0x0

    :goto_e
    if-nez v14, :cond_25

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_25
    const v14, -0x1e080

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    const/16 v10, 0x800

    if-ge v7, v10, :cond_26

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_26
    if-le v11, v7, :cond_27

    goto :goto_f

    :cond_27
    if-lt v12, v7, :cond_28

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_28
    :goto_f
    add-int/lit8 v10, v4, 0x1

    if-ne v4, v6, :cond_29

    goto/16 :goto_1b

    :cond_29
    if-eq v7, v9, :cond_2e

    if-eq v7, v8, :cond_2e

    if-ltz v7, :cond_2a

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_2c

    :cond_2a
    const/16 v4, 0x7f

    if-le v4, v7, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_11

    :cond_2d
    :goto_10
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_46

    :cond_2e
    const v4, 0xfffd

    if-ne v7, v4, :cond_2f

    goto/16 :goto_1a

    :cond_2f
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_30

    const/4 v15, 0x1

    goto :goto_12

    :cond_30
    const/4 v15, 0x2

    :goto_12
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x3

    move v4, v10

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v7, v7, 0x3

    if-ne v7, v14, :cond_45

    add-int/lit8 v7, v3, 0x3

    if-gt v2, v7, :cond_32

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 13
    :cond_32
    aget-byte v8, v1, v3

    add-int/lit8 v10, v3, 0x1

    .line 14
    aget-byte v10, v1, v10

    and-int/lit16 v13, v10, 0xc0

    if-ne v13, v15, :cond_33

    const/4 v13, 0x1

    goto :goto_13

    :cond_33
    const/4 v13, 0x0

    :goto_13
    if-nez v13, :cond_34

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_34
    add-int/lit8 v13, v3, 0x2

    .line 15
    aget-byte v13, v1, v13

    and-int/lit16 v14, v13, 0xc0

    if-ne v14, v15, :cond_35

    const/4 v14, 0x1

    goto :goto_14

    :cond_35
    const/4 v14, 0x0

    :goto_14
    if-nez v14, :cond_36

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    .line 16
    :cond_36
    aget-byte v7, v1, v7

    and-int/lit16 v14, v7, 0xc0

    if-ne v14, v15, :cond_37

    const/4 v14, 0x1

    goto :goto_15

    :cond_37
    const/4 v14, 0x0

    :goto_15
    if-nez v14, :cond_38

    if-ne v4, v6, :cond_46

    goto/16 :goto_1b

    :cond_38
    const v14, 0x381f80

    xor-int/2addr v7, v14

    shl-int/lit8 v13, v13, 0x6

    xor-int/2addr v7, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v7, v10

    shl-int/lit8 v8, v8, 0x12

    xor-int/2addr v7, v8

    const v8, 0x10ffff

    if-le v7, v8, :cond_39

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_39
    if-le v11, v7, :cond_3a

    goto :goto_16

    :cond_3a
    if-lt v12, v7, :cond_3b

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3b
    :goto_16
    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_3c

    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_3c
    add-int/lit8 v8, v4, 0x1

    if-ne v4, v6, :cond_3d

    goto :goto_1b

    :cond_3d
    if-eq v7, v9, :cond_42

    const/16 v4, 0xd

    if-eq v7, v4, :cond_42

    if-ltz v7, :cond_3e

    const/16 v4, 0x1f

    if-ge v4, v7, :cond_40

    :cond_3e
    const/16 v4, 0x7f

    if-le v4, v7, :cond_3f

    goto :goto_17

    :cond_3f
    const/16 v4, 0x9f

    if-lt v4, v7, :cond_41

    :cond_40
    const/4 v4, 0x1

    goto :goto_18

    :cond_41
    :goto_17
    const/4 v4, 0x0

    :goto_18
    if-nez v4, :cond_46

    :cond_42
    const v4, 0xfffd

    if-ne v7, v4, :cond_43

    goto :goto_1a

    :cond_43
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_44

    const/4 v15, 0x1

    goto :goto_19

    :cond_44
    const/4 v15, 0x2

    :goto_19
    add-int/2addr v5, v15

    add-int/lit8 v3, v3, 0x4

    move v4, v8

    goto/16 :goto_1

    :cond_45
    if-ne v4, v6, :cond_46

    goto :goto_1b

    :cond_46
    :goto_1a
    const/4 v5, -0x1

    :cond_47
    :goto_1b
    const-string v1, "\u2026]"

    const/16 v2, 0x5d

    const-string v3, "[size="

    const/4 v4, -0x1

    if-ne v5, v4, :cond_4c

    .line 17
    iget-object v4, v0, Lcom/apk/uk0;->for:[B

    .line 18
    array-length v4, v4

    if-gt v4, v6, :cond_48

    const-string v1, "[hex="

    .line 19
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/apk/uk0;->new()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e

    .line 20
    :cond_48
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    iget-object v3, v0, Lcom/apk/uk0;->for:[B

    .line 22
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v3, v0, Lcom/apk/uk0;->for:[B

    .line 24
    array-length v3, v3

    if-gt v6, v3, :cond_49

    const/4 v3, 0x1

    goto :goto_1c

    :cond_49
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_4b

    .line 25
    iget-object v3, v0, Lcom/apk/uk0;->for:[B

    .line 26
    array-length v4, v3

    if-ne v6, v4, :cond_4a

    move-object v4, v0

    goto :goto_1d

    .line 27
    :cond_4a
    new-instance v4, Lcom/apk/uk0;

    const/4 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/apk/uc0;->new([BII)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/apk/uk0;-><init>([B)V

    .line 28
    :goto_1d
    invoke-virtual {v4}, Lcom/apk/uk0;->new()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e

    :cond_4b
    const-string v1, "endIndex > length("

    .line 29
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    iget-object v2, v0, Lcom/apk/uk0;->for:[B

    .line 31
    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\\"

    const-string v9, "\\\\"

    const/4 v10, 0x4

    .line 34
    invoke-static {v7, v8, v9, v6, v10}, Lcom/apk/ie0;->while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    .line 35
    invoke-static {v7, v8, v9, v6, v10}, Lcom/apk/ie0;->while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, "\\r"

    .line 36
    invoke-static {v7, v8, v9, v6, v10}, Lcom/apk/ie0;->while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4d

    .line 38
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    iget-object v3, v0, Lcom/apk/uk0;->for:[B

    .line 40
    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 41
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[text="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method public try()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/uk0;->for:[B

    return-object v0
.end method
