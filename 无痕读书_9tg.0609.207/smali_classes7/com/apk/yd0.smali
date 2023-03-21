.class public Lcom/apk/yd0;
.super Ljava/lang/Object;
.source "_Ranges.kt"


# direct methods
.method public static final do(II)Lcom/apk/vd0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/vd0;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/apk/vd0;-><init>(III)V

    return-object v0
.end method

.method public static final for(II)Lcom/apk/xd0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    .line 1
    sget-object p0, Lcom/apk/xd0;->try:Lcom/apk/xd0;

    .line 2
    sget-object p0, Lcom/apk/xd0;->new:Lcom/apk/xd0;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/xd0;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lcom/apk/xd0;-><init>(II)V

    return-object v0
.end method

.method public static final if(Lcom/apk/vd0;I)Lcom/apk/vd0;
    .locals 3
    .param p0    # Lcom/apk/vd0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$step"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step"

    .line 2
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/apk/vd0;->do:I

    .line 4
    iget v1, p0, Lcom/apk/vd0;->if:I

    .line 5
    iget p0, p0, Lcom/apk/vd0;->for:I

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    .line 6
    :goto_1
    new-instance p0, Lcom/apk/vd0;

    invoke-direct {p0, v0, v1, p1}, Lcom/apk/vd0;-><init>(III)V

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
