.class public Lcom/baidu/tts/m/i;
.super Lcom/baidu/tts/n/a;
.source "TextParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a<",
        "Lcom/baidu/tts/m/i;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/baidu/tts/f/i;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/tts/m/i;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/baidu/tts/m/i;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/tts/f/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/m/i;->d:Lcom/baidu/tts/f/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    return-void
.end method

.method public e()[B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/m/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/tts/m/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/baidu/tts/f/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/i;->d:Lcom/baidu/tts/f/i;

    return-object v0
.end method
