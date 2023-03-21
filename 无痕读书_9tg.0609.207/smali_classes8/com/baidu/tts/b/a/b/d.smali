.class public Lcom/baidu/tts/b/a/b/d;
.super Lcom/baidu/tts/b/a/b/a;
.source "MixSynthesizer.java"


# instance fields
.field public b:Lcom/baidu/tts/m/b;

.field public c:Lcom/baidu/tts/b/a/b/f;

.field public d:Lcom/baidu/tts/b/a/b/e;

.field public e:Lcom/baidu/tts/b/a/b/c;

.field public f:Lcom/baidu/tts/aop/tts/TtsError;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/b/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 3
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    .line 4
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    .line 5
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    .line 6
    new-instance v0, Lcom/baidu/tts/b/a/b/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    return p1
.end method

.method public static synthetic a(Lcom/baidu/tts/b/a/b/d;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/b/d;->b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/baidu/tts/b/a/b/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    return p1
.end method

.method private b(Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->b()I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    sub-int/2addr v0, v1

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->b(I)V

    .line 9
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v0

    .line 10
    iget v1, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/h;->d(I)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/f;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/g;)I

    move-result p1

    return p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/baidu/tts/m/g;->b()Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {v1}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/e$a;->d(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/a/b/e$a;->e(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {p1}, Lcom/baidu/tts/b/a/b/e;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailCode()I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$1;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$1;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/a;->a(Lcom/baidu/tts/b/a/b;)V

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    new-instance v1, Lcom/baidu/tts/b/a/b/d$2;

    invoke-direct {v1, p0}, Lcom/baidu/tts/b/a/b/d$2;-><init>(Lcom/baidu/tts/b/a/b/d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/a;->a(Lcom/baidu/tts/b/a/b;)V

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/a;->a()Lcom/baidu/tts/aop/tts/TtsError;

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->a()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/b/a/b/d;->f:Lcom/baidu/tts/aop/tts/TtsError;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->N:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->h:I

    .line 17
    iput v0, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    .line 18
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "online synthesize tts error="

    .line 20
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MixSynthesizer"

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getErrorEnum()Lcom/baidu/tts/f/n;

    move-result-object v1

    .line 22
    sget-object v2, Lcom/baidu/tts/f/n;->b:Lcom/baidu/tts/f/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/baidu/tts/f/n;->o:Lcom/baidu/tts/f/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/baidu/tts/f/n;->f:Lcom/baidu/tts/f/n;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/baidu/tts/f/n;->q:Lcom/baidu/tts/f/n;

    if-ne v1, v2, :cond_3

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/m/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/baidu/tts/b/a/b/d;->g:I

    if-le v1, v2, :cond_1

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {p1, v0}, Lcom/baidu/tts/m/i;->b(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AllSynthesizerParams:",
            "Ljava/lang/Object;",
            ">(TAllSynthesizerParams;)V"
        }
    .end annotation

    .line 8
    check-cast p1, Lcom/baidu/tts/m/b;

    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    .line 9
    invoke-virtual {p1}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object p1

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p1, v0}, Lcom/baidu/tts/b/a/b/f$b;->b(I)V

    const/16 v0, 0x1f4

    .line 11
    invoke-virtual {p1, v0}, Lcom/baidu/tts/b/a/b/f$b;->c(I)V

    .line 12
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/f;->a(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {p1}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->a(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->b:Lcom/baidu/tts/m/b;

    invoke-virtual {p1, v0}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/m/b;)V

    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/b/e;->b(Lcom/baidu/tts/m/e;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->c:Lcom/baidu/tts/b/a/b/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->d:Lcom/baidu/tts/b/a/b/e;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/b/e;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d;->e:Lcom/baidu/tts/b/a/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/c;->a(Lcom/baidu/tts/m/b;)V

    return-object v1
.end method
