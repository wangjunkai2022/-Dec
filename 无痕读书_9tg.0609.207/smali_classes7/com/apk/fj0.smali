.class public final Lcom/apk/fj0;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fj0$do;,
        Lcom/apk/fj0$if;
    }
.end annotation


# static fields
.field public static final case:Lcom/apk/fj0;

.field public static final try:Ljava/util/logging/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final do:Lcom/apk/fj0$do;

.field public final for:Lcom/apk/tk0;

.field public final if:Lcom/apk/vi0$do;

.field public final new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/apk/wi0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/apk/fj0;->try:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/apk/tk0;Z)V
    .locals 3
    .param p1    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    iput-boolean p2, p0, Lcom/apk/fj0;->new:Z

    .line 2
    new-instance p2, Lcom/apk/fj0$do;

    invoke-direct {p2, p1}, Lcom/apk/fj0$do;-><init>(Lcom/apk/tk0;)V

    iput-object p2, p0, Lcom/apk/fj0;->do:Lcom/apk/fj0$do;

    .line 3
    new-instance p1, Lcom/apk/vi0$do;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/apk/vi0$do;-><init>(Lcom/apk/ll0;III)V

    iput-object p1, p0, Lcom/apk/fj0;->if:Lcom/apk/vi0$do;

    return-void
.end method


