.class public Lcom/baidu/tts/d/a/g;
.super Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;
.source "ModelFileResponseHandler.java"


# instance fields
.field public a:Lcom/baidu/tts/d/a/c;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/baidu/tts/d/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/loopj/RangeFileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 2
    iput-object p2, p0, Lcom/baidu/tts/d/a/g;->a:Lcom/baidu/tts/d/a/c;

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure statuscode="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--msg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ModelFileResponseHandler"

    invoke-static {p4, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object p2

    sget-object p4, Lcom/baidu/tts/f/n;->ac:Lcom/baidu/tts/f/n;

    const-string v0, "download failure"

    invoke-virtual {p2, p4, p1, v0, p3}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;ILjava/lang/String;Ljava/lang/Throwable;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/baidu/tts/d/a/g;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/d/a/g;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/tts/d/a/c;->a(JJ)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 0

    const-string p1, "ModelFileResponseHandler"

    const-string p2, "onSuccess"

    .line 1
    invoke-static {p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/baidu/tts/d/a/g;->a:Lcom/baidu/tts/d/a/c;

    invoke-virtual {p1}, Lcom/baidu/tts/d/a/c;->e()V

    return-void
.end method
