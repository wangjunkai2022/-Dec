.class public final Lcom/apk/uh0;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.kt"


# instance fields
.field public do:I

.field public for:Z

.field public if:Z

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/hg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/hg0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final do(Ljavax/net/ssl/SSLSocket;)Lcom/apk/hg0;
    .locals 7
    .param p1    # Ljavax/net/ssl/SSLSocket;
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

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Lcom/apk/uh0;->do:I

    iget-object v2, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hg0;

    .line 3
    invoke-virtual {v3, p1}, Lcom/apk/hg0;->if(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lcom/apk/uh0;->do:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    .line 5
    iget v1, p0, Lcom/apk/uh0;->do:I

    iget-object v2, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    .line 6
    iget-object v4, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/hg0;

    invoke-virtual {v4, p1}, Lcom/apk/hg0;->if(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_3
    iput-boolean v1, p0, Lcom/apk/uh0;->if:Z

    .line 8
    iget-boolean v1, p0, Lcom/apk/uh0;->for:Z

    .line 9
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, v3, Lcom/apk/hg0;->for:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "sslSocket.enabledCipherSuites"

    invoke-static {v0, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/apk/hg0;->for:[Ljava/lang/String;

    sget-object v4, Lcom/apk/eg0;->public:Lcom/apk/eg0$if;

    .line 12
    sget-object v4, Lcom/apk/eg0;->if:Ljava/util/Comparator;

    .line 13
    invoke-static {v0, v2, v4}, Lcom/apk/jh0;->static([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 14
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_4
    iget-object v2, v3, Lcom/apk/hg0;->new:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "sslSocket.enabledProtocols"

    invoke-static {v2, v4}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/apk/hg0;->new:[Ljava/lang/String;

    .line 17
    sget-object v5, Lcom/apk/bd0;->do:Lcom/apk/bd0;

    .line 18
    invoke-static {v2, v4, v5}, Lcom/apk/jh0;->static([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 20
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "supportedCipherSuites"

    .line 21
    invoke-static {v4, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v5, Lcom/apk/eg0;->public:Lcom/apk/eg0$if;

    .line 23
    sget-object v5, Lcom/apk/eg0;->if:Ljava/util/Comparator;

    const-string v6, "TLS_FALLBACK_SCSV"

    .line 24
    invoke-static {v4, v6, v5}, Lcom/apk/jh0;->throw([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v5

    const-string v6, "cipherSuitesIntersection"

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    if-eq v5, v1, :cond_6

    .line 25
    invoke-static {v0, v6}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    aget-object v4, v4, v5

    const-string v5, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {v4, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$concat"

    .line 27
    invoke-static {v0, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {v4, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v5, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    const-string v5, "$this$lastIndex"

    .line 29
    invoke-static {v0, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v5, v0

    add-int/2addr v5, v1

    .line 31
    aput-object v4, v0, v5

    .line 32
    :cond_6
    new-instance v1, Lcom/apk/hg0$do;

    invoke-direct {v1, v3}, Lcom/apk/hg0$do;-><init>(Lcom/apk/hg0;)V

    .line 33
    invoke-static {v0, v6}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apk/hg0$do;->if([Ljava/lang/String;)Lcom/apk/hg0$do;

    const-string v0, "tlsVersionsIntersection"

    .line 34
    invoke-static {v2, v0}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apk/hg0$do;->try([Ljava/lang/String;)Lcom/apk/hg0$do;

    .line 35
    invoke-virtual {v1}, Lcom/apk/hg0$do;->do()Lcom/apk/hg0;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/apk/hg0;->for()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 37
    iget-object v1, v0, Lcom/apk/hg0;->new:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 38
    :cond_7
    invoke-virtual {v0}, Lcom/apk/hg0;->do()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 39
    iget-object v0, v0, Lcom/apk/hg0;->for:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_8
    return-object v3

    .line 40
    :cond_9
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to find acceptable protocols. isFallback="

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apk/uh0;->for:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " modes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, p0, Lcom/apk/uh0;->new:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.util.Arrays.toString(this)"

    invoke-static {p1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
