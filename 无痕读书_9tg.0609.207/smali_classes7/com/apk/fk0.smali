.class public interface abstract Lcom/apk/fk0;
.super Ljava/lang/Object;
.source "SocketAdapter.kt"


# virtual methods
.method public abstract do(Ljavax/net/ssl/SSLSocket;)Z
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract for(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/apk/yg0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract if(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isSupported()Z
.end method
