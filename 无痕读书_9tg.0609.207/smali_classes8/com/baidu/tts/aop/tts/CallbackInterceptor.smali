.class public Lcom/baidu/tts/aop/tts/CallbackInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "CallbackInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string p1, "method="

    .line 2
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallbackInterceptor"

    invoke-static {p2, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    aget-object p2, p3, p1

    check-cast p2, Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 4
    new-instance v0, Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;

    invoke-direct {v0, p2}, Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;-><init>(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 5
    invoke-virtual {v0}, Lcom/baidu/tts/aop/AProxyFactory;->makeProxy()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/tts/aop/ttslistener/TtsListener;

    .line 6
    aput-object p2, p3, p1

    .line 7
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptor;->a:Ljava/util/List;

    const-string v1, "setTtsListener"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
