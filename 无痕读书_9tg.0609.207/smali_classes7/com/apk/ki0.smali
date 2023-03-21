.class public final Lcom/apk/ki0;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "HttpHeaders"
.end annotation


# static fields
.field public static final do:Lcom/apk/uk0;

.field public static final if:Lcom/apk/uk0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ki0;->do:Lcom/apk/uk0;

    .line 2
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, "\t ,="

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ki0;->if:Lcom/apk/uk0;

    return-void
.end method

.method public static final case(Lcom/apk/kg0;Lcom/apk/tg0;Lcom/apk/sg0;)V
    .locals 30
    .param p0    # Lcom/apk/kg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headers"

    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lcom/apk/kg0;->do:Lcom/apk/kg0;

    if-ne v0, v5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v5, Lcom/apk/ig0;->final:Lcom/apk/ig0;

    .line 3
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Set-Cookie"

    .line 4
    invoke-virtual {v2, v4}, Lcom/apk/sg0;->try(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_1f

    .line 6
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "setCookie"

    invoke-static {v8, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 9
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x3b

    const/4 v12, 0x6

    .line 10
    invoke-static {v8, v9, v5, v5, v12}, Lcom/apk/jh0;->break(Ljava/lang/String;CIII)I

    move-result v12

    const/16 v13, 0x3d

    .line 11
    invoke-static {v8, v13, v5, v12}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v13

    if-ne v13, v12, :cond_2

    :cond_1
    :goto_1
    move-object/from16 p2, v2

    goto/16 :goto_10

    .line 12
    :cond_2
    invoke-static {v8, v5, v13}, Lcom/apk/jh0;->protected(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 13
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_1

    invoke-static {v15}, Lcom/apk/jh0;->while(Ljava/lang/String;)I

    move-result v5

    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 14
    invoke-static {v8, v13, v12}, Lcom/apk/jh0;->protected(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-static/range {v16 .. v16}, Lcom/apk/jh0;->while(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v14, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 16
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v26, v19

    move-object/from16 v27, v24

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-wide v28, 0xe677d21fdbffL

    move-wide/from16 v19, v17

    :goto_3
    if-ge v12, v5, :cond_f

    .line 17
    invoke-static {v8, v9, v12, v5}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v9

    const/16 v13, 0x3d

    .line 18
    invoke-static {v8, v13, v12, v9}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v13

    .line 19
    invoke-static {v8, v12, v13}, Lcom/apk/jh0;->protected(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    if-ge v13, v9, :cond_6

    add-int/lit8 v13, v13, 0x1

    .line 20
    invoke-static {v8, v13, v9}, Lcom/apk/jh0;->protected(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_6
    const-string v13, ""

    :goto_4
    const-string v14, "expires"

    move-object/from16 p2, v2

    const/4 v2, 0x1

    .line 21
    invoke-static {v12, v14, v2}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 22
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x0

    invoke-static {v13, v12, v2}, Lcom/apk/ig0;->if(Ljava/lang/String;II)J

    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_7
    const-string v14, "max-age"

    .line 23
    invoke-static {v12, v14, v2}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 24
    :try_start_1
    invoke-static {v13}, Lcom/apk/ig0;->for(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    const/16 v23, 0x1

    goto :goto_6

    :cond_8
    const-string v14, "domain"

    .line 25
    invoke-static {v12, v14, v2}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_2
    const-string v2, "."

    const/4 v12, 0x0

    const/4 v14, 0x2

    .line 26
    invoke-static {v13, v2, v12, v14}, Lcom/apk/ie0;->for(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_a

    .line 27
    invoke-static {v13, v2}, Lcom/apk/ie0;->throw(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/sb0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v24, 0x0

    move-object/from16 v26, v2

    goto :goto_6

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 28
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v12, "Failed requirement."

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    const-string v2, "path"

    const/4 v14, 0x1

    .line 29
    invoke-static {v12, v2, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v27, v13

    goto :goto_6

    :cond_c
    const-string v2, "secure"

    .line 30
    invoke-static {v12, v2, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v21, 0x1

    goto :goto_6

    :cond_d
    const-string v2, "httponly"

    .line 31
    invoke-static {v12, v2, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v22, 0x1

    :catch_0
    :cond_e
    :goto_6
    add-int/lit8 v12, v9, 0x1

    const/16 v9, 0x3b

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_f
    move-object/from16 p2, v2

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v19, v8

    if-nez v2, :cond_10

    goto :goto_8

    :cond_10
    cmp-long v2, v19, v17

    if-eqz v2, :cond_14

    const-wide v8, 0x20c49ba5e353f7L

    cmp-long v2, v19, v8

    if-gtz v2, :cond_11

    const/16 v2, 0x3e8

    int-to-long v8, v2

    mul-long v19, v19, v8

    goto :goto_7

    :cond_11
    const-wide v19, 0x7fffffffffffffffL

    :goto_7
    add-long v8, v10, v19

    cmp-long v2, v8, v10

    const-wide v10, 0xe677d21fdbffL

    if-ltz v2, :cond_13

    cmp-long v2, v8, v10

    if-lez v2, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    move-wide/from16 v17, v8

    goto :goto_a

    :cond_13
    :goto_9
    move-wide/from16 v17, v10

    goto :goto_a

    :cond_14
    move-wide/from16 v17, v28

    .line 32
    :goto_a
    iget-object v2, v1, Lcom/apk/tg0;->try:Ljava/lang/String;

    move-object/from16 v5, v26

    if-nez v5, :cond_15

    move-object v5, v2

    goto :goto_d

    .line 33
    :cond_15
    invoke-static {v2, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_b

    :cond_16
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 34
    invoke-static {v2, v5, v9, v8}, Lcom/apk/ie0;->for(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_17

    .line 36
    invoke-static {v2}, Lcom/apk/jh0;->if(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    :goto_b
    const/4 v8, 0x1

    goto :goto_c

    :cond_17
    const/4 v8, 0x0

    :goto_c
    if-nez v8, :cond_18

    goto :goto_10

    .line 37
    :cond_18
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_19

    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->goto:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$do;

    .line 38
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->else:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 39
    invoke-virtual {v2, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_10

    :cond_19
    const-string v2, "/"

    move-object/from16 v8, v27

    if-eqz v8, :cond_1b

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 40
    invoke-static {v8, v2, v10, v9}, Lcom/apk/ie0;->static(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_e

    :cond_1a
    move-object/from16 v20, v8

    goto :goto_f

    :cond_1b
    const/4 v10, 0x0

    .line 41
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/apk/tg0;->if()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/4 v11, 0x6

    .line 42
    invoke-static {v8, v9, v10, v10, v11}, Lcom/apk/ie0;->const(Ljava/lang/CharSequence;CIZI)I

    move-result v9

    if-eqz v9, :cond_1c

    .line 43
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v20, v2

    .line 44
    :goto_f
    new-instance v2, Lcom/apk/ig0;

    const/16 v25, 0x0

    move-object v14, v2

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v25}, Lcom/apk/ig0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLcom/apk/md0;)V

    goto :goto_11

    :goto_10
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_1e

    if-nez v7, :cond_1d

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_1d
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_1f
    if-eqz v7, :cond_20

    .line 47
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Collections.unmodifiableList(cookies)"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 48
    :cond_20
    sget-object v2, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    .line 49
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    return-void

    .line 50
    :cond_21
    invoke-interface {v0, v1, v2}, Lcom/apk/kg0;->do(Lcom/apk/tg0;Ljava/util/List;)V

    return-void
.end method

.method public static final do(Lcom/apk/ch0;)Z
    .locals 1
    .param p0    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lcom/apk/hc0;->if:Lcom/apk/hc0;
        message = "No longer supported"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "response.promisesBody()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "response"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result p0

    return p0
.end method

.method public static final else(Lcom/apk/rk0;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/rk0;->else()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/apk/rk0;->default(J)B

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/rk0;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/apk/rk0;->readByte()B

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static final for(Lcom/apk/ch0;)Z
    .locals 8
    .param p0    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$promisesBody"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 2
    iget-object v0, v0, Lcom/apk/zg0;->for:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/apk/ch0;->try:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/apk/jh0;->final(Lcom/apk/ch0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v4, "Transfer-Encoding"

    .line 6
    invoke-static {p0, v4, v0, v2}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0, v3}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static final if(Lcom/apk/sg0;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/sg0;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/dg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$parseChallenges"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerName"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/sg0;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lcom/apk/rk0;

    invoke-direct {v3}, Lcom/apk/rk0;-><init>()V

    invoke-virtual {p0, v2}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/rk0;->j(Ljava/lang/String;)Lcom/apk/rk0;

    .line 5
    :try_start_0
    invoke-static {v3, v0}, Lcom/apk/ki0;->new(Lcom/apk/rk0;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 6
    sget-object v4, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 7
    sget-object v4, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    const/4 v5, 0x5

    const-string v6, "Unable to parse challenge"

    .line 8
    invoke-virtual {v4, v6, v5, v3}, Lcom/apk/uj0;->this(Ljava/lang/String;ILjava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final new(Lcom/apk/rk0;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/rk0;",
            "Ljava/util/List<",
            "Lcom/apk/dg0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    if-nez v2, :cond_0

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->try(Lcom/apk/rk0;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    move-result v4

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->try(Lcom/apk/rk0;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->else()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/apk/dg0;

    .line 7
    sget-object v3, Lcom/apk/yc0;->do:Lcom/apk/yc0;

    .line 8
    invoke-direct {v0, v2, v3}, Lcom/apk/dg0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/16 v6, 0x3d

    int-to-byte v6, v6

    .line 9
    invoke-static {v0, v6}, Lcom/apk/jh0;->finally(Lcom/apk/rk0;B)I

    move-result v7

    .line 10
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v4, :cond_b

    if-nez v8, :cond_3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->else()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 12
    :cond_3
    new-instance v4, Lcom/apk/dg0;

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    const-string v8, "$this$repeat"

    .line 14
    invoke-static {v5, v8}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v7, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_a

    if-eqz v7, :cond_9

    if-eq v7, v10, :cond_8

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_9

    if-eq v8, v10, :cond_6

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    mul-int v9, v9, v7

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gt v10, v7, :cond_5

    .line 17
    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eq v10, v7, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "sb.toString()"

    invoke-static {v5, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 19
    :cond_6
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v8, v7, [C

    :goto_4
    if-ge v9, v7, :cond_7

    aput-char v5, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 20
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_9
    const-string v5, ""

    .line 21
    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v5, "Collections.singletonMap\u2026ek + \"=\".repeat(eqCount))"

    invoke-static {v3, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {v4, v2, v3}, Lcom/apk/dg0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count \'n\' must be non-negative, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-static {v0, v6}, Lcom/apk/jh0;->finally(Lcom/apk/rk0;B)I

    move-result v8

    add-int/2addr v8, v7

    :goto_6
    if-nez v5, :cond_d

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->try(Lcom/apk/rk0;)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_7

    .line 28
    :cond_c
    invoke-static {v0, v6}, Lcom/apk/jh0;->finally(Lcom/apk/rk0;B)I

    move-result v7

    move v8, v7

    :cond_d
    if-nez v8, :cond_e

    .line 29
    :goto_7
    new-instance v6, Lcom/apk/dg0;

    invoke-direct {v6, v2, v4}, Lcom/apk/dg0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto/16 :goto_1

    :cond_e
    if-le v8, v10, :cond_f

    return-void

    .line 30
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    move-result v7

    if-eqz v7, :cond_10

    return-void

    :cond_10
    const/16 v7, 0x22

    int-to-byte v7, v7

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->else()Z

    move-result v9

    if-nez v9, :cond_11

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/apk/rk0;->default(J)B

    move-result v9

    if-ne v9, v7, :cond_11

    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_17

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->readByte()B

    move-result v9

    if-ne v9, v7, :cond_12

    const/4 v9, 0x1

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_16

    .line 33
    new-instance v9, Lcom/apk/rk0;

    invoke-direct {v9}, Lcom/apk/rk0;-><init>()V

    .line 34
    :goto_a
    sget-object v11, Lcom/apk/ki0;->do:Lcom/apk/uk0;

    invoke-virtual {v0, v11}, Lcom/apk/rk0;->finally(Lcom/apk/uk0;)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-nez v15, :cond_13

    goto :goto_b

    .line 35
    :cond_13
    invoke-virtual {v0, v11, v12}, Lcom/apk/rk0;->default(J)B

    move-result v3

    if-ne v3, v7, :cond_14

    .line 36
    invoke-virtual {v9, v0, v11, v12}, Lcom/apk/rk0;->class(Lcom/apk/rk0;J)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->readByte()B

    .line 38
    invoke-virtual {v9}, Lcom/apk/rk0;->strictfp()Ljava/lang/String;

    move-result-object v3

    :goto_b
    move-object v1, v3

    move-object v3, v2

    goto :goto_c

    .line 39
    :cond_14
    iget-wide v13, v0, Lcom/apk/rk0;->if:J

    move-object v3, v2

    const-wide/16 v1, 0x1

    add-long v15, v11, v1

    cmp-long v17, v13, v15

    if-nez v17, :cond_15

    const/4 v1, 0x0

    goto :goto_c

    .line 40
    :cond_15
    invoke-virtual {v9, v0, v11, v12}, Lcom/apk/rk0;->class(Lcom/apk/rk0;J)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->readByte()B

    .line 42
    invoke-virtual {v9, v0, v1, v2}, Lcom/apk/rk0;->class(Lcom/apk/rk0;J)V

    const/4 v1, 0x0

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto :goto_a

    .line 43
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v3, v2

    .line 44
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->try(Lcom/apk/rk0;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_1a

    .line 45
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    return-void

    .line 46
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/apk/ki0;->else(Lcom/apk/rk0;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/apk/rk0;->else()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_1a
    return-void
.end method

.method public static final try(Lcom/apk/rk0;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/ki0;->if:Lcom/apk/uk0;

    invoke-virtual {p0, v0}, Lcom/apk/rk0;->finally(Lcom/apk/uk0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/apk/rk0;->if:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/apk/rk0;->volatile(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
