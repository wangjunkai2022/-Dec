.class public Lcom/baidu/tts/l/a/i;
.super Ljava/lang/Object;
.source "ModelInfoManager.java"


# instance fields
.field public a:Lcom/baidu/tts/l/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/h;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/h;-><init>(Lcom/baidu/tts/client/model/Conditions;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            "Z)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/l/a/d;

    iget-object v3, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-direct {v2, v0, p1, v3, p2}, Lcom/baidu/tts/l/a/d;-><init>(Lcom/baidu/tts/database/a;Lcom/baidu/tts/client/model/Conditions;Lcom/baidu/tts/l/a;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 7
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/g;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/g;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 11
    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 12
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public a(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/a;

    invoke-direct {v1, p1}, Lcom/baidu/tts/l/a/a;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 14
    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 15
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 2

    .line 8
    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/baidu/tts/client/model/LibEngineParams;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/LibEngineParams;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/baidu/tts/l/a/f;

    invoke-direct {v1}, Lcom/baidu/tts/l/a/f;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    new-instance v1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {v1, v0}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 7
    invoke-virtual {v1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object v1
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a/i;->a:Lcom/baidu/tts/l/a;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/baidu/tts/l/a/c;

    invoke-direct {v2, v0, p1}, Lcom/baidu/tts/l/a/c;-><init>(Lcom/baidu/tts/database/a;Ljava/util/Set;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    new-instance p1, Lcom/baidu/tts/client/model/BasicHandler;

    invoke-direct {p1, v1}, Lcom/baidu/tts/client/model/BasicHandler;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 4
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->start()V

    return-object p1
.end method
