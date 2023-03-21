.class public Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.tts.chainofresponsibility.logger.LogcatHelper"

.field public static b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

.field public static c:Ljava/lang/String;


# instance fields
.field public d:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->d:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->init(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->e:I

    return-void
.end method

.method public static getFileName()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

    .line 3
    :cond_0
    sget-object p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "baidu/ttsSDK/"

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->c:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->c:Ljava/lang/String;

    .line 4
    :goto_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->stop()V

    .line 2
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

    iget v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;-><init>(Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->d:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->a:Ljava/lang/String;

    const-string v1, " mPID="

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SavePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->d:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->d:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;

    :cond_0
    return-void
.end method
