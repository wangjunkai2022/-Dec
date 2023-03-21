.class public Lcom/baidu/tts/b/a/b/f$d;
.super Ljava/lang/Object;
.source "OnlineSynthesizer.java"

# interfaces
.implements Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/aop/tts/TtsError;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:Lcom/baidu/tts/b/a/b/f;

.field public c:Lcom/baidu/tts/m/i;

.field public d:Lcom/baidu/tts/b/a/b/f$c;

.field public e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

.field public f:Lcom/baidu/tts/m/h;

.field public g:Lcom/baidu/tts/f/k;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/b/f;Lcom/baidu/tts/m/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->g:Lcom/baidu/tts/f/k;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    .line 6
    iput-object p2, p0, Lcom/baidu/tts/b/a/b/f$d;->c:Lcom/baidu/tts/m/i;

    .line 7
    new-instance p2, Lcom/baidu/tts/b/a/b/f$c;

    invoke-direct {p2, p1}, Lcom/baidu/tts/b/a/b/f$c;-><init>(Lcom/baidu/tts/b/a/b/f;)V

    iput-object p2, p0, Lcom/baidu/tts/b/a/b/f$d;->d:Lcom/baidu/tts/b/a/b/f$c;

    .line 8
    new-instance p1, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-direct {p1}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;-><init>()V

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    return-void
.end method

.method private a(I)V
    .locals 2

    const-string v0, "mindex="

    .line 19
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnlineSynthesizer"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v0}, Lcom/baidu/tts/n/a;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/m/h;

    .line 21
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a([B)V

    .line 22
    sget-object v1, Lcom/baidu/tts/f/f;->a:Lcom/baidu/tts/f/f;

    invoke-virtual {v1}, Lcom/baidu/tts/f/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->e(I)V

    .line 23
    sget-object v1, Lcom/baidu/tts/f/a;->a:Lcom/baidu/tts/f/a;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/a;)V

    .line 24
    iget v1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    invoke-virtual {v0, v1}, Lcom/baidu/tts/m/h;->c(I)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/baidu/tts/m/h;->d(I)V

    .line 26
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/b/a/b/a;->a(Lcom/baidu/tts/m/h;)V

    .line 27
    iget p1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 28
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    return-void
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->g()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->a()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private a([B[B)[B
    .locals 3

    .line 29
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 30
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private b(Lcom/baidu/tts/m/h;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/f$d;->a(Lcom/baidu/tts/m/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->b()I

    move-result p1

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->setOnDecodedDataListener(Lcom/baidu/speechsynthesizer/utility/SpeechDecoder$OnDecodedDataListener;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnlineSynthesizer"

    invoke-static {v3, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$d;->d:Lcom/baidu/tts/b/a/b/f$c;

    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$d;->c:Lcom/baidu/tts/m/i;

    invoke-static {v2, v0, v4, v5}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;ILcom/baidu/tts/b/a/b/f$c;Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/f$d;->a(Lcom/baidu/tts/m/h;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->i()Lcom/baidu/tts/f/k;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/tts/b/a/b/f$d;->g:Lcom/baidu/tts/f/k;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/baidu/tts/b/a/b/f$d;->g:Lcom/baidu/tts/f/k;

    invoke-virtual {v2, v4}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/f/k;)V

    .line 7
    :goto_0
    iput-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    .line 8
    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-static {v5}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/b/a/b/f;)Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/tts/b/a/b/f$b;->g()Lcom/baidu/tts/f/b;

    move-result-object v5

    sget-object v6, Lcom/baidu/tts/f/b;->e:Lcom/baidu/tts/f/b;

    if-ne v5, v6, :cond_2

    .line 10
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v1, v2}, Lcom/baidu/tts/b/a/b/a;->a(Lcom/baidu/tts/m/h;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v5, p0, Lcom/baidu/tts/b/a/b/f$d;->e:Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;

    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->b()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/baidu/speechsynthesizer/utility/SpeechDecoder;->decodeWithCallback([BI)I

    move-result v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoder ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Audio Decoder failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/f$d;->b(Lcom/baidu/tts/m/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_5

    .line 15
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->j:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->g()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/b/f$d;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public onDecodedData([B)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    invoke-direct {p0, v0, p1}, Lcom/baidu/tts/b/a/b/f$d;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/f$d;->a:[B

    .line 2
    array-length v0, v0

    const/16 v1, 0xc80

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v2}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v2

    array-length v2, v2

    .line 4
    iget-object v3, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {v3}, Lcom/baidu/tts/m/h;->c()I

    move-result v3

    int-to-double v4, v0

    const-wide v6, 0x40df400000000000L    # 32000.0

    div-double/2addr v4, v6

    mul-int/lit8 v2, v2, 0x8

    int-to-double v6, v2

    .line 5
    iget-object v2, p0, Lcom/baidu/tts/b/a/b/f$d;->b:Lcom/baidu/tts/b/a/b/f;

    invoke-static {v2}, Lcom/baidu/tts/b/a/b/f;->b(Lcom/baidu/tts/b/a/b/f;)D

    move-result-wide v8

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 6
    iget v2, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    int-to-double v6, v2

    iget v2, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    sub-int/2addr v3, v2

    int-to-double v2, v3

    mul-double v4, v4, v2

    iget v2, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    int-to-double v2, v2

    mul-double v4, v4, v2

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 7
    invoke-direct {p0, v2}, Lcom/baidu/tts/b/a/b/f$d;->a(I)V

    .line 8
    :cond_0
    array-length p1, p1

    if-nez p1, :cond_2

    if-ge v0, v1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result p1

    .line 10
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/f$d;->a(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result p1

    iput p1, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$d;->i:I

    .line 13
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/f$d;->f:Lcom/baidu/tts/m/h;

    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->b()I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/baidu/tts/b/a/b/f$d;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
