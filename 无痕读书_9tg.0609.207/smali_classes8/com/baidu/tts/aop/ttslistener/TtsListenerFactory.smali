.class public Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;
.super Lcom/baidu/tts/aop/AProxyFactory;
.source "TtsListenerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/aop/AProxyFactory<",
        "Lcom/baidu/tts/aop/ttslistener/TtsListener;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/tts/aop/ttslistener/TtsListener;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/aop/AProxyFactory;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;->a:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-void
.end method


# virtual methods
.method public createInterceptorHandler()Lcom/baidu/tts/aop/IInterceptorHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;

    invoke-direct {v0}, Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/aop/ttslistener/TtsListenerInterceptorHandler;->registerMethods()V

    return-object v0
.end method

.method public createInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/tts/aop/IInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;

    invoke-direct {v1}, Lcom/baidu/tts/aop/ttslistener/ProgressCorrectInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createProxied()Lcom/baidu/tts/aop/ttslistener/TtsListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;->a:Lcom/baidu/tts/aop/ttslistener/TtsListener;

    return-object v0
.end method

.method public bridge synthetic createProxied()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/aop/ttslistener/TtsListenerFactory;->createProxied()Lcom/baidu/tts/aop/ttslistener/TtsListener;

    move-result-object v0

    return-object v0
.end method
