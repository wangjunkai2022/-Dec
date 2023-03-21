.class public final Lcom/apk/tg0;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/tg0$do;,
        Lcom/apk/tg0$if;
    }
.end annotation


# static fields
.field public static final break:[C

.field public static final catch:Lcom/apk/tg0$if;


# instance fields
.field public final case:I

.field public final do:Z

.field public final else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final goto:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final this:Ljava/lang/String;

.field public final try:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/tg0$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/tg0$if;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/apk/tg0;->break:[C

    return-void

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "url"

    invoke-static {p9, p6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/tg0;->if:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/tg0;->for:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/tg0;->new:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/tg0;->try:Ljava/lang/String;

    iput p5, p0, Lcom/apk/tg0;->case:I

    iput-object p7, p0, Lcom/apk/tg0;->else:Ljava/util/List;

    iput-object p8, p0, Lcom/apk/tg0;->goto:Ljava/lang/String;

    iput-object p9, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    const-string p2, "https"

    .line 2
    invoke-static {p1, p2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/tg0;->do:Z

    return-void
.end method


# virtual methods
.method public final case()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "/..."

    const-string v1, "link"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Lcom/apk/tg0$do;

    invoke-direct {v1}, Lcom/apk/tg0$do;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/apk/tg0$do;->new(Lcom/apk/tg0;Ljava/lang/String;)Lcom/apk/tg0$do;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v3, ""

    const-string v0, "username"

    .line 4
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfb

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v12}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    const-string v3, ""

    const-string v0, "password"

    .line 6
    invoke-static {v3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v12}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lcom/apk/tg0$do;->do()Lcom/apk/tg0;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/apk/tg0;->this:Ljava/lang/String;

    return-object v0
.end method

.method public final do()Ljava/lang/String;
    .locals 6
    .annotation build Lkotlin/jvm/JvmName;
        name = "encodedPassword"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->new:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Lcom/apk/tg0;->if:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x4

    invoke-static {v0, v3, v4, v2, v5}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    const/16 v3, 0x40

    const/4 v4, 0x6

    invoke-static {v1, v3, v2, v2, v4}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final else()Ljava/net/URI;
    .locals 25
    .annotation build Lkotlin/jvm/JvmName;
        name = "uri"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/apk/tg0$do;

    invoke-direct {v0}, Lcom/apk/tg0$do;-><init>()V

    .line 2
    iget-object v2, v1, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/apk/tg0$do;->do:Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0;->try()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<set-?>"

    .line 5
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v2, v0, Lcom/apk/tg0$do;->if:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0;->do()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v2, v0, Lcom/apk/tg0$do;->for:Ljava/lang/String;

    .line 10
    iget-object v2, v1, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    .line 12
    iget v2, v1, Lcom/apk/tg0;->case:I

    iget-object v3, v1, Lcom/apk/tg0;->if:Ljava/lang/String;

    const-string v4, "scheme"

    .line 13
    invoke-static {v3, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x310888    # 4.503E-39f

    const/4 v6, -0x1

    if-eq v4, v5, :cond_1

    const v5, 0x5f008eb

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "https"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    goto :goto_1

    :cond_1
    const-string v4, "http"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eq v2, v3, :cond_3

    .line 17
    iget v6, v1, Lcom/apk/tg0;->case:I

    .line 18
    :cond_3
    iput v6, v0, Lcom/apk/tg0$do;->try:I

    .line 19
    iget-object v2, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    .line 20
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 21
    iget-object v2, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0;->for()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/apk/tg0;->new()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/tg0$do;->for(Ljava/lang/String;)Lcom/apk/tg0$do;

    .line 24
    iget-object v2, v1, Lcom/apk/tg0;->goto:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_2

    .line 25
    :cond_4
    iget-object v2, v1, Lcom/apk/tg0;->this:Ljava/lang/String;

    const/16 v5, 0x23

    const/4 v6, 0x6

    invoke-static {v2, v5, v4, v4, v6}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 26
    iget-object v5, v1, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :goto_2
    iput-object v2, v0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    .line 28
    iget-object v2, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    const-string v5, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    const-string v6, "replacement"

    const-string v7, "input"

    const-string v8, ""

    const-string v9, "nativePattern"

    const-string v10, "Pattern.compile(pattern)"

    const-string v11, "pattern"

    if-eqz v2, :cond_5

    const-string v12, "[\"<>^`{|}]"

    .line 29
    invoke-static {v12, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {v12, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v2, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v12, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v2, v3

    .line 34
    :goto_3
    iput-object v2, v0, Lcom/apk/tg0$do;->new:Ljava/lang/String;

    .line 35
    iget-object v2, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_6

    .line 36
    iget-object v13, v0, Lcom/apk/tg0$do;->case:Ljava/util/List;

    sget-object v14, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xe3

    const-string v18, "[]"

    invoke-static/range {v14 .. v24}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 37
    :cond_6
    iget-object v2, v0, Lcom/apk/tg0$do;->else:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    :goto_5
    if-ge v4, v12, :cond_8

    .line 39
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_7

    sget-object v14, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xc3

    const-string v18, "\\^`{|}"

    invoke-static/range {v14 .. v24}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_7
    move-object v13, v3

    :goto_6
    invoke-interface {v2, v4, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 40
    :cond_8
    iget-object v14, v0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    if-eqz v14, :cond_9

    sget-object v13, Lcom/apk/tg0;->catch:Lcom/apk/tg0$if;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0xa3

    const-string v17, " \"#<>\\^`{|}"

    invoke-static/range {v13 .. v23}, Lcom/apk/tg0$if;->do(Lcom/apk/tg0$if;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    :cond_9
    iput-object v3, v0, Lcom/apk/tg0$do;->goto:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/apk/tg0$do;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    .line 43
    invoke-static {v3, v11}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {v3, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v2, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "try {\n        val stripp\u2026e) // Unexpected!\n      }"

    .line 49
    invoke-static {v0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    return-object v0

    .line 50
    :catch_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 51
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/apk/tg0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/tg0;

    iget-object p1, p1, Lcom/apk/tg0;->this:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final for()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "encodedPathSegments"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/tg0;->if:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v4, v0, v3}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v4, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-static {v4, v2, v0, v1}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final if()Ljava/lang/String;
    .locals 5
    .annotation build Lkotlin/jvm/JvmName;
        name = "encodedPath"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/tg0;->if:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v3, v0, v2}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final new()Ljava/lang/String;
    .locals 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "encodedQuery"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->else:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    const/16 v1, 0x3f

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/apk/ie0;->this(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/apk/jh0;->goto(Ljava/lang/String;CII)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query()Ljava/lang/String;
    .locals 8
    .annotation build Lkotlin/jvm/JvmName;
        name = "query"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->else:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/apk/tg0;->else:Ljava/util/List;

    const-string v2, "$this$toQueryString"

    .line 4
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "out"

    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/apk/yd0;->for(II)Lcom/apk/xd0;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/apk/yd0;->if(Lcom/apk/vd0;I)Lcom/apk/vd0;

    move-result-object v2

    .line 6
    iget v3, v2, Lcom/apk/vd0;->do:I

    .line 7
    iget v4, v2, Lcom/apk/vd0;->if:I

    .line 8
    iget v2, v2, Lcom/apk/vd0;->for:I

    if-ltz v2, :cond_1

    if-gt v3, v4, :cond_4

    goto :goto_0

    :cond_1
    if-lt v3, v4, :cond_4

    .line 9
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 10
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_2

    const/16 v7, 0x26

    .line 11
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const/16 v5, 0x3d

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eq v3, v4, :cond_4

    add-int/2addr v3, v2

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    return-object v0
.end method

.method public final try()Ljava/lang/String;
    .locals 4
    .annotation build Lkotlin/jvm/JvmName;
        name = "encodedUsername"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/tg0;->for:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/apk/tg0;->if:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 3
    iget-object v1, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v3, v0, v2}, Lcom/apk/jh0;->this(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/apk/tg0;->this:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
