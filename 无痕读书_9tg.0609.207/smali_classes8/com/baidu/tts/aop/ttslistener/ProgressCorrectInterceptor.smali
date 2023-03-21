.class public Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "ProgressCorrectInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 p1, 0x0

    .line 3
    aget-object p2, p3, p1

    check-cast p2, Lcom/baidu/tts/m/h;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/m/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/tts/m/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7
    invoke-virtual {p2}, Lcom/baidu/tts/m/h;->c()I

    move-result v1

    if-le v1, v0, :cond_0

    sub-int v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefixLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--progress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgressCorrectInterceptor"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/baidu/tts/n/a;->G()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/tts/m/h;

    .line 10
    invoke-virtual {p2, v2}, Lcom/baidu/tts/m/h;->d(I)V

    .line 11
    aput-object p2, p3, p1

    .line 12
    :cond_1
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptor;->a:Ljava/util/List;

    const-string v1, "onSynthesizeDataArrived"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptor;->a:Ljava/util/List;

    const-string v1, "onPlayProgressUpdate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
