.class public final Lcom/apk/fi0;
.super Ljava/lang/Object;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fi0$do;
    }
.end annotation


# instance fields
.field public final case:Lcom/apk/di0;

.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public final else:Lcom/apk/zf0;

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:Lcom/apk/og0;

.field public if:I

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/fh0;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Lcom/apk/uf0;


# direct methods
.method public constructor <init>(Lcom/apk/uf0;Lcom/apk/di0;Lcom/apk/zf0;Lcom/apk/og0;)V
    .locals 4
    .param p1    # Lcom/apk/uf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/di0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/og0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventListener"

    invoke-static {p4, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    iput-object p2, p0, Lcom/apk/fi0;->case:Lcom/apk/di0;

    iput-object p3, p0, Lcom/apk/fi0;->else:Lcom/apk/zf0;

    iput-object p4, p0, Lcom/apk/fi0;->goto:Lcom/apk/og0;

    .line 2
    sget-object p1, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    .line 3
    iput-object p1, p0, Lcom/apk/fi0;->do:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/apk/fi0;->for:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/fi0;->new:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 7
    iget-object p2, p1, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 8
    iget-object p1, p1, Lcom/apk/uf0;->break:Ljava/net/Proxy;

    .line 9
    iget-object p3, p0, Lcom/apk/fi0;->goto:Lcom/apk/og0;

    iget-object p4, p0, Lcom/apk/fi0;->else:Lcom/apk/zf0;

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 10
    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "url"

    invoke-static {p2, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/apk/sb0;->continue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/apk/tg0;->else()Ljava/net/URI;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-array p1, v3, [Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, p1, p4

    invoke-static {p1}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/apk/fi0;->try:Lcom/apk/uf0;

    .line 15
    iget-object v2, v2, Lcom/apk/uf0;->catch:Ljava/net/ProxySelector;

    .line 16
    invoke-virtual {v2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    new-array p1, v3, [Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, p1, p4

    invoke-static {p1}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {p1}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 19
    :goto_2
    iput-object p1, p0, Lcom/apk/fi0;->do:Ljava/util/List;

    .line 20
    iput p4, p0, Lcom/apk/fi0;->if:I

    .line 21
    iget-object p4, p0, Lcom/apk/fi0;->goto:Lcom/apk/og0;

    iget-object v2, p0, Lcom/apk/fi0;->else:Lcom/apk/zf0;

    if-eqz p4, :cond_5

    .line 22
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proxies"

    invoke-static {p1, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    throw v1

    .line 23
    :cond_6
    throw v1
.end method


# virtual methods
.method public final do()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/fi0;->if()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apk/fi0;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final if()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/fi0;->if:I

    iget-object v1, p0, Lcom/apk/fi0;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
