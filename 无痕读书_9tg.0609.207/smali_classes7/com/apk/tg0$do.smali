.class public final Lcom/apk/tg0$do;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/tg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/tg0$do$do;
    }
.end annotation


# static fields
.field public static final this:Lcom/apk/tg0$do$do;


# instance fields
.field public final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public do:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public for:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public goto:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/tg0$do$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/tg0$do$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/tg0$do;->this:Lcom/apk/tg0$do$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/apk/tg0$do;->try:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final do()Lcom/apk/tg0;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2
    sget-object v3, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    iget-object v4, v0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static/range {v3 .. v8}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    iget-object v5, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-static/range {v4 .. v9}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0$do;->if()I

    move-result v6

    .line 6
    iget-object v1, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 9
    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .line 10
    sget-object v10, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    invoke-static/range {v10 .. v15}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    .line 12
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 14
    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 15
    sget-object v11, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-static/range {v11 .. v16}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object v8, v9

    :goto_2
    invoke-interface {v10, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v8, v10

    goto :goto_3

    :cond_3
    move-object v8, v9

    .line 16
    :goto_3
    iget-object v11, v0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    if-eqz v11, :cond_4

    sget-object v10, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    invoke-static/range {v10 .. v15}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0$do;->toString()Ljava/lang/String;

    move-result-object v10

    .line 18
    new-instance v11, Lcom/apk/tg0;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/apk/tg0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 19
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scheme == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final for(Ljava/lang/String;)Lcom/apk/tg0$do;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#"

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$this$toQueryNamesAndValues"

    .line 3
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    const/16 v4, 0x26

    const/4 v5, 0x4

    .line 6
    invoke-static {p1, v4, v3, v2, v5}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    const/16 v7, 0x3d

    .line 8
    invoke-static {p1, v7, v3, v2, v5}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v5, v6, :cond_2

    if-le v5, v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 10
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    return-object p0
.end method

.method public final if()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/tg0$do;->try:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v2, "scheme"

    .line 2
    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_2

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "https"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    goto :goto_1

    :cond_2
    const-string v2, "http"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x50

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public final new(Lcom/apk/tg0;Ljava/lang/String;)Lcom/apk/tg0$do;
    .locals 30
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    const-string v2, "input"

    invoke-static {v12, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 1
    invoke-static {v12, v2, v2, v3}, Lcom/apk/jh0;->native(Ljava/lang/String;III)I

    move-result v3

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v12, v3, v4}, Lcom/apk/jh0;->public(Ljava/lang/String;II)I

    move-result v13

    sub-int v4, v13, v3

    const/4 v5, 0x2

    const/16 v6, 0x3a

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ge v4, v5, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x61

    .line 4
    invoke-static {v4, v9}, Lcom/apk/nd0;->try(II)I

    move-result v10

    const/16 v11, 0x5a

    const/16 v14, 0x7a

    const/16 v15, 0x41

    if-ltz v10, :cond_1

    invoke-static {v4, v14}, Lcom/apk/nd0;->try(II)I

    move-result v10

    if-lez v10, :cond_2

    :cond_1
    invoke-static {v4, v15}, Lcom/apk/nd0;->try(II)I

    move-result v10

    if-ltz v10, :cond_c

    invoke-static {v4, v11}, Lcom/apk/nd0;->try(II)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_5

    :cond_2
    move v4, v3

    :goto_0
    add-int/2addr v4, v8

    if-ge v4, v13, :cond_c

    .line 5
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-le v9, v10, :cond_3

    goto :goto_1

    :cond_3
    if-lt v14, v10, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-le v15, v10, :cond_5

    goto :goto_2

    :cond_5
    if-lt v11, v10, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    const/16 v9, 0x39

    const/16 v11, 0x30

    if-le v11, v10, :cond_7

    goto :goto_3

    :cond_7
    if-lt v9, v10, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v9, 0x2b

    if-ne v10, v9, :cond_9

    goto :goto_4

    :cond_9
    const/16 v9, 0x2d

    if-ne v10, v9, :cond_a

    goto :goto_4

    :cond_a
    const/16 v9, 0x2e

    if-ne v10, v9, :cond_b

    :goto_4
    const/16 v9, 0x61

    const/16 v11, 0x5a

    goto :goto_0

    :cond_b
    if-ne v10, v6, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v4, -0x1

    :goto_6
    const-string v14, "http"

    const-string v15, "https"

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v7, :cond_f

    const-string v6, "https:"

    .line 6
    invoke-static {v12, v6, v3, v8}, Lcom/apk/ie0;->native(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 7
    iput-object v15, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x6

    goto :goto_7

    :cond_d
    const-string v6, "http:"

    .line 8
    invoke-static {v12, v6, v3, v8}, Lcom/apk/ie0;->native(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 9
    iput-object v14, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_7

    .line 10
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11
    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v1, :cond_3d

    .line 13
    iget-object v2, v1, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 14
    iput-object v2, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    :goto_7
    const/4 v2, 0x0

    move v4, v3

    :goto_8
    const/16 v6, 0x2f

    const/16 v9, 0x5c

    if-ge v4, v13, :cond_11

    .line 15
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_10

    if-ne v10, v6, :cond_11

    :cond_10
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/16 v4, 0x23

    if-ge v2, v5, :cond_15

    if-eqz v1, :cond_15

    .line 16
    iget-object v5, v1, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 17
    iget-object v10, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_12

    goto :goto_9

    .line 18
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/apk/tg0;->try()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/apk/tg0;->do()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    .line 20
    iget-object v2, v1, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 21
    iput-object v2, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    .line 22
    iget v2, v1, Lcom/apk/tg0;->case:I

    .line 23
    iput v2, v0, Lcom/apk/tg0$do;->try:I

    .line 24
    iget-object v2, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 25
    iget-object v2, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/apk/tg0;->for()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v13, :cond_13

    .line 26
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_14

    .line 27
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/apk/tg0;->new()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/tg0$do;->for(Ljava/lang/String;)Lcom/apk/tg0$do;

    :cond_14
    const/4 v1, 0x1

    move/from16 v18, v13

    goto/16 :goto_19

    :cond_15
    :goto_9
    add-int/2addr v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v10, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_a
    const-string v1, "@/\\?#"

    .line 28
    invoke-static {v12, v1, v10, v13}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    if-eq v8, v13, :cond_16

    .line 29
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_16
    const/4 v1, -0x1

    :goto_b
    if-eq v1, v7, :cond_1b

    if-eq v1, v4, :cond_1b

    if-eq v1, v6, :cond_1b

    if-eq v1, v9, :cond_1b

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x40

    if-eq v1, v2, :cond_17

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object v13, v11

    goto/16 :goto_e

    :cond_17
    const-string v9, "%40"

    if-nez v16, :cond_1a

    const/16 v1, 0x3a

    .line 30
    invoke-static {v12, v1, v10, v8}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v7

    .line 31
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v10

    move v4, v7

    move v10, v7

    move/from16 v7, v18

    move/from16 v23, v8

    move/from16 v8, v19

    move-object/from16 v24, v9

    move/from16 v9, v20

    move/from16 v25, v10

    move-object/from16 v10, v21

    move/from16 v18, v13

    move-object v13, v11

    move/from16 v11, v22

    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_18

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    move-object/from16 v4, v24

    invoke-static {v2, v3, v4, v1}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_18
    iput-object v1, v0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    move/from16 v11, v23

    move/from16 v1, v25

    if-eq v1, v11, :cond_19

    .line 34
    sget-object v2, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v1, v2

    move-object/from16 v2, p2

    move v4, v11

    move/from16 v23, v11

    move/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    const/16 v16, 0x1

    goto :goto_c

    :cond_19
    move/from16 v23, v11

    :goto_c
    const/16 v17, 0x1

    move-object/from16 v19, v14

    goto :goto_d

    :cond_1a
    move/from16 v23, v8

    move-object v4, v9

    move/from16 v18, v13

    move-object v13, v11

    .line 35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, v23

    move-object/from16 v10, v19

    move-object/from16 v19, v14

    move-object v14, v11

    move/from16 v11, v20

    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    :goto_d
    move/from16 v14, v23

    add-int/lit8 v10, v14, 0x1

    :goto_e
    const/16 v4, 0x23

    const/16 v6, 0x2f

    const/4 v7, -0x1

    const/16 v9, 0x5c

    move-object v11, v13

    move/from16 v13, v18

    move-object/from16 v14, v19

    goto/16 :goto_a

    :cond_1b
    move/from16 v18, v13

    move-object/from16 v19, v14

    move v14, v8

    move-object v13, v11

    move v8, v10

    :goto_f
    if-ge v8, v14, :cond_1f

    .line 36
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v14, :cond_1d

    .line 37
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1c

    :cond_1d
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1e
    move v11, v8

    goto :goto_11

    :cond_1f
    move v11, v14

    :goto_11
    add-int/lit8 v9, v11, 0x1

    if-ge v9, v14, :cond_24

    .line 38
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    invoke-static/range {v1 .. v6}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/sb0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    .line 39
    :try_start_0
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf8

    const/4 v4, 0x1

    move-object/from16 v2, p2

    move v3, v9

    move v4, v14

    move/from16 v26, v9

    move v9, v15

    move v15, v10

    move-object/from16 v10, v16

    move/from16 p1, v11

    move/from16 v11, v17

    :try_start_1
    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const v2, 0xffff

    const/4 v3, 0x1

    if-le v3, v1, :cond_20

    goto :goto_12

    :cond_20
    if-lt v2, v1, :cond_21

    const/4 v4, 0x1

    goto :goto_13

    :catch_0
    const/4 v3, 0x1

    goto :goto_12

    :catch_1
    move/from16 v26, v9

    move v15, v10

    move/from16 p1, v11

    :cond_21
    :goto_12
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 41
    :goto_13
    iput v1, v0, Lcom/apk/tg0$do;->try:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_23

    const/16 v1, 0x22

    move v10, v15

    goto/16 :goto_17

    :cond_23
    const-string v1, "Invalid URL port: \""

    .line 42
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, v26

    invoke-virtual {v12, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    move/from16 p1, v11

    const/16 v7, 0x22

    const/4 v8, 0x1

    .line 44
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lcom/apk/tg0$if;->for(Lcom/apk/tg0$if;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/sb0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    .line 45
    iget-object v1, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v2, "scheme"

    .line 46
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_26

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_25

    goto :goto_15

    .line 48
    :cond_25
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x1bb

    goto :goto_16

    :cond_26
    move-object/from16 v2, v19

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x50

    goto :goto_16

    :cond_27
    :goto_15
    const/4 v1, -0x1

    .line 50
    :goto_16
    iput v1, v0, Lcom/apk/tg0$do;->try:I

    const/16 v1, 0x22

    const/4 v4, 0x1

    .line 51
    :goto_17
    iget-object v2, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_18

    :cond_28
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_3c

    move v1, v4

    move v3, v14

    :goto_19
    const-string v2, "?#"

    move/from16 v4, v18

    .line 52
    invoke-static {v12, v2, v3, v4}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    if-ne v3, v2, :cond_29

    move-object v13, v0

    move v15, v2

    move v14, v4

    move-object v1, v12

    move-object v2, v1

    goto/16 :goto_26

    .line 53
    :cond_29
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, ""

    const/16 v7, 0x2f

    if-eq v5, v7, :cond_2b

    const/16 v7, 0x5c

    if-ne v5, v7, :cond_2a

    goto :goto_1a

    .line 54
    :cond_2a
    iget-object v5, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v5, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    move-object/from16 v16, v11

    move v14, v1

    move v13, v2

    move v15, v13

    move v5, v3

    move/from16 v17, v4

    move-object v1, v12

    move-object v2, v1

    move-object v10, v2

    move-object v12, v6

    goto :goto_1c

    .line 55
    :cond_2b
    :goto_1a
    iget-object v5, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 56
    iget-object v5, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    move-object v9, v8

    move v5, v2

    move v13, v4

    move-object v7, v6

    move v4, v5

    move v6, v3

    move-object v2, v12

    move v3, v1

    move-object v1, v2

    :goto_1b
    add-int/2addr v6, v3

    move v14, v3

    move v15, v4

    move-object/from16 v16, v8

    move-object v11, v9

    move-object v10, v12

    move/from16 v17, v13

    move v13, v5

    move v5, v6

    move-object v12, v7

    :goto_1c
    if-ge v5, v13, :cond_39

    const-string v3, "/\\"

    .line 57
    invoke-static {v10, v3, v5, v13}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v9

    if-ge v9, v13, :cond_2c

    const/4 v3, 0x1

    const/16 v18, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v3, 0x0

    const/16 v18, 0x0

    :goto_1d
    const/4 v8, 0x1

    .line 58
    sget-object v3, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xf0

    const-string v7, " \"<>^`{}|/\\?#"

    move-object v4, v10

    move v6, v9

    move/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move/from16 v10, v20

    move-object/from16 v27, v11

    move/from16 v11, v21

    move-object/from16 v28, v12

    move-object/from16 v12, v22

    move/from16 v20, v13

    move/from16 v13, v23

    invoke-static/range {v3 .. v13}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 59
    invoke-static {v3, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "%2e"

    invoke-static {v3, v4, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_1e

    :cond_2d
    const/4 v4, 0x0

    goto :goto_1f

    :cond_2e
    :goto_1e
    const/4 v4, 0x1

    :goto_1f
    if-eqz v4, :cond_2f

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    goto/16 :goto_25

    :cond_2f
    const-string v4, ".."

    .line 60
    invoke-static {v3, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "%2e."

    .line 61
    invoke-static {v3, v4, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, ".%2e"

    .line 62
    invoke-static {v3, v4, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "%2e%2e"

    .line 63
    invoke-static {v3, v4, v14}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_20

    :cond_30
    const/4 v4, 0x0

    goto :goto_21

    :cond_31
    :goto_20
    const/4 v4, 0x1

    :goto_21
    if-eqz v4, :cond_34

    move-object/from16 v9, v27

    .line 64
    iget-object v3, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    const/4 v3, 0x1

    goto :goto_22

    :cond_32
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_33

    iget-object v3, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v14

    if-eqz v3, :cond_33

    .line 66
    iget-object v3, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    move-object/from16 v6, v28

    invoke-interface {v3, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_33
    move-object/from16 v6, v28

    .line 67
    iget-object v3, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_34
    move-object/from16 v9, v27

    move-object/from16 v6, v28

    .line 68
    iget-object v4, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x1

    goto :goto_23

    :cond_35
    const/4 v4, 0x0

    :goto_23
    if-eqz v4, :cond_36

    .line 69
    iget-object v4, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 70
    :cond_36
    iget-object v4, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    if-eqz v18, :cond_37

    .line 71
    iget-object v3, v9, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_25
    if-eqz v18, :cond_38

    move-object v7, v6

    move v3, v14

    move v4, v15

    move-object/from16 v8, v16

    move/from16 v13, v17

    move-object/from16 v12, v19

    move/from16 v5, v20

    move/from16 v6, v24

    goto/16 :goto_1b

    :cond_38
    move-object v12, v6

    move-object v11, v9

    move-object/from16 v10, v19

    move/from16 v13, v20

    move/from16 v5, v24

    goto/16 :goto_1c

    :cond_39
    move-object/from16 v13, v16

    move/from16 v14, v17

    :goto_26
    if-ge v15, v14, :cond_3a

    .line 72
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_3a

    const/16 v12, 0x23

    .line 73
    invoke-static {v2, v12, v15, v14}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v16

    .line 74
    sget-object v11, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    add-int/lit8 v5, v15, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xd0

    const-string v7, " \"\'<>#"

    move-object v3, v11

    move-object v4, v1

    move/from16 v6, v16

    move-object/from16 v29, v11

    move v11, v15

    const/16 v15, 0x23

    move-object/from16 v12, v17

    move-object v15, v13

    move/from16 v13, v18

    invoke-static/range {v3 .. v13}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v29

    .line 75
    invoke-virtual {v4, v3}, Lcom/apk/tg0$if;->new(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v15, Lcom/apk/tg0$do;->else:Ljava/util/List;

    move/from16 v3, v16

    goto :goto_27

    :cond_3a
    move v3, v15

    move-object v15, v13

    :goto_27
    const/16 v12, 0x23

    if-ge v3, v14, :cond_3b

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_3b

    .line 77
    sget-object v2, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    add-int/lit8 v5, v3, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0xb0

    const-string v7, ""

    move-object v3, v2

    move-object v4, v1

    move v6, v14

    invoke-static/range {v3 .. v13}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    :cond_3b
    return-object v15

    :cond_3c
    const-string v2, "Invalid URL host: \""

    .line 78
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v14, p1

    invoke-virtual {v12, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final query(Ljava/lang/String;)Lcom/apk/tg0$do;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    sget-object v1, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const-string v5, " \"\'<>#"

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v11}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$this$toQueryNamesAndValues"

    .line 3
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    const/16 v4, 0x26

    const/4 v5, 0x4

    .line 6
    invoke-static {p1, v4, v3, v2, v5}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    const/16 v7, 0x3d

    .line 8
    invoke-static {p1, v7, v3, v2, v5}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v5, v6, :cond_2

    if-le v5, v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 10
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x3a

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_6
    iget-object v1, p0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    .line 13
    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-static {v1, v4, v3, v2}, Lcom/apk/ie0;->do(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x5b

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 17
    :cond_7
    iget-object v1, p0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    :goto_4
    iget v1, p0, Lcom/apk/tg0$do;->try:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 19
    :cond_9
    invoke-virtual {p0}, Lcom/apk/tg0$do;->if()I

    move-result v1

    .line 20
    iget-object v6, p0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-static {v6}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v7, "scheme"

    .line 21
    invoke-static {v6, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x310888    # 4.503E-39f

    if-eq v7, v8, :cond_b

    const v8, 0x5f008eb

    if-eq v7, v8, :cond_a

    goto :goto_5

    :cond_a
    const-string v7, "https"

    .line 23
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v5, 0x1bb

    goto :goto_5

    :cond_b
    const-string v7, "http"

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v5, 0x50

    :cond_c
    :goto_5
    if-eq v1, v5, :cond_e

    .line 25
    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    :cond_e
    iget-object v1, p0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    const-string v4, "$this$toPathString"

    .line 28
    invoke-static {v1, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_f

    const/16 v7, 0x2f

    .line 30
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 32
    :cond_f
    iget-object v1, p0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    if-eqz v1, :cond_13

    const/16 v1, 0x3f

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v5, "$this$toQueryString"

    .line 35
    invoke-static {v1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/apk/yd0;->for(II)Lcom/apk/xd0;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/apk/yd0;->if(Lcom/apk/vd0;I)Lcom/apk/vd0;

    move-result-object v2

    .line 37
    iget v3, v2, Lcom/apk/vd0;->do:I

    .line 38
    iget v4, v2, Lcom/apk/vd0;->if:I

    .line 39
    iget v2, v2, Lcom/apk/vd0;->for:I

    if-ltz v2, :cond_10

    if-gt v3, v4, :cond_13

    goto :goto_7

    :cond_10
    if-lt v3, v4, :cond_13

    .line 40
    :goto_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 41
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_11

    const/16 v7, 0x26

    .line 42
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :cond_11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_12

    const/16 v5, 0x3d

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eq v3, v4, :cond_13

    add-int/2addr v3, v2

    goto :goto_7

    .line 46
    :cond_13
    iget-object v1, p0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/16 v1, 0x23

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
