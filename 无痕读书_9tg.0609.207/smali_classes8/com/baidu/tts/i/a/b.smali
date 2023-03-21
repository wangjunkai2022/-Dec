.class public Lcom/baidu/tts/i/a/b;
.super Ljava/lang/Object;
.source "UtteranceSubpackager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/baidu/tts/i/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/tts/i/a/b;->a:I

    iget v1, p0, Lcom/baidu/tts/i/a/b;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private f()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/tts/i/a/b;->d:I

    iget v1, p0, Lcom/baidu/tts/i/a/b;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/tts/i/a/b;->a:I

    .line 3
    iput v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    .line 4
    iput v0, p0, Lcom/baidu/tts/i/a/b;->d:I

    .line 5
    iput v0, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 6
    iput v0, p0, Lcom/baidu/tts/i/a/b;->f:I

    .line 7
    iput v0, p0, Lcom/baidu/tts/i/a/b;->g:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/tts/i/a/b;->c:I

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/tts/i/a/b;->b:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/baidu/tts/i/a/b;->f:I

    return-void
.end method

.method public c()Lcom/baidu/tts/i/a/a;
    .locals 5

    .line 1
    new-instance v0, Lcom/baidu/tts/i/a/a;

    invoke-direct {v0}, Lcom/baidu/tts/i/a/a;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->f()I

    move-result v1

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->e()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 4
    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    sub-int v2, v1, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 5
    iget v4, p0, Lcom/baidu/tts/i/a/b;->f:I

    invoke-virtual {v0, v4}, Lcom/baidu/tts/i/a/a;->a(I)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/baidu/tts/i/a/a;->b(I)V

    add-int/2addr v1, v3

    .line 7
    iput v1, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 8
    iput v1, p0, Lcom/baidu/tts/i/a/b;->d:I

    .line 9
    iget v4, p0, Lcom/baidu/tts/i/a/b;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/baidu/tts/i/a/b;->f:I

    int-to-float v1, v1

    .line 10
    iget v2, p0, Lcom/baidu/tts/i/a/b;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "mCurrentProgressStartIndex="

    .line 11
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/baidu/tts/i/a/b;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--mCurrentAllUtteranceLenght="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/baidu/tts/i/a/b;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--percent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UtteranceSubpackager"

    invoke-static {v4, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/a;->a(F)V

    .line 13
    invoke-virtual {v0, v3}, Lcom/baidu/tts/i/a/a;->a(Z)V

    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Lcom/baidu/tts/i/a/b;->b:I

    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    sub-int/2addr v1, v2

    .line 15
    iget v2, p0, Lcom/baidu/tts/i/a/b;->f:I

    invoke-virtual {v0, v2}, Lcom/baidu/tts/i/a/a;->a(I)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/baidu/tts/i/a/a;->b(I)V

    .line 17
    iget v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/baidu/tts/i/a/b;->e:I

    .line 18
    iget v2, p0, Lcom/baidu/tts/i/a/b;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/baidu/tts/i/a/b;->f:I

    :goto_0
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/baidu/tts/i/a/b;->g:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/i/a/b;->g:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/tts/i/a/b;->e:I

    invoke-direct {p0}, Lcom/baidu/tts/i/a/b;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/i/a/b;->c()Lcom/baidu/tts/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
