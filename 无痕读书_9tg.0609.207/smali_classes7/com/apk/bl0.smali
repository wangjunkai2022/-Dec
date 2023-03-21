.class public final synthetic Lcom/apk/bl0;
.super Ljava/lang/Object;
.source "JvmOkio.kt"


# static fields
.field public static final do:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "okio.Okio"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/apk/bl0;->do:Ljava/util/logging/Logger;

    return-void
.end method

.method public static final do(Ljava/lang/AssertionError;)Z
    .locals 3
    .param p0    # Ljava/lang/AssertionError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$isAndroidGetsocknameError"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const-string v2, "getsockname failed"

    invoke-static {p0, v2, v1, v0}, Lcom/apk/ie0;->if(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final for(Ljava/io/File;)Lcom/apk/ll0;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    invoke-static {v0}, Lcom/apk/bl0;->new(Ljava/io/InputStream;)Lcom/apk/ll0;

    move-result-object p0

    return-object p0
.end method

.method public static final if(Ljava/net/Socket;)Lcom/apk/jl0;
    .locals 3
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/apk/kl0;

    invoke-direct {v0, p0}, Lcom/apk/kl0;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lcom/apk/dl0;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/apk/dl0;-><init>(Ljava/io/OutputStream;Lcom/apk/ml0;)V

    const-string p0, "sink"

    .line 3
    invoke-static {v1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/apk/pk0;

    invoke-direct {p0, v0, v1}, Lcom/apk/pk0;-><init>(Lcom/apk/ok0;Lcom/apk/jl0;)V

    return-object p0
.end method

.method public static final new(Ljava/io/InputStream;)Lcom/apk/ll0;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/apk/al0;

    new-instance v1, Lcom/apk/ml0;

    invoke-direct {v1}, Lcom/apk/ml0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/apk/al0;-><init>(Ljava/io/InputStream;Lcom/apk/ml0;)V

    return-object v0
.end method

.method public static final try(Ljava/net/Socket;)Lcom/apk/ll0;
    .locals 3
    .param p0    # Ljava/net/Socket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/apk/kl0;

    invoke-direct {v0, p0}, Lcom/apk/kl0;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Lcom/apk/al0;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/apk/al0;-><init>(Ljava/io/InputStream;Lcom/apk/ml0;)V

    const-string p0, "source"

    .line 3
    invoke-static {v1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/apk/qk0;

    invoke-direct {p0, v0, v1}, Lcom/apk/qk0;-><init>(Lcom/apk/ok0;Lcom/apk/ll0;)V

    return-object p0
.end method
