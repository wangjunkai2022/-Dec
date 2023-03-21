.class public final Lcom/bytedance/pangle/e/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/bytedance/pangle/e/a/b;

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Lcom/bytedance/pangle/e/a/f;

.field public final l:Lcom/bytedance/pangle/e/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/e/a/a;->j:Z

    .line 3
    new-instance v1, Lcom/bytedance/pangle/e/a/c;

    invoke-direct {v1}, Lcom/bytedance/pangle/e/a/c;-><init>()V

    iput-object v1, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 4
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->d:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->e:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->f:I

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->g:I

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->h:I

    .line 9
    invoke-direct {p0}, Lcom/bytedance/pangle/e/a/a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    return-void
.end method

.method private e(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    .line 2
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid attribute index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Current event is not START_TAG."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/pangle/e/a/a;->e(I)I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->k:Lcom/bytedance/pangle/e/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/e/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/e/a/a;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/e/a/a;->j:Z

    .line 3
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    .line 4
    iget-object v2, v1, Lcom/bytedance/pangle/e/a/b;->a:Ljava/io/InputStream;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-virtual {v1, v3}, Lcom/bytedance/pangle/e/a/b;->a(Ljava/io/InputStream;)V

    .line 7
    :cond_0
    iput-object v3, p0, Lcom/bytedance/pangle/e/a/a;->k:Lcom/bytedance/pangle/e/a/f;

    .line 8
    iput-object v3, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    .line 9
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 10
    iput v0, v1, Lcom/bytedance/pangle/e/a/c;->b:I

    .line 11
    iput v0, v1, Lcom/bytedance/pangle/e/a/c;->c:I

    .line 12
    invoke-direct {p0}, Lcom/bytedance/pangle/e/a/a;->c()V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->k:Lcom/bytedance/pangle/e/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    const v2, 0x80003

    invoke-virtual {v0, v2}, Lcom/bytedance/pangle/e/a/b;->b(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    const v2, 0x1c0001

    .line 6
    invoke-virtual {v0, v2}, Lcom/bytedance/pangle/e/a/b;->b(I)V

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v2

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v3

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v4

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v5

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v6

    .line 13
    new-instance v7, Lcom/bytedance/pangle/e/a/f;

    invoke-direct {v7}, Lcom/bytedance/pangle/e/a/f;-><init>()V

    .line 14
    invoke-virtual {v0, v3}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    move-result-object v3

    iput-object v3, v7, Lcom/bytedance/pangle/e/a/f;->a:[I

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    :cond_0
    if-nez v6, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    sub-int/2addr v3, v5

    .line 16
    rem-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_4

    .line 17
    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    move-result-object v3

    iput-object v3, v7, Lcom/bytedance/pangle/e/a/f;->b:[I

    if-eqz v6, :cond_3

    sub-int/2addr v2, v6

    .line 18
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    .line 19
    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 21
    :cond_3
    :goto_1
    iput-object v7, p0, Lcom/bytedance/pangle/e/a/a;->k:Lcom/bytedance/pangle/e/a/f;

    .line 22
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/c;->a()V

    .line 23
    iput-boolean v1, p0, Lcom/bytedance/pangle/e/a/a;->j:Z

    goto :goto_2

    .line 24
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 25
    :cond_5
    :goto_2
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    iget v2, p0, Lcom/bytedance/pangle/e/a/a;->e:I

    if-eq v0, v2, :cond_16

    .line 26
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    .line 27
    invoke-direct {p0}, Lcom/bytedance/pangle/e/a/a;->c()V

    .line 28
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lcom/bytedance/pangle/e/a/a;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 29
    iput-boolean v3, p0, Lcom/bytedance/pangle/e/a/a;->i:Z

    .line 30
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 31
    iget v4, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    if-eqz v4, :cond_7

    .line 32
    iget v4, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    sub-int/2addr v4, v1

    .line 33
    iget-object v5, v2, Lcom/bytedance/pangle/e/a/c;->a:[I

    aget v5, v5, v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 34
    iget v4, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    .line 35
    iget v4, v2, Lcom/bytedance/pangle/e/a/c;->c:I

    sub-int/2addr v4, v1

    iput v4, v2, Lcom/bytedance/pangle/e/a/c;->c:I

    .line 36
    :cond_7
    iget v2, p0, Lcom/bytedance/pangle/e/a/a;->g:I

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 37
    iget v2, v2, Lcom/bytedance/pangle/e/a/c;->c:I

    if-ne v2, v1, :cond_9

    .line 38
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 39
    iget v4, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    if-nez v4, :cond_8

    goto :goto_4

    .line 40
    :cond_8
    iget v3, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    sub-int/2addr v3, v1

    .line 41
    iget-object v2, v2, Lcom/bytedance/pangle/e/a/c;->a:[I

    aget v3, v2, v3

    :goto_4
    if-nez v3, :cond_9

    .line 42
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->e:I

    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    goto/16 :goto_8

    .line 43
    :cond_9
    iget v2, p0, Lcom/bytedance/pangle/e/a/a;->d:I

    const v3, 0x100102

    if-ne v0, v2, :cond_a

    const v2, 0x100102

    goto :goto_5

    .line 44
    :cond_a
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v2}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const v4, 0x80180

    const-string v5, ")."

    if-ne v2, v4, :cond_c

    .line 45
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v2}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_b

    .line 46
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_b

    .line 47
    iget-object v3, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v3, v2}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    goto :goto_3

    .line 48
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid resource ids size ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const v4, 0x100100

    if-lt v2, v4, :cond_15

    const v6, 0x100104

    if-gt v2, v6, :cond_15

    if-ne v2, v3, :cond_d

    const/4 v5, -0x1

    if-ne v0, v5, :cond_d

    .line 49
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->d:I

    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    goto/16 :goto_8

    .line 50
    :cond_d
    iget-object v5, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 51
    iget-object v5, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 52
    iget-object v5, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v5}, Lcom/bytedance/pangle/e/a/b;->b()V

    if-eq v2, v4, :cond_12

    const v5, 0x100101

    if-ne v2, v5, :cond_e

    goto/16 :goto_7

    :cond_e
    if-ne v2, v3, :cond_10

    .line 53
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 54
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 55
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 56
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v1}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 58
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/e/a/b;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    const/4 v0, 0x3

    .line 59
    :goto_6
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 60
    iget-object v1, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_6

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/c;->a()V

    .line 62
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->f:I

    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    goto/16 :goto_8

    :cond_10
    const v3, 0x100103

    if-ne v2, v3, :cond_11

    .line 63
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 64
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 65
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->g:I

    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    .line 66
    iput-boolean v1, p0, Lcom/bytedance/pangle/e/a/a;->i:Z

    goto/16 :goto_8

    :cond_11
    if-ne v2, v6, :cond_6

    .line 67
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->a()I

    .line 68
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 69
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 70
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->h:I

    iput v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    goto/16 :goto_8

    :cond_12
    :goto_7
    if-ne v2, v4, :cond_14

    .line 71
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v2}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v3}, Lcom/bytedance/pangle/e/a/b;->a()I

    move-result v3

    .line 73
    iget-object v4, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 74
    iget v5, v4, Lcom/bytedance/pangle/e/a/c;->c:I

    if-nez v5, :cond_13

    .line 75
    invoke-virtual {v4}, Lcom/bytedance/pangle/e/a/c;->a()V

    .line 76
    :cond_13
    invoke-virtual {v4}, Lcom/bytedance/pangle/e/a/c;->b()V

    .line 77
    iget v5, v4, Lcom/bytedance/pangle/e/a/c;->b:I

    sub-int/2addr v5, v1

    .line 78
    iget-object v6, v4, Lcom/bytedance/pangle/e/a/c;->a:[I

    aget v6, v6, v5

    .line 79
    iget-object v7, v4, Lcom/bytedance/pangle/e/a/c;->a:[I

    add-int/lit8 v8, v5, -0x1

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    add-int/2addr v6, v1

    aput v6, v7, v8

    .line 80
    iget-object v7, v4, Lcom/bytedance/pangle/e/a/c;->a:[I

    aput v2, v7, v5

    .line 81
    iget-object v2, v4, Lcom/bytedance/pangle/e/a/c;->a:[I

    add-int/lit8 v7, v5, 0x1

    aput v3, v2, v7

    .line 82
    iget-object v2, v4, Lcom/bytedance/pangle/e/a/c;->a:[I

    add-int/lit8 v5, v5, 0x2

    aput v6, v2, v5

    .line 83
    iget v2, v4, Lcom/bytedance/pangle/e/a/c;->b:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v4, Lcom/bytedance/pangle/e/a/c;->b:I

    goto/16 :goto_3

    .line 84
    :cond_14
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v2}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 85
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->b:Lcom/bytedance/pangle/e/a/b;

    invoke-virtual {v2}, Lcom/bytedance/pangle/e/a/b;->b()V

    .line 86
    iget-object v2, p0, Lcom/bytedance/pangle/e/a/a;->l:Lcom/bytedance/pangle/e/a/c;

    .line 87
    iget v3, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    if-eqz v3, :cond_6

    .line 88
    iget v3, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    sub-int/2addr v3, v1

    .line 89
    iget-object v4, v2, Lcom/bytedance/pangle/e/a/c;->a:[I

    aget v4, v4, v3

    if-eqz v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x2

    .line 90
    iget-object v5, v2, Lcom/bytedance/pangle/e/a/c;->a:[I

    aput v4, v5, v3

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v1

    sub-int/2addr v3, v5

    .line 91
    iget-object v5, v2, Lcom/bytedance/pangle/e/a/c;->a:[I

    aput v4, v5, v3

    .line 92
    iget v3, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v2, Lcom/bytedance/pangle/e/a/c;->b:I

    goto/16 :goto_3

    .line 93
    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid chunk type ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_16
    :goto_8
    iget v0, p0, Lcom/bytedance/pangle/e/a/a;->a:I

    return v0

    .line 95
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parser is not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {p0}, Lcom/bytedance/pangle/e/a/a;->a()V

    .line 97
    throw v0
.end method

.method public final b(I)I
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/bytedance/pangle/e/a/a;->e(I)I

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public final c(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/pangle/e/a/a;->e(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/pangle/e/a/a;->e(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->c:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget p1, v0, p1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/e/a/a;->k:Lcom/bytedance/pangle/e/a/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/e/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
