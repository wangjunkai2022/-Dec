.class public Lcom/apk/zo0;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# instance fields
.field public do:Ljava/lang/String;

.field public if:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/zo0;->if:I

    .line 3
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    return-void
.end method

.method public static const(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    if-ne v3, v5, :cond_1

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs break([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Lcom/apk/zo0;->this(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public case()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/zo0;->else()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v4, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/apk/bo0;->else(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 2
    iget v2, p0, Lcom/apk/zo0;->if:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/apk/zo0;->if:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public catch()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/zo0;->else()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v1, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public class()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v1, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/apk/zo0;->if:I

    return-object v0
.end method

.method public do(CC)Ljava/lang/String;
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/zo0;->else()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/zo0;->for()C

    move-result v8

    const/16 v9, 0x5c

    if-eq v1, v9, :cond_5

    const/16 v9, 0x27

    if-ne v8, v9, :cond_1

    if-eq v8, p1, :cond_1

    if-nez v2, :cond_1

    xor-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x22

    if-ne v8, v9, :cond_2

    if-eq v8, p1, :cond_2

    if-nez v3, :cond_2

    xor-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    if-ne v8, p1, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v0, :cond_7

    .line 3
    iget v4, p0, Lcom/apk/zo0;->if:I

    goto :goto_2

    :cond_4
    if-ne v8, p2, :cond_7

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    const/16 v9, 0x51

    if-ne v8, v9, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/16 v9, 0x45

    if-ne v8, v9, :cond_7

    const/4 v7, 0x0

    :cond_7
    :goto_2
    if-lez v6, :cond_8

    if-eqz v1, :cond_8

    .line 4
    iget v1, p0, Lcom/apk/zo0;->if:I

    move v5, v1

    :cond_8
    :goto_3
    if-gtz v6, :cond_b

    :goto_4
    if-ltz v5, :cond_9

    .line 5
    iget-object p1, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    const-string p1, ""

    :goto_5
    if-gtz v6, :cond_a

    return-object p1

    :cond_a
    const-string p2, "Did not find balanced marker at \'"

    const-string v0, "\'"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    move v1, v8

    goto :goto_0
.end method

.method public else()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/apk/zo0;->if:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()C
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v1, p0, Lcom/apk/zo0;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public goto(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/zo0;->this(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/zo0;->if:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public if(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v1, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v2, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/apk/zo0;->if:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/apk/zo0;->class()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/apk/zo0;->goto(Ljava/lang/String;)Z

    return-object v0
.end method

.method public new(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/zo0;->this(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/apk/zo0;->if:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 4
    iput v1, p0, Lcom/apk/zo0;->if:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v2, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v1, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/apk/zo0;->if:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/apk/zo0;->else()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/apk/zo0;->catch()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v3, v1, [C

    fill-array-data v3, :array_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/zo0;->else()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 4
    aget-char v6, v3, v4

    .line 5
    iget-object v7, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v8, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 6
    :cond_3
    iget v1, p0, Lcom/apk/zo0;->if:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/apk/zo0;->if:I

    goto :goto_0

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/apk/zo0;->do:Ljava/lang/String;

    iget v2, p0, Lcom/apk/zo0;->if:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method
