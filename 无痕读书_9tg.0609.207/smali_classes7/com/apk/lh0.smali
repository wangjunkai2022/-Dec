.class public final Lcom/apk/lh0;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.kt"

# interfaces
.implements Lcom/apk/wf0;


# instance fields
.field public final if:Lcom/apk/ng0;


# direct methods
.method public constructor <init>(Lcom/apk/ng0;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/apk/ng0;->do:Lcom/apk/ng0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "defaultDns"

    .line 2
    invoke-static {p1, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/lh0;->if:Lcom/apk/ng0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/fh0;Lcom/apk/ch0;)Lcom/apk/zg0;
    .locals 20
    .param p1    # Lcom/apk/fh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "response"

    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v2, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 2
    iget v4, v2, Lcom/apk/ch0;->try:I

    const/16 v5, 0x191

    const/16 v6, 0x197

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_0

    .line 3
    sget-object v3, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    goto :goto_1

    :cond_0
    const-string v4, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v4, "WWW-Authenticate"

    .line 4
    :goto_0
    invoke-static {v3, v4}, Lcom/apk/ki0;->if(Lcom/apk/sg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5
    :goto_1
    iget-object v4, v2, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 6
    iget-object v5, v4, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 7
    iget v2, v2, Lcom/apk/ch0;->try:I

    const/4 v7, 0x1

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 8
    iget-object v6, v0, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    if-eqz v6, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 10
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/apk/dg0;

    .line 11
    iget-object v9, v8, Lcom/apk/dg0;->if:Ljava/lang/String;

    const-string v10, "Basic"

    .line 12
    invoke-static {v10, v9, v7}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_9

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iget-object v7, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    if-eqz v7, :cond_5

    .line 14
    iget-object v7, v7, Lcom/apk/uf0;->new:Lcom/apk/ng0;

    if-eqz v7, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    iget-object v7, v1, Lcom/apk/lh0;->if:Lcom/apk/ng0;

    :goto_5
    const-string v9, "realm"

    const-string v10, "proxy"

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v11

    if-eqz v11, :cond_6

    check-cast v11, Ljava/net/InetSocketAddress;

    .line 17
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-static {v6, v10}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v5, v7}, Lcom/apk/lh0;->if(Ljava/net/Proxy;Lcom/apk/tg0;Lcom/apk/ng0;)Ljava/net/InetAddress;

    move-result-object v13

    .line 19
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    .line 20
    iget-object v15, v5, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 21
    iget-object v7, v8, Lcom/apk/dg0;->do:Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 22
    iget-object v7, v8, Lcom/apk/dg0;->if:Ljava/lang/String;

    .line 23
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, v5, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    sget-object v19, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    .line 25
    invoke-static/range {v12 .. v19}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    goto :goto_6

    :catch_0
    move-exception v0

    .line 26
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    iget-object v11, v5, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 29
    invoke-static {v6, v10}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v5, v7}, Lcom/apk/lh0;->if(Ljava/net/Proxy;Lcom/apk/tg0;Lcom/apk/ng0;)Ljava/net/InetAddress;

    move-result-object v10

    .line 30
    iget v7, v5, Lcom/apk/tg0;->case:I

    .line 31
    iget-object v12, v5, Lcom/apk/tg0;->if:Ljava/lang/String;

    .line 32
    iget-object v13, v8, Lcom/apk/dg0;->do:Ljava/util/Map;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    .line 33
    iget-object v14, v8, Lcom/apk/dg0;->if:Ljava/lang/String;

    .line 34
    :try_start_1
    new-instance v15, Ljava/net/URL;

    iget-object v9, v5, Lcom/apk/tg0;->this:Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 35
    sget-object v16, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v9, v11

    move v11, v7

    .line 36
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    :goto_6
    if-eqz v7, :cond_a

    if-eqz v2, :cond_8

    const-string v0, "Proxy-Authorization"

    goto :goto_7

    :cond_8
    const-string v0, "Authorization"

    .line 37
    :goto_7
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth.userName"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    const-string v5, "auth.password"

    invoke-static {v3, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    .line 38
    iget-object v3, v8, Lcom/apk/dg0;->do:Ljava/util/Map;

    const-string v6, "charset"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39
    :try_start_2
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v7, "Charset.forName(charset)"

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 40
    :catch_1
    :cond_9
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v7, "ISO_8859_1"

    invoke-static {v3, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    const-string v7, "username"

    .line 41
    invoke-static {v2, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "password"

    invoke-static {v5, v7}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    sget-object v5, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v5, "$this$encode"

    .line 44
    invoke-static {v2, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v5, Lcom/apk/uk0;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Lcom/apk/uk0;-><init>([B)V

    .line 46
    invoke-virtual {v5}, Lcom/apk/uk0;->do()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Basic "

    .line 47
    invoke-static {v3, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/apk/zg0$do;

    invoke-direct {v3, v4}, Lcom/apk/zg0$do;-><init>(Lcom/apk/zg0;)V

    .line 49
    invoke-virtual {v3, v0, v2}, Lcom/apk/zg0$do;->for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;

    .line 50
    invoke-virtual {v3}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_9
    const/4 v7, 0x1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .line 51
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final if(Ljava/net/Proxy;Lcom/apk/tg0;Lcom/apk/ng0;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/apk/kh0;->do:[I

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const-string p2, "(address() as InetSocketAddress).address"

    invoke-static {p1, p2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, p2, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 4
    invoke-interface {p3, p1}, Lcom/apk/ng0;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/uc0;->try(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    :goto_1
    return-object p1
.end method
