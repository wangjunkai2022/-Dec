.class public Lcom/apk/ko0;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ko0$if;,
        Lcom/apk/ko0$do;
    }
.end annotation


# static fields
.field public static final do:[C

.field public static final if:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/apk/ko0;->do:[C

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apk/ko0;->if:Ljava/util/HashMap;

    .line 3
    sget-object v0, Lcom/apk/ko0$if;->case:Lcom/apk/ko0$if;

    .line 4
    sget-object v0, Lcom/apk/ao0;->do:Ljava/nio/charset/Charset;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static do(Lcom/apk/ko0$if;Ljava/lang/String;I)V
    .locals 10

    .line 1
    new-array v0, p2, [Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/apk/ko0$if;->do:[Ljava/lang/String;

    .line 3
    new-array v0, p2, [I

    .line 4
    iput-object v0, p0, Lcom/apk/ko0$if;->if:[I

    .line 5
    new-array v0, p2, [I

    .line 6
    iput-object v0, p0, Lcom/apk/ko0$if;->for:[I

    .line 7
    new-array v0, p2, [Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/apk/ko0$if;->new:[Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/apk/qo0;

    .line 10
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/apk/qo0;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/apk/qo0;->super()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0x3d

    .line 12
    invoke-virtual {v0, v2}, Lcom/apk/qo0;->this(C)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 14
    sget-object v4, Lcom/apk/ko0;->do:[C

    invoke-virtual {v0, v4}, Lcom/apk/qo0;->break([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 15
    invoke-virtual {v0}, Lcom/apk/qo0;->const()C

    move-result v6

    .line 16
    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x3b

    .line 17
    invoke-virtual {v0, v6}, Lcom/apk/qo0;->this(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 18
    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    const/16 v7, 0x26

    .line 19
    invoke-virtual {v0, v7}, Lcom/apk/qo0;->this(C)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 21
    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 22
    iget-object v7, p0, Lcom/apk/ko0$if;->do:[Ljava/lang/String;

    .line 23
    aput-object v2, v7, v1

    .line 24
    iget-object v7, p0, Lcom/apk/ko0$if;->if:[I

    .line 25
    aput v4, v7, v1

    .line 26
    iget-object v7, p0, Lcom/apk/ko0$if;->for:[I

    .line 27
    aput v4, v7, v5

    .line 28
    iget-object v7, p0, Lcom/apk/ko0$if;->new:[Ljava/lang/String;

    .line 29
    aput-object v2, v7, v5

    if-eq v6, v8, :cond_1

    .line 30
    sget-object v5, Lcom/apk/ko0;->if:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    const/4 p1, 0x1

    :cond_3
    const-string p0, "Unexpected count of entities loaded"

    .line 31
    invoke-static {p1, p0}, Lcom/apk/sb0;->private(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Lcom/apk/qo0;->new()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/apk/qo0;->new()V

    .line 33
    throw p0
.end method

.method public static for(Ljava/lang/Appendable;Ljava/lang/String;Lcom/apk/ho0$do;ZZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/apk/ho0$do;->do:Lcom/apk/ko0$if;

    .line 2
    iget-object v3, v1, Lcom/apk/ho0$do;->for:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/apk/ho0$do;->if()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 4
    :goto_0
    iget-object v4, v1, Lcom/apk/ho0$do;->new:Lcom/apk/ko0$do;

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v5, :cond_18

    move-object/from16 v10, p1

    .line 6
    invoke-virtual {v10, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    const/16 v12, 0x20

    const/4 v13, 0x1

    if-eqz p4, :cond_4

    .line 7
    invoke-static {v11}, Lcom/apk/bo0;->else(I)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz p5, :cond_1

    if-eqz v8, :cond_17

    :cond_1
    if-eqz v9, :cond_2

    goto/16 :goto_5

    .line 8
    :cond_2
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    :cond_4
    const/high16 v14, 0x10000

    if-ge v11, v14, :cond_15

    int-to-char v14, v11

    const/16 v15, 0x9

    if-eq v14, v15, :cond_14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_12

    const/16 v15, 0x26

    if-eq v14, v15, :cond_11

    const/16 v15, 0x3c

    if-eq v14, v15, :cond_e

    const/16 v15, 0x3e

    if-eq v14, v15, :cond_c

    const/16 v15, 0xa0

    if-eq v14, v15, :cond_a

    if-lt v14, v12, :cond_9

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_5

    if-eq v12, v13, :cond_7

    .line 10
    invoke-virtual {v3, v14}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v13

    goto :goto_2

    :cond_5
    const/16 v12, 0x80

    if-ge v14, v12, :cond_6

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :cond_7
    :goto_2
    if-nez v13, :cond_8

    goto :goto_3

    .line 11
    :cond_8
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_5

    .line 12
    :cond_9
    :goto_3
    invoke-static {v0, v2, v11}, Lcom/apk/ko0;->if(Ljava/lang/Appendable;Lcom/apk/ko0$if;I)V

    goto/16 :goto_5

    .line 13
    :cond_a
    sget-object v12, Lcom/apk/ko0$if;->try:Lcom/apk/ko0$if;

    if-eq v2, v12, :cond_b

    const-string v12, "&nbsp;"

    .line 14
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    :cond_b
    const-string v12, "&#xa0;"

    .line 15
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    :cond_c
    if-nez p3, :cond_d

    const-string v12, "&gt;"

    .line 16
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 17
    :cond_d
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    :cond_e
    if-eqz p3, :cond_10

    .line 18
    sget-object v12, Lcom/apk/ko0$if;->try:Lcom/apk/ko0$if;

    if-eq v2, v12, :cond_10

    .line 19
    iget-object v12, v1, Lcom/apk/ho0$do;->goto:Lcom/apk/ho0$do$do;

    .line 20
    sget-object v13, Lcom/apk/ho0$do$do;->if:Lcom/apk/ho0$do$do;

    if-ne v12, v13, :cond_f

    goto :goto_4

    .line 21
    :cond_f
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    :cond_10
    :goto_4
    const-string v12, "&lt;"

    .line 22
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    :cond_11
    const-string v12, "&amp;"

    .line 23
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    :cond_12
    if-eqz p3, :cond_13

    const-string v12, "&quot;"

    .line 24
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 25
    :cond_13
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    .line 26
    :cond_14
    invoke-interface {v0, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    .line 27
    :cond_15
    new-instance v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 28
    invoke-virtual {v3, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 29
    invoke-interface {v0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 30
    :cond_16
    invoke-static {v0, v2, v11}, Lcom/apk/ko0;->if(Ljava/lang/Appendable;Lcom/apk/ko0$if;I)V

    .line 31
    :cond_17
    :goto_5
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v7, v11

    goto/16 :goto_1

    :cond_18
    return-void
.end method

.method public static if(Ljava/lang/Appendable;Lcom/apk/ko0$if;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/ko0$if;->for:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const-string v1, ""

    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p1, Lcom/apk/ko0$if;->new:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Lcom/apk/ko0$if;->for:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v3, p2, :cond_0

    .line 3
    aget-object p1, v2, v4

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/apk/ko0$if;->new:[Ljava/lang/String;

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_2

    const/16 p2, 0x26

    .line 5
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    const-string p1, "&#x"

    .line 6
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static new(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ko0$if;->case:Lcom/apk/ko0$if;

    invoke-virtual {v0, p0}, Lcom/apk/ko0$if;->do(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
