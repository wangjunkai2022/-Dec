.class public Lcom/baidu/tts/d/c$a;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/baidu/tts/d/c;

.field public b:Lcom/baidu/tts/client/model/DownloadHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/c;Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/d/a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Downloader"

    const-string v1, "modelId="

    .line 1
    new-instance v2, Lcom/baidu/tts/d/a;

    invoke-direct {v2}, Lcom/baidu/tts/d/a;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v3}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/tts/l/a;->e()Lcom/baidu/tts/database/a;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v4}, Lcom/baidu/tts/client/model/DownloadHandler;->getModelId()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v5}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/tts/d/b/a;->b(Ljava/lang/String;)Lcom/baidu/tts/d/b/d;

    move-result-object v5

    .line 5
    :try_start_0
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6}, Lcom/baidu/tts/d/b/d;->c(Lcom/baidu/tts/client/model/DownloadHandler;)V

    .line 6
    invoke-virtual {v5, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/database/a;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    new-instance v6, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v6}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 8
    invoke-virtual {v6, v4}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    .line 9
    iget-object v7, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v7}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/tts/client/model/ModelBags;

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v6}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/ModelBags;Lcom/baidu/tts/database/a;)V

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v6, Lcom/baidu/tts/f/n;->ah:Lcom/baidu/tts/f/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v3

    .line 14
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v2

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->f()Ljava/util/Set;

    move-result-object v6

    .line 16
    invoke-static {v6}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v6, Lcom/baidu/tts/f/n;->ae:Lcom/baidu/tts/f/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v3

    .line 18
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v2

    .line 19
    :cond_3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 20
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 22
    iget-object v8, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v8}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/baidu/tts/d/b/a;->c(Ljava/lang/String;)Lcom/baidu/tts/d/b/c;

    move-result-object v8

    .line 23
    invoke-virtual {v8, v3}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/database/a;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 24
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 25
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v10, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v10}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/baidu/tts/l/a;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v9

    .line 27
    invoke-virtual {v9}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/tts/client/model/ModelFileBags;

    if-eqz v9, :cond_6

    .line 28
    invoke-virtual {v9}, Lcom/baidu/tts/client/model/ModelFileBags;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    iget-object v7, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v7}, Lcom/baidu/tts/d/c;->a(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/l/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/tts/l/a;->d()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/baidu/tts/client/model/ModelFileBags;->generateAbsPath(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v8, v9, v3}, Lcom/baidu/tts/d/b/c;->a(Lcom/baidu/tts/client/model/ModelFileBags;Lcom/baidu/tts/database/a;)V

    goto :goto_2

    .line 31
    :cond_6
    :goto_3
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v6, Lcom/baidu/tts/f/n;->ai:Lcom/baidu/tts/f/n;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v3

    .line 32
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v2

    .line 33
    :cond_7
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->d()V

    .line 34
    invoke-virtual {v5}, Lcom/baidu/tts/d/b/d;->b()Ljava/util/Set;

    move-result-object v6

    .line 35
    invoke-static {v6}, Lcom/baidu/tts/tools/DataTool;->isSetEmpty(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 36
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v6, Lcom/baidu/tts/f/n;->af:Lcom/baidu/tts/f/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v3

    .line 37
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v2

    .line 38
    :cond_8
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 39
    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 40
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 41
    invoke-static {v7}, Lcom/baidu/tts/tools/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 42
    iget-object v8, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v8}, Lcom/baidu/tts/d/c;->b(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/b/a;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/baidu/tts/d/b/a;->a(Ljava/lang/String;)Lcom/baidu/tts/d/b/b;

    move-result-object v8

    .line 43
    invoke-virtual {v8, v4}, Lcom/baidu/tts/d/b/b;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v8, v3}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/database/a;)Z

    move-result v9

    .line 45
    invoke-virtual {v8}, Lcom/baidu/tts/d/b/b;->c()Ljava/lang/String;

    move-result-object v10

    .line 46
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedDownload="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "--fileId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_c

    .line 47
    invoke-virtual {v8}, Lcom/baidu/tts/d/b/b;->e()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 48
    invoke-virtual {v8}, Lcom/baidu/tts/d/b/b;->f()Z

    .line 49
    :cond_a
    new-instance v7, Lcom/baidu/tts/d/a/c;

    invoke-direct {v7}, Lcom/baidu/tts/d/a/c;-><init>()V

    .line 50
    invoke-virtual {v7, v8}, Lcom/baidu/tts/d/a/c;->a(Lcom/baidu/tts/d/b/b;)V

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before download fileId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v9, p0, Lcom/baidu/tts/d/c$a;->a:Lcom/baidu/tts/d/c;

    invoke-static {v9}, Lcom/baidu/tts/d/c;->c(Lcom/baidu/tts/d/c;)Lcom/baidu/tts/d/a/b;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;

    move-result-object v7

    .line 54
    invoke-virtual {v8, v7}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/d/a/e;)V

    const/4 v7, 0x1

    .line 55
    invoke-virtual {v2, v7}, Lcom/baidu/tts/d/a;->a(Z)V

    goto/16 :goto_4

    .line 56
    :cond_c
    invoke-virtual {v8}, Lcom/baidu/tts/d/b/b;->d()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lcom/baidu/tts/d/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 57
    :cond_d
    invoke-virtual {v2}, Lcom/baidu/tts/d/a;->a()Z

    move-result v3

    if-nez v3, :cond_e

    .line 58
    invoke-virtual {v2}, Lcom/baidu/tts/d/a;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 59
    iget-object v3, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v3, v5}, Lcom/baidu/tts/client/model/DownloadHandler;->updateProgress(Lcom/baidu/tts/d/b/d;)V

    .line 60
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v3

    sget-object v6, Lcom/baidu/tts/f/n;->ag:Lcom/baidu/tts/f/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v3

    .line 61
    iget-object v6, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v6, v3}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return-object v2

    :catch_0
    move-exception v3

    const-string v6, "exception="

    .line 62
    invoke-static {v6}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v3, Lcom/baidu/tts/f/n;->aj:Lcom/baidu/tts/f/n;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/tts/h/a/c;->a(Lcom/baidu/tts/f/n;Ljava/lang/String;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/baidu/tts/d/c$a;->b:Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v5, v1, v0}, Lcom/baidu/tts/d/b/d;->a(Lcom/baidu/tts/client/model/DownloadHandler;Lcom/baidu/tts/aop/tts/TtsError;)V

    return-object v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/d/c$a;->a()Lcom/baidu/tts/d/a;

    move-result-object v0

    return-object v0
.end method
