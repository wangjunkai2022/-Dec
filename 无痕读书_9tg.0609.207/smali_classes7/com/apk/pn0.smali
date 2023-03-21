.class public Lcom/apk/pn0;
.super Ljava/lang/Object;
.source "XPather.java"


# instance fields
.field public do:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/()[]\"\'=<>"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final case(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/qn0;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v11, p2

    move/from16 v12, p3

    if-ltz v11, :cond_34

    .line 1
    iget-object v1, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    array-length v2, v1

    if-ge v12, v2, :cond_34

    if-gt v11, v12, :cond_34

    .line 2
    aget-object v1, v1, v11

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 3
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "("

    .line 4
    invoke-virtual {v10, v1, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v10, v11, v12}, Lcom/apk/pn0;->for(II)I

    move-result v13

    if-lez v13, :cond_1

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v4, v13, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 6
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v13, 0x1

    move/from16 v4, p3

    move v5, v11

    .line 7
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    :cond_2
    const-string v3, "["

    .line 9
    invoke-virtual {v10, v3, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 10
    invoke-virtual {v10, v11, v12}, Lcom/apk/pn0;->for(II)I

    move-result v14

    if-lez v14, :cond_8

    if-eqz v0, :cond_8

    add-int/2addr v11, v13

    add-int/lit8 v15, v14, -0x1

    .line 11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v1, 0x1

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v17, 0x1

    invoke-virtual {v10, v8}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v1, p0

    move v3, v11

    move v4, v15

    move-object v13, v6

    move v6, v7

    move/from16 v19, v7

    move v7, v0

    move-object/from16 v20, v8

    move/from16 v8, v17

    move/from16 p1, v0

    move-object v0, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v2, v20

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v2, v20

    .line 22
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 23
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v3, v19

    if-ne v1, v3, :cond_6

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move/from16 v3, v19

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v3, v19

    :cond_6
    :goto_2
    move-object v9, v0

    move v1, v3

    const/4 v13, 0x1

    move/from16 v0, p1

    goto :goto_0

    :cond_7
    move-object v0, v9

    add-int/lit8 v3, v14, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 27
    :cond_8
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    :cond_9
    const-string v3, "\""

    .line 28
    invoke-virtual {v10, v3, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "\'"

    invoke-virtual {v10, v3, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_14

    :cond_a
    const-string v2, "="

    .line 29
    invoke-virtual {v10, v2, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    const-string v4, ">"

    const-string v5, "<"

    if-nez v3, :cond_b

    invoke-virtual {v10, v5, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v10, v4, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    if-eqz p7, :cond_e

    add-int/lit8 v13, v11, 0x1

    .line 30
    invoke-virtual {v10, v2, v13}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v10, v5, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v10, v4, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    add-int/lit8 v3, v11, 0x2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/apk/pn0;->if(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move v3, v13

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 33
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 34
    iget-object v2, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v10, v0, v1, v2}, Lcom/apk/pn0;->if(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 35
    :goto_3
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10, v1}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v2, "/"

    .line 36
    invoke-virtual {v10, v2, v11}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v1, v11, 0x1

    .line 37
    invoke-virtual {v10, v2, v1}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    move v11, v1

    :cond_f
    if-ge v11, v12, :cond_11

    .line 38
    invoke-virtual {v10, v11, v12}, Lcom/apk/pn0;->for(II)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v1, v11, :cond_10

    move v13, v12

    goto :goto_4

    :cond_10
    move v13, v1

    :goto_4
    add-int/lit8 v3, v11, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v13

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 39
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v13, 0x1

    const/4 v5, 0x0

    move/from16 v4, p3

    move v6, v11

    .line 40
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 41
    :cond_11
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    .line 42
    :cond_12
    iget-object v2, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v2, v2, v11

    const/16 v3, 0x2d

    if-nez v2, :cond_13

    goto :goto_6

    .line 43
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    const/4 v4, 0x0

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_6

    :cond_14
    const/4 v4, 0x1

    .line 46
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 47
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_15

    if-eq v5, v3, :cond_15

    .line 48
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_6

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_16
    :goto_6
    add-int/lit8 v4, v11, 0x1

    .line 49
    invoke-virtual {v10, v1, v4}, Lcom/apk/pn0;->try(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_7

    .line 50
    :cond_17
    invoke-virtual {v10, v4, v12}, Lcom/apk/pn0;->for(II)I

    move-result v1

    if-le v1, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_25

    .line 51
    invoke-virtual {v10, v4, v12}, Lcom/apk/pn0;->for(II)I

    move-result v13

    .line 52
    iget-object v1, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 53
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v16

    .line 55
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v1, 0x0

    .line 56
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 57
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v18, v1, 0x1

    const-string v1, "last"

    .line 58
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz p7, :cond_19

    move/from16 v1, p6

    goto :goto_a

    :cond_19
    move/from16 v1, v16

    .line 59
    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1a
    const-string v1, "position"

    .line 60
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz p7, :cond_1b

    move/from16 v1, p5

    goto :goto_b

    :cond_1b
    move/from16 v1, v18

    .line 61
    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1c
    const-string v1, "text"

    .line 62
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 63
    instance-of v1, v2, Lcom/apk/kn0;

    if-eqz v1, :cond_1d

    .line 64
    check-cast v2, Lcom/apk/kn0;

    invoke-virtual {v2}, Lcom/apk/kn0;->super()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 65
    :cond_1d
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1e
    const-string v1, "count"

    .line 67
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v3, v11, 0x2

    add-int/lit8 v4, v12, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v8, p7

    .line 68
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    const-string v1, "data"

    .line 70
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v3, v11, 0x2

    add-int/lit8 v4, v12, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v8, p7

    .line 71
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :cond_20
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    instance-of v3, v2, Lcom/apk/kn0;

    if-eqz v3, :cond_21

    .line 76
    check-cast v2, Lcom/apk/kn0;

    invoke-virtual {v2}, Lcom/apk/kn0;->super()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 77
    :cond_21
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    :goto_d
    move/from16 v1, v18

    goto/16 :goto_9

    .line 79
    :cond_23
    new-instance v0, Lcom/apk/qn0;

    const-string v1, "Unknown function "

    const-string v2, "!"

    invoke-static {v1, v14, v2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/qn0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    add-int/lit8 v3, v13, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 80
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 81
    :cond_25
    iget-object v1, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v1, v1, v11

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x30

    const/16 v6, 0x39

    const/16 v7, 0x2b

    if-lez v2, :cond_29

    const/4 v8, 0x0

    .line 83
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_26

    if-eq v8, v3, :cond_26

    if-lt v8, v5, :cond_29

    if-gt v8, v6, :cond_29

    :cond_26
    const/4 v8, 0x1

    :goto_e
    if-ge v8, v2, :cond_28

    .line 84
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_29

    if-le v9, v6, :cond_27

    goto :goto_f

    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_28
    const/4 v1, 0x1

    goto :goto_10

    :cond_29
    :goto_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_2a

    .line 85
    iget-object v0, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v3, v4

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 86
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 87
    :cond_2a
    iget-object v1, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v1, v1, v11

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    if-lez v2, :cond_2e

    .line 89
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_2b

    if-eq v8, v3, :cond_2b

    const/16 v3, 0x20

    if-eq v8, v3, :cond_2b

    if-lt v8, v5, :cond_2e

    if-gt v8, v6, :cond_2e

    :cond_2b
    const/4 v3, 0x1

    :goto_11
    if-ge v3, v2, :cond_2d

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_2c

    if-lt v7, v5, :cond_2e

    if-le v7, v6, :cond_2c

    goto :goto_12

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    const/4 v1, 0x1

    goto :goto_13

    :cond_2e
    :goto_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_2f

    .line 91
    iget-object v0, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v3, v4

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 92
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_2f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/apk/pn0;->new(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 94
    :cond_30
    :goto_14
    invoke-virtual {v10, v11, v12}, Lcom/apk/pn0;->for(II)I

    move-result v0

    if-le v0, v11, :cond_33

    add-int/lit8 v1, v11, 0x1

    add-int/lit8 v3, v0, -0x1

    if-gt v1, v3, :cond_32

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_15
    if-gt v1, v3, :cond_31

    .line 96
    iget-object v4, v10, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 97
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_32
    invoke-virtual {v10, v2}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 99
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 100
    :cond_33
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    :cond_34
    return-object v0
.end method

.method public final else(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/apk/kn0;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/apk/kn0;

    invoke-virtual {p1}, Lcom/apk/kn0;->super()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final for(II)I
    .locals 12

    if-ge p1, p2, :cond_d

    .line 1
    iget-object v0, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "\""

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    add-int/2addr p1, v3

    :goto_0
    if-gt p1, p2, :cond_d

    .line 3
    iget-object v0, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "\'"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr p1, v3

    :goto_1
    if-gt p1, p2, :cond_d

    .line 5
    iget-object v0, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "("

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "/"

    const-string v7, "["

    if-nez v5, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 7
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    add-int/2addr p1, v3

    move v9, v8

    move v8, v5

    const/4 v5, 0x1

    :goto_2
    if-gt p1, p2, :cond_d

    .line 10
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    xor-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 11
    :cond_5
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    xor-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 12
    :cond_6
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 13
    :cond_7
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, ")"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 14
    :cond_8
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 15
    :cond_9
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    const-string v11, "]"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 16
    :cond_a
    iget-object v10, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    if-eqz v5, :cond_c

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-nez v0, :cond_c

    return p1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public if(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 4
    instance-of v1, p1, Ljava/lang/Number;

    const-string v2, ">="

    const-string v3, "<="

    const-string v4, ">"

    const-string v5, "<"

    const-string v6, "="

    const/4 v7, 0x1

    if-eqz v1, :cond_a

    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_a

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 6
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 7
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpl-double p3, v8, p1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 8
    :cond_2
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    cmpg-double p3, v8, p1

    if-gez p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 9
    :cond_4
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    cmpl-double p3, v8, p1

    if-lez p3, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 10
    :cond_6
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    cmpg-double p3, v8, p1

    if-gtz p3, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 11
    :cond_8
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    cmpl-double p3, v8, p1

    if-ltz p3, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    .line 12
    :cond_a
    invoke-virtual {p0, p1}, Lcom/apk/pn0;->else(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p2}, Lcom/apk/pn0;->else(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 15
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 16
    :cond_c
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    if-gez p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 17
    :cond_e
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-lez p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 18
    :cond_10
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-gtz p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 19
    :cond_12
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    if-ltz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    :goto_0
    return v0
.end method

.method public final new(Ljava/util/Collection;IIZZ)Ljava/util/Collection;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apk/qn0;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Lcom/apk/pn0;->do:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    .line 2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v12, :cond_0

    const-string v0, "@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v13, "*"

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/apk/kn0;

    if-eqz v3, :cond_1

    .line 10
    check-cast v2, Lcom/apk/kn0;

    .line 11
    new-instance v3, Lcom/apk/un0;

    invoke-direct {v3}, Lcom/apk/un0;-><init>()V

    .line 12
    invoke-virtual {v2, v3, v12}, Lcom/apk/kn0;->break(Lcom/apk/tn0;Z)Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 15
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/apk/kn0;

    if-eqz v1, :cond_6

    .line 18
    check-cast v0, Lcom/apk/kn0;

    .line 19
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/apk/kn0;->class()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v0, v10}, Lcom/apk/kn0;->catch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v9, v0}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 23
    :cond_6
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    :cond_7
    return-object v11

    .line 24
    :cond_8
    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    .line 26
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 27
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/apk/kn0;

    if-eqz v2, :cond_12

    .line 29
    move-object v8, v1

    check-cast v8, Lcom/apk/kn0;

    add-int/lit8 v16, v0, 0x1

    const-string v0, "."

    .line 30
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string v0, ".."

    .line 31
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 32
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v17, :cond_9

    .line 33
    invoke-virtual {v9, v8}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_4

    :cond_9
    if-eqz v18, :cond_b

    .line 34
    invoke-virtual {v8}, Lcom/apk/jm0;->for()Lcom/apk/kn0;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {v9, v0}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_b
    if-eqz v19, :cond_c

    .line 36
    invoke-virtual {v8}, Lcom/apk/kn0;->final()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 37
    :cond_c
    new-instance v0, Lcom/apk/wn0;

    invoke-direct {v0, v10}, Lcom/apk/wn0;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v8, v0, v11}, Lcom/apk/kn0;->break(Lcom/apk/tn0;Z)Ljava/util/List;

    move-result-object v0

    .line 39
    :goto_4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v2, p2, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v5, v16

    move/from16 v7, p5

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcom/apk/pn0;->do(Ljava/util/Collection;IIZIIZLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    if-eqz p4, :cond_10

    .line 41
    invoke-virtual/range {v21 .. v21}, Lcom/apk/kn0;->final()Ljava/util/List;

    move-result-object v0

    if-nez v17, :cond_d

    if-nez v18, :cond_d

    if-eqz v19, :cond_e

    .line 42
    :cond_d
    invoke-virtual {v14, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_e
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 44
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/apk/kn0;

    .line 46
    invoke-virtual {v9, v8}, Lcom/apk/pn0;->case(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apk/pn0;->new(Ljava/util/Collection;IIZZ)Ljava/util/Collection;

    move-result-object v0

    if-nez v17, :cond_f

    if-nez v18, :cond_f

    if-nez v19, :cond_f

    .line 47
    invoke-interface {v6, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 48
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_f
    invoke-virtual {v14, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 50
    :cond_10
    invoke-virtual {v14, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_11
    move/from16 v0, v16

    goto/16 :goto_3

    .line 51
    :cond_12
    new-instance v0, Lcom/apk/qn0;

    invoke-direct {v0}, Lcom/apk/qn0;-><init>()V

    throw v0

    :cond_13
    return-object v14
.end method

.method public final try(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pn0;->do:[Ljava/lang/String;

    array-length v1, v0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 2
    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
