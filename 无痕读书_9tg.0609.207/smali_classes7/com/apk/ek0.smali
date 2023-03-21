.class public final Lcom/apk/ek0;
.super Ljava/lang/Object;
.source "DeferredSocketAdapter.kt"

# interfaces
.implements Lcom/apk/fk0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ek0$do;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/fk0;

.field public final if:Lcom/apk/ek0$do;


# direct methods
.method public constructor <init>(Lcom/apk/ek0$do;)V
    .locals 1
    .param p1    # Lcom/apk/ek0$do;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "socketAdapterFactory"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ek0;->if:Lcom/apk/ek0$do;

    return-void
.end method


# virtual methods
.method public do(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/ek0;->if:Lcom/apk/ek0$do;

    invoke-interface {v0, p1}, Lcom/apk/ek0$do;->do(Ljavax/net/ssl/SSLSocket;)Z

    move-result p1

    return p1
.end method

.method public for(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ek0;->new(Ljavax/net/ssl/SSLSocket;)Lcom/apk/fk0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/apk/fk0;->for(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public if(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ek0;->new(Ljavax/net/ssl/SSLSocket;)Lcom/apk/fk0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apk/fk0;->if(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized new(Ljavax/net/ssl/SSLSocket;)Lcom/apk/fk0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ek0;->do:Lcom/apk/fk0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/ek0;->if:Lcom/apk/ek0$do;

    invoke-interface {v0, p1}, Lcom/apk/ek0$do;->do(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ek0;->if:Lcom/apk/ek0$do;

    invoke-interface {v0, p1}, Lcom/apk/ek0$do;->if(Ljavax/net/ssl/SSLSocket;)Lcom/apk/fk0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ek0;->do:Lcom/apk/fk0;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/ek0;->do:Lcom/apk/fk0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
