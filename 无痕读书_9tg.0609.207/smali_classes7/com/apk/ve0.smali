.class public Lcom/apk/ve0;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field public do:Lcom/apk/we0;

.field public if:Lcom/apk/ue0;


# direct methods
.method public constructor <init>(Lcom/apk/we0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ve0;->do:Lcom/apk/we0;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    return-void
.end method


# virtual methods
.method public do([CI)[B
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 1
    array-length v3, v0

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 3
    aget-char v6, v0, v5

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/apk/ue0;

    iget-object v5, v1, Lcom/apk/ve0;->do:Lcom/apk/we0;

    .line 6
    iget-object v5, v5, Lcom/apk/we0;->for:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v5}, Lcom/apk/ue0;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    .line 8
    :cond_1
    iget-object v0, v1, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    if-eqz v0, :cond_9

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/apk/ue0;->do:Ljavax/crypto/Mac;

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, v0, Lcom/apk/ue0;->for:Ljava/lang/String;

    invoke-direct {v5, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    .line 10
    iget-object v0, v1, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    .line 11
    iget v0, v0, Lcom/apk/ue0;->if:I

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    .line 12
    :goto_1
    iget-object v2, v1, Lcom/apk/ve0;->if:Lcom/apk/ue0;

    iget-object v3, v1, Lcom/apk/ve0;->do:Lcom/apk/we0;

    .line 13
    iget-object v5, v3, Lcom/apk/we0;->do:[B

    .line 14
    iget v3, v3, Lcom/apk/we0;->if:I

    if-nez v5, :cond_3

    new-array v5, v4, [B

    .line 15
    :cond_3
    iget v6, v2, Lcom/apk/ue0;->if:I

    .line 16
    rem-int v7, v0, v6

    const/4 v8, 0x1

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 17
    :goto_2
    div-int v9, v0, v6

    add-int/2addr v9, v7

    add-int/lit8 v7, v9, -0x1

    mul-int v7, v7, v6

    sub-int v7, v0, v7

    mul-int v10, v9, v6

    .line 18
    new-array v10, v10, [B

    const/4 v11, 0x0

    :goto_3
    if-gt v8, v9, :cond_7

    .line 19
    iget v12, v2, Lcom/apk/ue0;->if:I

    .line 20
    new-array v13, v12, [B

    .line 21
    array-length v14, v5

    add-int/lit8 v14, v14, 0x4

    new-array v14, v14, [B

    .line 22
    array-length v15, v5

    invoke-static {v5, v4, v14, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    array-length v15, v5

    add-int/lit8 v16, v15, 0x0

    const/high16 v17, 0x1000000

    .line 24
    div-int v4, v8, v17

    int-to-byte v4, v4

    aput-byte v4, v14, v16

    add-int/lit8 v4, v15, 0x1

    const/high16 v16, 0x10000

    .line 25
    div-int v1, v8, v16

    int-to-byte v1, v1

    aput-byte v1, v14, v4

    add-int/lit8 v1, v15, 0x2

    .line 26
    div-int/lit16 v4, v8, 0x100

    int-to-byte v4, v4

    aput-byte v4, v14, v1

    add-int/lit8 v15, v15, 0x3

    int-to-byte v1, v8

    .line 27
    aput-byte v1, v14, v15

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_6

    .line 28
    iget-object v4, v2, Lcom/apk/ue0;->do:Ljavax/crypto/Mac;

    invoke-virtual {v4, v14}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v12, :cond_5

    .line 29
    aget-byte v15, v13, v4

    aget-byte v16, v14, v4

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 30
    invoke-static {v13, v1, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    if-ge v7, v6, :cond_8

    .line 31
    new-array v2, v0, [B

    .line 32
    invoke-static {v10, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v2

    :cond_8
    return-object v10

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 34
    :cond_9
    throw v2

    .line 35
    :cond_a
    throw v2
.end method
