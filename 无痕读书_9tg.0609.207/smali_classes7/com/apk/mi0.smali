.class public final Lcom/apk/mi0;
.super Ljava/lang/Object;
.source "RealInterceptorChain.kt"

# interfaces
.implements Lcom/apk/ug0$do;


# instance fields
.field public final case:Lcom/apk/zg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public do:I

.field public final else:I

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ug0;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:I

.field public final if:Lcom/apk/xh0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:I

.field public final this:I

.field public final try:Lcom/apk/vh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/xh0;Ljava/util/List;ILcom/apk/vh0;Lcom/apk/zg0;III)V
    .locals 1
    .param p1    # Lcom/apk/xh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/vh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/xh0;",
            "Ljava/util/List<",
            "+",
            "Lcom/apk/ug0;",
            ">;I",
            "Lcom/apk/vh0;",
            "Lcom/apk/zg0;",
            "III)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/mi0;->if:Lcom/apk/xh0;

    iput-object p2, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    iput p3, p0, Lcom/apk/mi0;->new:I

    iput-object p4, p0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    iput-object p5, p0, Lcom/apk/mi0;->case:Lcom/apk/zg0;

    iput p6, p0, Lcom/apk/mi0;->else:I

    iput p7, p0, Lcom/apk/mi0;->goto:I

    iput p8, p0, Lcom/apk/mi0;->this:I

    return-void
.end method

.method public static new(Lcom/apk/mi0;ILcom/apk/vh0;Lcom/apk/zg0;IIII)Lcom/apk/mi0;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget v1, v0, Lcom/apk/mi0;->new:I

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p2

    :goto_1
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Lcom/apk/mi0;->case:Lcom/apk/zg0;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p3

    :goto_2
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_3

    .line 4
    iget v1, v0, Lcom/apk/mi0;->else:I

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, p4

    :goto_3
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_4

    .line 5
    iget v1, v0, Lcom/apk/mi0;->goto:I

    move v9, v1

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v1, p7, 0x20

    if-eqz v1, :cond_5

    .line 6
    iget v1, v0, Lcom/apk/mi0;->this:I

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p6

    :goto_5
    const-string v1, "request"

    .line 7
    invoke-static {v7, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/apk/mi0;

    iget-object v3, v0, Lcom/apk/mi0;->if:Lcom/apk/xh0;

    iget-object v4, v0, Lcom/apk/mi0;->for:Ljava/util/List;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/apk/mi0;-><init>(Lcom/apk/xh0;Ljava/util/List;ILcom/apk/vh0;Lcom/apk/zg0;III)V

    return-object v1
.end method


# virtual methods
.method public call()Lcom/apk/zf0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mi0;->if:Lcom/apk/xh0;

    return-object v0
.end method

.method public do(Lcom/apk/zg0;)Lcom/apk/ch0;
    .locals 13
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/apk/mi0;->new:I

    iget-object v1, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lcom/apk/mi0;->do:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/apk/mi0;->do:I

    .line 3
    iget-object v0, p0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    const-string v1, " must call proceed() exactly once"

    const-string v4, "network interceptor "

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, Lcom/apk/vh0;->try:Lcom/apk/wh0;

    .line 5
    iget-object v5, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 6
    invoke-virtual {v0, v5}, Lcom/apk/wh0;->if(Lcom/apk/tg0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Lcom/apk/mi0;->do:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    iget v2, p0, Lcom/apk/mi0;->new:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ug0;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    iget v1, p0, Lcom/apk/mi0;->new:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ug0;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_2
    iget v0, p0, Lcom/apk/mi0;->new:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3a

    move-object v5, p0

    move-object v8, p1

    invoke-static/range {v5 .. v12}, Lcom/apk/mi0;->new(Lcom/apk/mi0;ILcom/apk/vh0;Lcom/apk/zg0;IIII)Lcom/apk/mi0;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    iget v5, p0, Lcom/apk/mi0;->new:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ug0;

    .line 14
    invoke-interface {v0, p1}, Lcom/apk/ug0;->do(Lcom/apk/ug0$do;)Lcom/apk/ch0;

    move-result-object v5

    const-string v6, "interceptor "

    if-eqz v5, :cond_b

    .line 15
    iget-object v7, p0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    if-eqz v7, :cond_8

    .line 16
    iget v7, p0, Lcom/apk/mi0;->new:I

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/apk/mi0;->for:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget p1, p1, Lcom/apk/mi0;->do:I

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_8
    :goto_5
    iget-object p1, v5, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_a

    return-object v5

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()Lcom/apk/zg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mi0;->case:Lcom/apk/zg0;

    return-object v0
.end method

.method public if()Lcom/apk/fg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mi0;->try:Lcom/apk/vh0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/vh0;->if:Lcom/apk/bi0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
