.class public final Lcom/apk/vi0$do;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public case:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;"
        }
    .end annotation
.end field

.field public final else:I

.field public for:[Lcom/apk/ui0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public goto:I

.field public final if:Lcom/apk/tk0;

.field public new:I

.field public try:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/ll0;III)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    move p3, p2

    :cond_0
    const-string p4, "source"

    .line 1
    invoke-static {p1, p4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/apk/vi0$do;->else:I

    iput p3, p0, Lcom/apk/vi0$do;->goto:I

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/apk/vi0$do;->do:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lcom/apk/sb0;->class(Lcom/apk/ll0;)Lcom/apk/tk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/apk/ui0;

    .line 5
    iput-object p1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    const/4 p1, 0x7

    .line 6
    iput p1, p0, Lcom/apk/vi0$do;->new:I

    return-void
.end method


# virtual methods
.method public final case()Lcom/apk/uk0;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/tk0;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/apk/jh0;->do(BI)I

    move-result v0

    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7f

    .line 2
    invoke-virtual {p0, v0, v3}, Lcom/apk/vi0$do;->else(II)I

    move-result v0

    int-to-long v5, v0

    if-eqz v2, :cond_6

    .line 3
    new-instance v0, Lcom/apk/rk0;

    invoke-direct {v0}, Lcom/apk/rk0;-><init>()V

    .line 4
    sget-object v2, Lcom/apk/ij0;->new:Lcom/apk/ij0;

    iget-object v2, p0, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    const-string v3, "source"

    .line 5
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sink"

    invoke-static {v0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/apk/ij0;->for:Lcom/apk/ij0$do;

    const-wide/16 v7, 0x0

    move-wide v8, v7

    const/4 v7, 0x0

    :goto_1
    cmp-long v10, v8, v5

    if-gez v10, :cond_3

    .line 7
    invoke-interface {v2}, Lcom/apk/tk0;->readByte()B

    move-result v10

    and-int/2addr v10, v1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v10

    add-int/lit8 v7, v7, 0x8

    :goto_2
    const/16 v10, 0x8

    if-lt v7, v10, :cond_2

    add-int/lit8 v10, v7, -0x8

    ushr-int v11, v4, v10

    and-int/2addr v11, v1

    .line 8
    iget-object v3, v3, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    .line 9
    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    aget-object v3, v3, v11

    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 10
    iget-object v11, v3, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    if-nez v11, :cond_1

    .line 11
    iget v10, v3, Lcom/apk/ij0$do;->if:I

    .line 12
    invoke-virtual {v0, v10}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 13
    iget v3, v3, Lcom/apk/ij0$do;->for:I

    sub-int/2addr v7, v3

    .line 14
    sget-object v3, Lcom/apk/ij0;->for:Lcom/apk/ij0$do;

    goto :goto_2

    :cond_1
    move v7, v10

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v7, :cond_5

    rsub-int/lit8 v2, v7, 0x8

    shl-int v2, v4, v2

    and-int/2addr v2, v1

    .line 15
    iget-object v3, v3, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    .line 16
    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    if-nez v3, :cond_5

    .line 18
    iget v3, v2, Lcom/apk/ij0$do;->for:I

    if-le v3, v7, :cond_4

    goto :goto_4

    .line 19
    :cond_4
    iget v3, v2, Lcom/apk/ij0$do;->if:I

    .line 20
    invoke-virtual {v0, v3}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 21
    iget v2, v2, Lcom/apk/ij0$do;->for:I

    sub-int/2addr v7, v2

    .line 22
    sget-object v3, Lcom/apk/ij0;->for:Lcom/apk/ij0$do;

    goto :goto_3

    .line 23
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lcom/apk/rk0;->private()Lcom/apk/uk0;

    move-result-object v0

    goto :goto_5

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    invoke-interface {v0, v5, v6}, Lcom/apk/tk0;->new(J)Lcom/apk/uk0;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

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
    iget-object v0, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apk/vi0$do;->new:I

    .line 6
    iput v2, p0, Lcom/apk/vi0$do;->try:I

    .line 7
    iput v2, p0, Lcom/apk/vi0$do;->case:I

    return-void
.end method

.method public final else(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/apk/vi0$do;->if:Lcom/apk/tk0;

    invoke-interface {v0}, Lcom/apk/tk0;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/apk/jh0;->do(BI)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

.method public final for(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Lcom/apk/vi0$do;->new:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 4
    iget v2, v2, Lcom/apk/ui0;->do:I

    sub-int/2addr p1, v2

    .line 5
    iget v3, p0, Lcom/apk/vi0$do;->case:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/apk/vi0$do;->case:I

    .line 6
    iget v2, p0, Lcom/apk/vi0$do;->try:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/apk/vi0$do;->try:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    iget v1, p0, Lcom/apk/vi0$do;->new:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 8
    iget v3, p0, Lcom/apk/vi0$do;->try:I

    .line 9
    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lcom/apk/vi0$do;->new:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/vi0$do;->new:I

    :cond_1
    return v0
.end method

.method public final if(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/vi0$do;->new:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method public final new(I)Lcom/apk/uk0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    sget-object v0, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 2
    sget-object v0, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 5
    sget-object v0, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 6
    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    .line 8
    sget-object v0, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 9
    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/apk/vi0$do;->if(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 11
    aget-object p1, v1, v0

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    :goto_1
    return-object p1

    .line 12
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header index too large "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final try(ILcom/apk/ui0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/vi0$do;->do:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p2, Lcom/apk/ui0;->do:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    .line 4
    iget v3, p0, Lcom/apk/vi0$do;->new:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p1

    .line 5
    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget v2, v2, Lcom/apk/ui0;->do:I

    sub-int/2addr v0, v2

    .line 6
    :cond_0
    iget v2, p0, Lcom/apk/vi0$do;->goto:I

    if-le v0, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/apk/vi0$do;->do()V

    return-void

    .line 8
    :cond_1
    iget v3, p0, Lcom/apk/vi0$do;->case:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 9
    invoke-virtual {p0, v3}, Lcom/apk/vi0$do;->for(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    .line 10
    iget p1, p0, Lcom/apk/vi0$do;->try:I

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v3, v2

    if-le p1, v3, :cond_2

    .line 11
    array-length p1, v2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/apk/ui0;

    const/4 v3, 0x0

    .line 12
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    array-length v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/apk/vi0$do;->new:I

    .line 14
    iput-object p1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    .line 15
    :cond_2
    iget p1, p0, Lcom/apk/vi0$do;->new:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/apk/vi0$do;->new:I

    .line 16
    iget-object v1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    aput-object p2, v1, p1

    .line 17
    iget p1, p0, Lcom/apk/vi0$do;->try:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/vi0$do;->try:I

    goto :goto_0

    .line 18
    :cond_3
    iget v1, p0, Lcom/apk/vi0$do;->new:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 19
    iget-object p1, p0, Lcom/apk/vi0$do;->for:[Lcom/apk/ui0;

    aput-object p2, p1, v1

    .line 20
    :goto_0
    iget p1, p0, Lcom/apk/vi0$do;->case:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/vi0$do;->case:I

    return-void
.end method
