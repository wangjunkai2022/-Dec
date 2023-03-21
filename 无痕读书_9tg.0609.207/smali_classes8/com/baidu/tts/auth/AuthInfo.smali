.class public Lcom/baidu/tts/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field public a:Lcom/baidu/tts/f/m;

.field public b:Lcom/baidu/tts/auth/e$a;

.field public c:Lcom/baidu/tts/auth/d$a;

.field public d:Lcom/baidu/tts/aop/tts/TtsError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftValidDays()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->a()I

    move-result v0

    return v0
.end method

.method public getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->J:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->r:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/baidu/tts/h/a/c;->a()Lcom/baidu/tts/h/a/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/tts/f/n;->a:Lcom/baidu/tts/f/n;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/c;->b(Lcom/baidu/tts/f/n;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    :goto_1
    return-object v0
.end method

.method public getNotifyMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineResult()Lcom/baidu/tts/auth/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    return-object v0
.end method

.method public getOfflineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    :goto_0
    return-object v0
.end method

.method public getOnlineResult()Lcom/baidu/tts/auth/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/e$a;

    return-object v0
.end method

.method public getOnlineTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/e$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    :goto_0
    return-object v0
.end method

.method public getTtsEnum()Lcom/baidu/tts/f/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    return-object v0
.end method

.method public getTtsError()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/baidu/tts/auth/AuthInfo$1;->a:[I

    iget-object v2, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->getMixTtsError()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/e$a;

    invoke-virtual {v0}, Lcom/baidu/tts/auth/e$a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public isMixSuccess()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOfflineSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/d$a;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnlineSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/tts/auth/e$a;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    if-eqz v0, :cond_3

    .line 3
    sget-object v2, Lcom/baidu/tts/auth/AuthInfo$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isMixSuccess()Z

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOfflineSuccess()Z

    move-result v0

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/tts/auth/AuthInfo;->isOnlineSuccess()Z

    move-result v0

    return v0

    :cond_3
    return v1

    :cond_4
    const-string v0, "cause="

    .line 7
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    invoke-virtual {v2}, Lcom/baidu/tts/aop/tts/TtsError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AuthInfo"

    invoke-static {v2, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setOfflineResult(Lcom/baidu/tts/auth/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->c:Lcom/baidu/tts/auth/d$a;

    return-void
.end method

.method public setOnlineResult(Lcom/baidu/tts/auth/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->b:Lcom/baidu/tts/auth/e$a;

    return-void
.end method

.method public setTtsEnum(Lcom/baidu/tts/f/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->a:Lcom/baidu/tts/f/m;

    return-void
.end method

.method public setTtsError(Lcom/baidu/tts/aop/tts/TtsError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/auth/AuthInfo;->d:Lcom/baidu/tts/aop/tts/TtsError;

    return-void
.end method