# virtual methods
.method public final break(IIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fj0;->do:Lcom/apk/fj0$do;

    .line 2
    iput p1, v0, Lcom/apk/fj0$do;->new:I

    .line 3
    iput p1, v0, Lcom/apk/fj0$do;->do:I

    .line 4
    iput p2, v0, Lcom/apk/fj0$do;->try:I

    .line 5
    iput p3, v0, Lcom/apk/fj0$do;->if:I

    .line 6
    iput p4, v0, Lcom/apk/fj0$do;->for:I

    .line 7
    iget-object p1, p0, Lcom/apk/fj0;->if:Lcom/apk/vi0$do;

    .line 8
    :cond_0
    :goto_0
    iget-object p2, p1, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    invoke-interface {p2}, Lcom/apk/tk0;->else()Z

    move-result p2

    if-nez p2, :cond_d

    .line 9
    iget-object p2, p1, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    invoke-interface {p2}, Lcom/apk/tk0;->readByte()B

    move-result p2

    const/16 p3, 0xff

    invoke-static {p2, p3}, Lcom/apk/jh0;->do(BI)I

    move-result p2

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/apk/vi0$do;->else(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 11
    sget-object p3, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 12
    sget-object p3, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 13
    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 14
    sget-object p3, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 15
    sget-object p3, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 16
    aget-object p2, p3, p2

    .line 17
    iget-object p3, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    sget-object p3, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 19
    sget-object p3, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 20
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lcom/apk/vi0$do;->if(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 21
    iget-object p4, p1, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v0, p4

    if-ge p3, v0, :cond_3

    .line 22
    iget-object p2, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-static {p3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 24
    sget-object p2, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/apk/vi0;->do(Lcom/apk/uk0;)Lcom/apk/uk0;

    .line 25
    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/apk/ui0;

    invoke-direct {v0, p4, p2}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    invoke-virtual {p1, p3, v0}, Lcom/apk/vi0$do;->try(ILcom/apk/ui0;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p4, :cond_6

    const/16 p4, 0x3f

    .line 27
    invoke-virtual {p1, p2, p4}, Lcom/apk/vi0$do;->else(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 28
    invoke-virtual {p1, p2}, Lcom/apk/vi0$do;->new(I)Lcom/apk/uk0;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p4

    .line 30
    new-instance v0, Lcom/apk/ui0;

    invoke-direct {v0, p2, p4}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    invoke-virtual {p1, p3, v0}, Lcom/apk/vi0$do;->try(ILcom/apk/ui0;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/apk/vi0$do;->else(II)I

    move-result p2

    iput p2, p1, Lcom/apk/vi0$do;->goto:I

    if-ltz p2, :cond_8

    .line 32
    iget p3, p1, Lcom/apk/vi0$do;->else:I

    if-gt p2, p3, :cond_8

    .line 33
    iget p3, p1, Lcom/apk/vi0$do;->case:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 34
    invoke-virtual {p1}, Lcom/apk/vi0$do;->do()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 35
    invoke-virtual {p1, p3}, Lcom/apk/vi0$do;->for(I)I

    goto/16 :goto_0

    .line 36
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lcom/apk/vi0$do;->goto:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/apk/vi0$do;->else(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 38
    invoke-virtual {p1, p2}, Lcom/apk/vi0$do;->new(I)Lcom/apk/uk0;

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p3

    .line 40
    iget-object p4, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    new-instance v0, Lcom/apk/ui0;

    invoke-direct {v0, p2, p3}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_b
    :goto_2
    sget-object p2, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apk/vi0;->do(Lcom/apk/uk0;)Lcom/apk/uk0;

    .line 42
    invoke-virtual {p1}, Lcom/apk/vi0$do;->case()Lcom/apk/uk0;

    move-result-object p2

    .line 43
    iget-object p4, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    new-instance v0, Lcom/apk/ui0;

    invoke-direct {v0, p3, p2}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_d
    iget-object p1, p0, Lcom/apk/fj0;->if:Lcom/apk/vi0$do;

    .line 46
    iget-object p2, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    invoke-static {p2}, Lcom/apk/uc0;->this(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 47
    iget-object p1, p1, Lcom/apk/vi0$do;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/ll0;->close()V

    return-void
.end method

.method public final for(ZLcom/apk/fj0$if;)Z
    .locals 16
    .param p2    # Lcom/apk/fj0$if;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "handler"

    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lcom/apk/tk0;->native(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-static {v3}, Lcom/apk/jh0;->extends(Lcom/apk/tk0;)I

    move-result v3

    const/16 v10, 0x4000

    if-gt v3, v10, :cond_36

    .line 3
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->readByte()B

    move-result v4

    and-int/lit16 v11, v4, 0xff

    .line 4
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->readByte()B

    move-result v4

    and-int/lit16 v12, v4, 0xff

    .line 5
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->readInt()I

    move-result v4

    const v13, 0x7fffffff

    and-int v14, v4, v13

    .line 6
    sget-object v4, Lcom/apk/fj0;->try:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v15, Lcom/apk/fj0;->try:Ljava/util/logging/Logger;

    sget-object v4, Lcom/apk/wi0;->try:Lcom/apk/wi0;

    const/4 v5, 0x1

    move v6, v14

    move v7, v3

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/apk/wi0;->if(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x4

    if-eqz p1, :cond_2

    if-ne v11, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected a SETTINGS frame but was "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/apk/wi0;->try:Lcom/apk/wi0;

    invoke-virtual {v3, v11}, Lcom/apk/wi0;->do(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v7, " > remaining length "

    const-string v8, "PROTOCOL_ERROR padding "

    const/16 v9, 0x8

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    int-to-long v2, v3

    invoke-interface {v1, v2, v3}, Lcom/apk/tk0;->skip(J)V

    goto/16 :goto_c

    :pswitch_0
    if-ne v3, v4, :cond_4

    .line 9
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readInt()I

    move-result v2

    const-wide/32 v3, 0x7fffffff

    int-to-long v5, v2

    and-long v2, v5, v3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v1, v14, v2, v3}, Lcom/apk/fj0$if;->try(IJ)V

    goto/16 :goto_c

    .line 11
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v2, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-lt v3, v9, :cond_b

    if-nez v14, :cond_a

    .line 13
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readInt()I

    move-result v2

    .line 14
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->readInt()I

    move-result v4

    sub-int/2addr v3, v9

    .line 15
    invoke-static {}, Lcom/apk/ti0;->values()[Lcom/apk/ti0;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 16
    iget v10, v9, Lcom/apk/ti0;->do:I

    if-ne v10, v4, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_6

    move-object v5, v9

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 17
    sget-object v4, Lcom/apk/uk0;->new:Lcom/apk/uk0;

    if-lez v3, :cond_8

    .line 18
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    int-to-long v6, v3

    invoke-interface {v4, v6, v7}, Lcom/apk/tk0;->new(J)Lcom/apk/uk0;

    move-result-object v4

    .line 19
    :cond_8
    invoke-interface {v1, v2, v5, v4}, Lcom/apk/fj0$if;->catch(ILcom/apk/ti0;Lcom/apk/uk0;)V

    goto/16 :goto_c

    .line 20
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    .line 21
    invoke-static {v2, v4}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY length < 8: "

    invoke-static {v2, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-ne v3, v9, :cond_e

    if-nez v14, :cond_d

    .line 25
    iget-object v3, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v3}, Lcom/apk/tk0;->readInt()I

    move-result v3

    .line 26
    iget-object v4, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v4}, Lcom/apk/tk0;->readInt()I

    move-result v4

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_c

    const/4 v2, 0x1

    .line 27
    :cond_c
    invoke-interface {v1, v2, v3, v4}, Lcom/apk/fj0$if;->else(ZII)V

    goto/16 :goto_c

    .line 28
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING length != 8: "

    invoke-static {v2, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    if-eqz v14, :cond_12

    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_f

    .line 30
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 31
    :cond_f
    iget-object v5, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v5}, Lcom/apk/tk0;->readInt()I

    move-result v5

    and-int/2addr v5, v13

    add-int/lit8 v3, v3, -0x4

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, -0x1

    :cond_10
    if-gt v2, v3, :cond_11

    sub-int/2addr v3, v2

    .line 32
    invoke-virtual {v0, v3, v2, v12, v14}, Lcom/apk/fj0;->break(IIII)Ljava/util/List;

    move-result-object v2

    .line 33
    invoke-interface {v1, v14, v5, v2}, Lcom/apk/fj0$if;->break(IILjava/util/List;)V

    goto/16 :goto_c

    .line 34
    :cond_11
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    if-nez v14, :cond_20

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_14

    if-nez v3, :cond_13

    .line 36
    invoke-interface/range {p2 .. p2}, Lcom/apk/fj0$if;->if()V

    goto/16 :goto_c

    .line 37
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_14
    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1f

    .line 39
    new-instance v5, Lcom/apk/lj0;

    invoke-direct {v5}, Lcom/apk/lj0;-><init>()V

    .line 40
    invoke-static {v2, v3}, Lcom/apk/yd0;->for(II)Lcom/apk/xd0;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v3, v7}, Lcom/apk/yd0;->if(Lcom/apk/vd0;I)Lcom/apk/vd0;

    move-result-object v3

    .line 41
    iget v7, v3, Lcom/apk/vd0;->do:I

    .line 42
    iget v8, v3, Lcom/apk/vd0;->if:I

    .line 43
    iget v3, v3, Lcom/apk/vd0;->for:I

    if-ltz v3, :cond_15

    if-gt v7, v8, :cond_1e

    goto :goto_4

    :cond_15
    if-lt v7, v8, :cond_1e

    .line 44
    :goto_4
    iget-object v9, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v9}, Lcom/apk/tk0;->readShort()S

    move-result v9

    const v11, 0xffff

    and-int/2addr v9, v11

    .line 45
    iget-object v11, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v11}, Lcom/apk/tk0;->readInt()I

    move-result v11

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1b

    const/4 v12, 0x3

    if-eq v9, v12, :cond_1a

    if-eq v9, v4, :cond_18

    if-eq v9, v6, :cond_16

    goto :goto_5

    :cond_16
    if-lt v11, v10, :cond_17

    const v12, 0xffffff

    if-gt v11, v12, :cond_17

    goto :goto_5

    .line 46
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v2, v11}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const/4 v9, 0x7

    if-ltz v11, :cond_19

    goto :goto_5

    .line 47
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    const/4 v9, 0x4

    goto :goto_5

    :cond_1b
    if-eqz v11, :cond_1d

    if-ne v11, v15, :cond_1c

    goto :goto_5

    .line 48
    :cond_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1d
    :goto_5
    invoke-virtual {v5, v9, v11}, Lcom/apk/lj0;->for(II)Lcom/apk/lj0;

    if-eq v7, v8, :cond_1e

    add-int/2addr v7, v3

    goto :goto_4

    .line 50
    :cond_1e
    invoke-interface {v1, v2, v5}, Lcom/apk/fj0$if;->for(ZLcom/apk/lj0;)V

    goto/16 :goto_c

    .line 51
    :cond_1f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v2, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_20
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    if-ne v3, v4, :cond_26

    if-eqz v14, :cond_25

    .line 53
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readInt()I

    move-result v2

    .line 54
    invoke-static {}, Lcom/apk/ti0;->values()[Lcom/apk/ti0;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_23

    aget-object v7, v3, v6

    .line 55
    iget v8, v7, Lcom/apk/ti0;->do:I

    if-ne v8, v2, :cond_21

    const/4 v8, 0x1

    goto :goto_7

    :cond_21
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_22

    move-object v5, v7

    goto :goto_8

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_23
    :goto_8
    if-eqz v5, :cond_24

    .line 56
    invoke-interface {v1, v14, v5}, Lcom/apk/fj0$if;->this(ILcom/apk/ti0;)V

    goto/16 :goto_c

    .line 57
    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v3, "TYPE_RST_STREAM unexpected error code: "

    .line 58
    invoke-static {v3, v2}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_25
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v2, v3, v4}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    if-ne v3, v6, :cond_28

    if-eqz v14, :cond_27

    .line 62
    invoke-virtual {v0, v1, v14}, Lcom/apk/fj0;->throw(Lcom/apk/fj0$if;I)V

    goto/16 :goto_c

    .line 63
    :cond_27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_28
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v2, v3, v4}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    if-eqz v14, :cond_2e

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_9

    :cond_29
    const/4 v4, 0x0

    :goto_9
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_2a

    .line 65
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :cond_2a
    and-int/lit8 v6, v12, 0x20

    if-eqz v6, :cond_2b

    .line 66
    invoke-virtual {v0, v1, v14}, Lcom/apk/fj0;->throw(Lcom/apk/fj0$if;I)V

    add-int/lit8 v3, v3, -0x5

    :cond_2b
    if-eqz v5, :cond_2c

    add-int/lit8 v3, v3, -0x1

    :cond_2c
    if-gt v2, v3, :cond_2d

    sub-int/2addr v3, v2

    .line 67
    invoke-virtual {v0, v3, v2, v12, v14}, Lcom/apk/fj0;->break(IIII)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    .line 68
    invoke-interface {v1, v4, v14, v3, v2}, Lcom/apk/fj0$if;->new(ZIILjava/util/List;)V

    goto :goto_c

    .line 69
    :cond_2d
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_2e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    if-eqz v14, :cond_35

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_a

    :cond_2f
    const/4 v4, 0x0

    :goto_a
    and-int/lit8 v5, v12, 0x20

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    goto :goto_b

    :cond_30
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_34

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_31

    .line 71
    iget-object v2, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v2}, Lcom/apk/tk0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :cond_31
    if-eqz v5, :cond_32

    add-int/lit8 v3, v3, -0x1

    :cond_32
    if-gt v2, v3, :cond_33

    sub-int/2addr v3, v2

    .line 72
    iget-object v5, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v1, v4, v14, v5, v3}, Lcom/apk/fj0$if;->case(ZILcom/apk/tk0;I)V

    .line 73
    iget-object v1, v0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/apk/tk0;->skip(J)V

    goto :goto_c

    .line 74
    :cond_33
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Lcom/apk/goto;->synchronized(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_c
    return v15

    .line 77
    :cond_36
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v2, v3}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final throw(Lcom/apk/fj0$if;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/tk0;->readInt()I

    move-result v0

    const-wide v1, 0x80000000L

    long-to-int v2, v1

    and-int v1, v0, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    invoke-interface {v3}, Lcom/apk/tk0;->readByte()B

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lcom/apk/jh0;->do(BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 3
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/apk/fj0$if;->goto(IIIZ)V

    return-void
.end method

.method public final try(Lcom/apk/fj0$if;)V
    .locals 4
    .param p1    # Lcom/apk/fj0$if;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/fj0;->new:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v1, p1}, Lcom/apk/fj0;->for(ZLcom/apk/fj0$if;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/apk/fj0;->for:Lcom/apk/tk0;

    sget-object v0, Lcom/apk/wi0;->do:Lcom/apk/uk0;

    .line 5
    invoke-virtual {v0}, Lcom/apk/uk0;->for()I

    move-result v0

    int-to-long v2, v0

    .line 6
    invoke-interface {p1, v2, v3}, Lcom/apk/tk0;->new(J)Lcom/apk/uk0;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/apk/fj0;->try:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/apk/fj0;->try:Ljava/util/logging/Logger;

    const-string v2, "<< CONNECTION "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apk/uk0;->new()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/apk/jh0;->class(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_2
    sget-object v0, Lcom/apk/wi0;->do:Lcom/apk/uk0;

    invoke-static {v0, p1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected a connection header but was "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
