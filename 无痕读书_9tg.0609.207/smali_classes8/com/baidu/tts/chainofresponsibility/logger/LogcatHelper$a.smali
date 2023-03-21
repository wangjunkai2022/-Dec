.class public Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;
.super Ljava/lang/Thread;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

.field public c:Ljava/lang/Process;

.field public d:Ljava/io/BufferedReader;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->b:Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->e:Z

    .line 4
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->a:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    .line 6
    iput-object p2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->f:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTSLog-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const-string p1, "logcat -v time | grep \"("

    .line 9
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->f:Ljava/lang/String;

    const-string p3, ")\""

    invoke-static {p1, p2, p3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->e:Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    .line 3
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "bdtts-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 10
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    if-eqz v1, :cond_5

    .line 12
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 13
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_8

    .line 16
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 17
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    :goto_4
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    .line 19
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 22
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    if-eqz v1, :cond_7

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 25
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_8

    .line 28
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :cond_8
    :goto_6
    return-void

    .line 29
    :goto_7
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    if-eqz v2, :cond_9

    .line 30
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 31
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->c:Ljava/lang/Process;

    .line 32
    :cond_9
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;

    if-eqz v2, :cond_a

    .line 33
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 34
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->d:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :cond_a
    :goto_8
    iget-object v2, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_b

    .line 37
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v2

    .line 38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :goto_9
    iput-object v0, p0, Lcom/baidu/tts/chainofresponsibility/logger/LogcatHelper$a;->g:Ljava/io/FileOutputStream;

    .line 40
    :cond_b
    throw v1
.end method
