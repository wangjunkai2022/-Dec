.class public Lcom/apk/tw;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/tw$if;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/xw;

.field public do:Landroid/app/Application;

.field public else:J

.field public for:Lcom/apk/xg0;

.field public if:Landroid/os/Handler;

.field public new:Lcom/apk/fy;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apk/tw;->if:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/apk/tw;->try:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/apk/tw;->else:J

    .line 5
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    iput-object v0, p0, Lcom/apk/tw;->case:Lcom/apk/xw;

    .line 6
    new-instance v0, Lcom/apk/xg0$do;

    invoke-direct {v0}, Lcom/apk/xg0$do;-><init>()V

    .line 7
    new-instance v1, Lcom/apk/ey;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/apk/ey;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/apk/ey$do;->new:Lcom/apk/ey$do;

    .line 9
    iput-object v2, v1, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    .line 10
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 11
    iput-object v2, v1, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    const-string v2, "interceptor"

    .line 12
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, v0, Lcom/apk/xg0$do;->for:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lcom/apk/xg0$do;->if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/apk/xg0$do;->new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 16
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/apk/xg0$do;->do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 17
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 18
    iget-object v2, v0, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 19
    iput-object v3, v0, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 20
    :cond_0
    iput-object v1, v0, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    .line 21
    invoke-static {}, Lcom/apk/dy;->do()Lcom/apk/dy$for;

    move-result-object v1

    .line 22
    iget-object v2, v1, Lcom/apk/dy$for;->do:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/apk/dy$for;->if:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lcom/apk/xg0$do;->for(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/apk/xg0$do;

    .line 23
    sget-object v1, Lcom/apk/dy;->if:Ljavax/net/ssl/HostnameVerifier;

    const-string v2, "hostnameVerifier"

    .line 24
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, v0, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, v2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 26
    iput-object v3, v0, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 27
    :cond_1
    iput-object v1, v0, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    .line 28
    new-instance v1, Lcom/apk/xg0;

    invoke-direct {v1, v0}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 29
    iput-object v1, p0, Lcom/apk/tw;->for:Lcom/apk/xg0;

    return-void
.end method

.method public constructor <init>(Lcom/apk/tw$do;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/apk/tw;->if:Landroid/os/Handler;

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/apk/tw;->try:I

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcom/apk/tw;->else:J

    .line 34
    sget-object p1, Lcom/apk/xw;->if:Lcom/apk/xw;

    iput-object p1, p0, Lcom/apk/tw;->case:Lcom/apk/xw;

    .line 35
    new-instance p1, Lcom/apk/xg0$do;

    invoke-direct {p1}, Lcom/apk/xg0$do;-><init>()V

    .line 36
    new-instance v0, Lcom/apk/ey;

    const-string v1, "OkGo"

    invoke-direct {v0, v1}, Lcom/apk/ey;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/apk/ey$do;->new:Lcom/apk/ey$do;

    .line 38
    iput-object v1, v0, Lcom/apk/ey;->do:Lcom/apk/ey$do;

    .line 39
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 40
    iput-object v1, v0, Lcom/apk/ey;->if:Ljava/util/logging/Level;

    const-string v1, "interceptor"

    .line 41
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p1, Lcom/apk/xg0$do;->for:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/xg0$do;->if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/xg0$do;->new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/xg0$do;->do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 46
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 47
    iget-object v1, p1, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 48
    iput-object v2, p1, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 49
    :cond_0
    iput-object v0, p1, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    .line 50
    invoke-static {}, Lcom/apk/dy;->do()Lcom/apk/dy$for;

    move-result-object v0

    .line 51
    iget-object v1, v0, Lcom/apk/dy$for;->do:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lcom/apk/dy$for;->if:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1, v1, v0}, Lcom/apk/xg0$do;->for(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/apk/xg0$do;

    .line 52
    sget-object v0, Lcom/apk/dy;->if:Ljavax/net/ssl/HostnameVerifier;

    const-string v1, "hostnameVerifier"

    .line 53
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v1, p1, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 55
    iput-object v2, p1, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 56
    :cond_1
    iput-object v0, p1, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    .line 57
    new-instance v0, Lcom/apk/xg0;

    invoke-direct {v0, p1}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 58
    iput-object v0, p0, Lcom/apk/tw;->for:Lcom/apk/xg0;

    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/apk/jy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/apk/jy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/jy;

    invoke-direct {v0, p0}, Lcom/apk/jy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public do(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 3
    iget-object v1, v1, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v1, Lcom/apk/lg0;->new:Ljava/util/ArrayDeque;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lcom/apk/xh0$do;

    .line 9
    iget-object v5, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Collections.unmodifiable\u2026yncCalls.map { it.call })"

    invoke-static {v2, v3}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zf0;

    .line 12
    invoke-interface {v2}, Lcom/apk/zf0;->for()Lcom/apk/zg0;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v3, "type"

    .line 13
    invoke-static {v0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v3, v5, Lcom/apk/zg0;->case:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {v2}, Lcom/apk/zf0;->cancel()V

    goto :goto_1

    .line 17
    :cond_3
    throw v3

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 19
    iget-object v1, v1, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_1
    iget-object v2, v1, Lcom/apk/lg0;->case:Ljava/util/ArrayDeque;

    iget-object v5, v1, Lcom/apk/lg0;->try:Ljava/util/ArrayDeque;

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Lcom/apk/xh0$do;

    .line 25
    iget-object v5, v5, Lcom/apk/xh0$do;->for:Lcom/apk/xh0;

    .line 26
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v2, v6}, Lcom/apk/uc0;->else(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v4, "Collections.unmodifiable\u2026yncCalls.map { it.call })"

    invoke-static {v2, v4}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/zf0;

    .line 28
    invoke-interface {v2}, Lcom/apk/zf0;->for()Lcom/apk/zg0;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "type"

    .line 29
    invoke-static {v0, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v4, v4, Lcom/apk/zg0;->case:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 32
    invoke-interface {v2}, Lcom/apk/zf0;->cancel()V

    goto :goto_3

    .line 33
    :cond_7
    throw v3

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 35
    monitor-exit v1

    throw p1
.end method

.method public for(I)Lcom/apk/tw;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/apk/tw;->try:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/tw;->do:Landroid/app/Application;

    return-object v0
.end method

.method public if(J)Lcom/apk/tw;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Lcom/apk/tw;->else:J

    return-object p0
.end method
