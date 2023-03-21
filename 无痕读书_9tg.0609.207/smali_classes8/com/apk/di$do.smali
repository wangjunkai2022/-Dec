.class public Lcom/apk/di$do;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/di;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/di;


# direct methods
.method public constructor <init>(Lcom/apk/di;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    .line 2
    iget-object v0, v0, Lcom/apk/di;->for:Ljava/net/ServerSocket;

    .line 3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    .line 8
    iget-object v3, v3, Lcom/apk/di;->try:Lcom/apk/di$class;

    .line 9
    check-cast v3, Lcom/apk/di$case;

    if-eqz v3, :cond_1

    .line 10
    new-instance v3, Lcom/apk/di$try;

    invoke-direct {v3}, Lcom/apk/di$try;-><init>()V

    .line 11
    new-instance v4, Lcom/apk/di$else;

    iget-object v5, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/apk/di$else;-><init>(Lcom/apk/di;Lcom/apk/di$catch;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 12
    iget-object v1, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    .line 13
    iget-object v1, v1, Lcom/apk/di;->case:Lcom/apk/di$if;

    .line 14
    new-instance v2, Lcom/apk/di$do$do;

    invoke-direct {v2, p0, v4, v0}, Lcom/apk/di$do$do;-><init>(Lcom/apk/di$do;Lcom/apk/di$else;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Lcom/apk/di$for;

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/apk/di$for;->do(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    nop

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/apk/di$do;->do:Lcom/apk/di;

    .line 17
    iget-object v0, v0, Lcom/apk/di;->for:Ljava/net/ServerSocket;

    .line 18
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
