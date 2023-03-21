.class public final Lcom/apk/vi0$if;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final break:Lcom/apk/rk0;

.field public case:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public do:I

.field public else:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public for:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public goto:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public if:Z

.field public new:[Lcom/apk/ui0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final this:Z

.field public try:I


# direct methods
.method public constructor <init>(IZLcom/apk/rk0;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    const-string p4, "out"

    .line 1
    invoke-static {p3, p4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apk/vi0$if;->goto:I

    iput-boolean p2, p0, Lcom/apk/vi0$if;->this:Z

    iput-object p3, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    const p2, 0x7fffffff

    .line 3
    iput p2, p0, Lcom/apk/vi0$if;->do:I

    .line 4
    iput p1, p0, Lcom/apk/vi0$if;->for:I

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/apk/ui0;

    .line 5
    iput-object p1, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    const/4 p1, 0x7

    .line 6
    iput p1, p0, Lcom/apk/vi0$if;->try:I

    return-void
.end method


# virtual methods
.method public final case(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    invoke-virtual {p2, p1}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    return-void
.end method

.method public final do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    .line 2
    array-length v1, v0

    const-string v2, "$this$fill"

    .line 3
    invoke-static {v0, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apk/vi0$if;->try:I

    .line 6
    iput v2, p0, Lcom/apk/vi0$if;->case:I

    .line 7
    iput v2, p0, Lcom/apk/vi0$if;->else:I

    return-void
.end method

.method public final for(Lcom/apk/ui0;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/apk/ui0;->do:I

    .line 2
    iget v1, p0, Lcom/apk/vi0$if;->for:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/vi0$if;->do()V

    return-void

    .line 4
    :cond_0
    iget v2, p0, Lcom/apk/vi0$if;->else:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 5
    invoke-virtual {p0, v2}, Lcom/apk/vi0$if;->if(I)I

    .line 6
    iget v1, p0, Lcom/apk/vi0$if;->case:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 7
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/apk/ui0;

    const/4 v3, 0x0

    .line 8
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/apk/vi0$if;->try:I

    .line 10
    iput-object v1, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    .line 11
    :cond_1
    iget v1, p0, Lcom/apk/vi0$if;->try:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/apk/vi0$if;->try:I

    .line 12
    iget-object v2, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    aput-object p1, v2, v1

    .line 13
    iget p1, p0, Lcom/apk/vi0$if;->case:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/vi0$if;->case:I

    .line 14
    iget p1, p0, Lcom/apk/vi0$if;->else:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/vi0$if;->else:I

    return-void
.end method

.method public final if(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Lcom/apk/vi0$if;->try:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget v2, v2, Lcom/apk/ui0;->do:I

    sub-int/2addr p1, v2

    .line 4
    iget v2, p0, Lcom/apk/vi0$if;->else:I

    iget-object v3, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget v3, v3, Lcom/apk/ui0;->do:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/apk/vi0$if;->else:I

    .line 5
    iget v2, p0, Lcom/apk/vi0$if;->case:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/apk/vi0$if;->case:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    iget v1, p0, Lcom/apk/vi0$if;->try:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 7
    iget v3, p0, Lcom/apk/vi0$if;->case:I

    .line 8
    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object p1, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    iget v1, p0, Lcom/apk/vi0$if;->try:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    iget p1, p0, Lcom/apk/vi0$if;->try:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/vi0$if;->try:I

    :cond_1
    return v0
.end method

.method public final new(Lcom/apk/uk0;)V
    .locals 11
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/vi0$if;->this:Z

    const/16 v1, 0x7f

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/apk/ij0;->new:Lcom/apk/ij0;

    const-string v0, "bytes"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0xff

    if-ge v5, v0, :cond_0

    .line 4
    invoke-virtual {p1, v5}, Lcom/apk/uk0;->case(I)B

    move-result v9

    .line 5
    invoke-static {v9, v8}, Lcom/apk/jh0;->do(BI)I

    move-result v8

    .line 6
    sget-object v9, Lcom/apk/ij0;->if:[B

    aget-byte v8, v9, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    int-to-long v9, v0

    add-long/2addr v6, v9

    const/4 v0, 0x3

    shr-long v5, v6, v0

    long-to-int v0, v5

    .line 7
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 8
    new-instance v0, Lcom/apk/rk0;

    invoke-direct {v0}, Lcom/apk/rk0;-><init>()V

    .line 9
    sget-object v5, Lcom/apk/ij0;->new:Lcom/apk/ij0;

    const-string v5, "source"

    .line 10
    invoke-static {p1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sink"

    invoke-static {v0, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v5

    move-wide v6, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 12
    invoke-virtual {p1, v2}, Lcom/apk/uk0;->case(I)B

    move-result v4

    .line 13
    invoke-static {v4, v8}, Lcom/apk/jh0;->do(BI)I

    move-result v4

    .line 14
    sget-object v9, Lcom/apk/ij0;->do:[I

    aget v9, v9, v4

    .line 15
    sget-object v10, Lcom/apk/ij0;->if:[B

    aget-byte v4, v10, v4

    shl-long/2addr v6, v4

    int-to-long v9, v9

    or-long/2addr v6, v9

    add-int/2addr v3, v4

    :goto_2
    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x8

    shr-long v9, v6, v3

    long-to-int v4, v9

    .line 16
    invoke-interface {v0, v4}, Lcom/apk/sk0;->writeByte(I)Lcom/apk/sk0;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    rsub-int/lit8 p1, v3, 0x8

    shl-long v4, v6, p1

    const-wide/16 v6, 0xff

    ushr-long v2, v6, v3

    or-long/2addr v2, v4

    long-to-int p1, v2

    .line 17
    invoke-interface {v0, p1}, Lcom/apk/sk0;->writeByte(I)Lcom/apk/sk0;

    .line 18
    :cond_3
    invoke-virtual {v0}, Lcom/apk/rk0;->private()Lcom/apk/uk0;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v0

    const/16 v2, 0x80

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/vi0$if;->case(III)V

    .line 21
    iget-object v0, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    invoke-virtual {v0, p1}, Lcom/apk/rk0;->transient(Lcom/apk/uk0;)Lcom/apk/rk0;

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v0

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/vi0$if;->case(III)V

    .line 24
    iget-object v0, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    invoke-virtual {v0, p1}, Lcom/apk/rk0;->transient(Lcom/apk/uk0;)Lcom/apk/rk0;

    :goto_3
    return-void
.end method

.method public final try(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/vi0$if;->if:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/apk/vi0$if;->do:I

    iget v2, p0, Lcom/apk/vi0$if;->for:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v4, v3}, Lcom/apk/vi0$if;->case(III)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/apk/vi0$if;->if:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lcom/apk/vi0$if;->do:I

    .line 6
    iget v0, p0, Lcom/apk/vi0$if;->for:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/apk/vi0$if;->case(III)V

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/ui0;

    .line 9
    iget-object v4, v3, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-virtual {v4}, Lcom/apk/uk0;->this()Lcom/apk/uk0;

    move-result-object v4

    .line 10
    iget-object v5, v3, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    .line 11
    sget-object v6, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 12
    sget-object v6, Lcom/apk/vi0;->if:Ljava/util/Map;

    .line 13
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x2

    if-le v9, v6, :cond_2

    goto :goto_1

    :cond_2
    if-lt v8, v6, :cond_4

    .line 15
    sget-object v8, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 16
    sget-object v8, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    add-int/lit8 v9, v6, -0x1

    .line 17
    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    invoke-static {v8, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    .line 18
    :cond_3
    sget-object v8, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 19
    sget-object v8, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 20
    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    invoke-static {v8, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v6

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_2
    if-ne v6, v7, :cond_8

    .line 21
    iget v9, p0, Lcom/apk/vi0$if;->try:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    array-length v10, v10

    :goto_3
    if-ge v9, v10, :cond_8

    .line 22
    iget-object v11, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    aget-object v11, v11, v9

    invoke-static {v11}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v11, v11, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-static {v11, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 23
    iget-object v11, p0, Lcom/apk/vi0$if;->new:[Lcom/apk/ui0;

    aget-object v11, v11, v9

    invoke-static {v11}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v11, v11, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    invoke-static {v11, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 24
    iget v6, p0, Lcom/apk/vi0$if;->try:I

    sub-int/2addr v9, v6

    sget-object v6, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 25
    sget-object v6, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 26
    array-length v6, v6

    add-int/2addr v6, v9

    goto :goto_4

    :cond_6
    if-ne v8, v7, :cond_7

    .line 27
    iget v8, p0, Lcom/apk/vi0$if;->try:I

    sub-int v8, v9, v8

    sget-object v11, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 28
    sget-object v11, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 29
    array-length v11, v11

    add-int/2addr v8, v11

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eq v6, v7, :cond_9

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 30
    invoke-virtual {p0, v6, v3, v4}, Lcom/apk/vi0$if;->case(III)V

    goto :goto_5

    :cond_9
    const/16 v6, 0x40

    if-ne v8, v7, :cond_a

    .line 31
    iget-object v7, p0, Lcom/apk/vi0$if;->break:Lcom/apk/rk0;

    invoke-virtual {v7, v6}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 32
    invoke-virtual {p0, v4}, Lcom/apk/vi0$if;->new(Lcom/apk/uk0;)V

    .line 33
    invoke-virtual {p0, v5}, Lcom/apk/vi0$if;->new(Lcom/apk/uk0;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/apk/vi0$if;->for(Lcom/apk/ui0;)V

    goto :goto_5

    .line 35
    :cond_a
    sget-object v7, Lcom/apk/ui0;->new:Lcom/apk/uk0;

    if-eqz v4, :cond_c

    const-string v9, "prefix"

    .line 36
    invoke-static {v7, v9}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7}, Lcom/apk/uk0;->for()I

    move-result v9

    .line 38
    invoke-virtual {v4, v1, v7, v1, v9}, Lcom/apk/uk0;->else(ILcom/apk/uk0;II)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 39
    sget-object v7, Lcom/apk/ui0;->this:Lcom/apk/uk0;

    invoke-static {v7, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    const/16 v3, 0xf

    .line 40
    invoke-virtual {p0, v8, v3, v1}, Lcom/apk/vi0$if;->case(III)V

    .line 41
    invoke-virtual {p0, v5}, Lcom/apk/vi0$if;->new(Lcom/apk/uk0;)V

    goto :goto_5

    :cond_b
    const/16 v4, 0x3f

    .line 42
    invoke-virtual {p0, v8, v4, v6}, Lcom/apk/vi0$if;->case(III)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/apk/vi0$if;->new(Lcom/apk/uk0;)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/apk/vi0$if;->for(Lcom/apk/ui0;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x0

    .line 45
    throw p1

    :cond_d
    return-void
.end method
