.class public Lcom/baidu/tts/m/h;
.super Lcom/baidu/tts/n/a;
.source "ResponseBag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a<",
        "Lcom/baidu/tts/m/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/baidu/tts/f/e;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:[B

.field public i:Lcom/baidu/tts/f/a;

.field public j:Lcom/baidu/tts/m/i;

.field public k:Lcom/baidu/tts/aop/tts/TtsError;

.field public l:Lcom/baidu/tts/f/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 2
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    iput-object v0, p0, Lcom/baidu/tts/m/h;->l:Lcom/baidu/tts/f/k;

    return-void
.end method

.method public static a(Lcom/baidu/tts/m/i;Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object p0
.end method

.method public static b(Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;
    .locals 1

    .line 5
    new-instance v0, Lcom/baidu/tts/m/h;

    invoke-direct {v0}, Lcom/baidu/tts/m/h;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v0
.end method

.method public static b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;
    .locals 1

    .line 3
    new-instance v0, Lcom/baidu/tts/m/h;

    invoke-direct {v0}, Lcom/baidu/tts/m/h;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/m/i;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/m/h;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/m/h;->d:I

    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/baidu/tts/m/h;->k:Lcom/baidu/tts/aop/tts/TtsError;

    return-void
.end method

.method public a(Lcom/baidu/tts/f/a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/baidu/tts/m/h;->i:Lcom/baidu/tts/f/a;

    return-void
.end method

.method public a(Lcom/baidu/tts/f/e;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/baidu/tts/m/h;->b:Lcom/baidu/tts/f/e;

    return-void
.end method

.method public a(Lcom/baidu/tts/f/k;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/baidu/tts/m/h;->l:Lcom/baidu/tts/f/k;

    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/baidu/tts/m/h;->j:Lcom/baidu/tts/m/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/baidu/tts/m/h;->e:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/m/h;->h:[B

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/m/h;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/m/h;->f:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/baidu/tts/m/h;->g:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/tts/m/h;->a:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/tts/m/h;->g:I

    return-void
.end method

.method public d()[B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/h;->h:[B

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/m/h;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/m/h;->c:I

    return-void
.end method

.method public f()Lcom/baidu/tts/m/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/h;->j:Lcom/baidu/tts/m/i;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/h;->k:Lcom/baidu/tts/aop/tts/TtsError;

    return-object v0
.end method

.method public h()Lcom/baidu/tts/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/h;->b:Lcom/baidu/tts/f/e;

    return-object v0
.end method

.method public i()Lcom/baidu/tts/f/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/h;->l:Lcom/baidu/tts/f/k;

    return-object v0
.end method
