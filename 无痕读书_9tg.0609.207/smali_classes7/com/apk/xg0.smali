.class public Lcom/apk/xg0;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/apk/zf0$do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/xg0$do;,
        Lcom/apk/xg0$if;
    }
.end annotation


# static fields
.field public static final abstract:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/yg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final continue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/hg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final strictfp:Lcom/apk/xg0$if;


# instance fields
.field public final break:Lcom/apk/kg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final case:Z

.field public final catch:Lcom/apk/xf0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final class:Lcom/apk/ng0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final const:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final default:I

.field public final do:Lcom/apk/lg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final else:Lcom/apk/wf0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final extends:I

.field public final final:Ljava/net/ProxySelector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final finally:I

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ug0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final goto:Z

.field public final if:Lcom/apk/gg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final import:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final native:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/hg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ug0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final package:I

.field public final private:Lcom/apk/di0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final public:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/yg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final return:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final static:Lcom/apk/bg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final super:Lcom/apk/wf0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final switch:Lcom/apk/kk0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final this:Z

.field public final throw:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final throws:I

.field public final try:Lcom/apk/og0$if;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final while:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apk/xg0$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/xg0$if;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/xg0;->strictfp:Lcom/apk/xg0$if;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/apk/yg0;

    .line 1
    sget-object v2, Lcom/apk/yg0;->try:Lcom/apk/yg0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/apk/xg0;->abstract:Ljava/util/List;

    new-array v0, v0, [Lcom/apk/hg0;

    .line 2
    sget-object v1, Lcom/apk/hg0;->else:Lcom/apk/hg0;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apk/hg0;->goto:Lcom/apk/hg0;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Lcom/apk/jh0;->super([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/apk/xg0;->continue:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/apk/xg0$do;

    invoke-direct {v0}, Lcom/apk/xg0$do;-><init>()V

    invoke-direct {p0, v0}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    return-void
.end method

.method public constructor <init>(Lcom/apk/xg0$do;)V
    .locals 4
    .param p1    # Lcom/apk/xg0$do;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/apk/xg0$do;->do:Lcom/apk/lg0;

    .line 3
    iput-object v0, p0, Lcom/apk/xg0;->do:Lcom/apk/lg0;

    .line 4
    iget-object v0, p1, Lcom/apk/xg0$do;->if:Lcom/apk/gg0;

    .line 5
    iput-object v0, p0, Lcom/apk/xg0;->if:Lcom/apk/gg0;

    .line 6
    iget-object v0, p1, Lcom/apk/xg0$do;->for:Ljava/util/List;

    .line 7
    invoke-static {v0}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xg0;->for:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcom/apk/xg0$do;->new:Ljava/util/List;

    .line 9
    invoke-static {v0}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xg0;->new:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lcom/apk/xg0$do;->try:Lcom/apk/og0$if;

    .line 11
    iput-object v0, p0, Lcom/apk/xg0;->try:Lcom/apk/og0$if;

    .line 12
    iget-boolean v0, p1, Lcom/apk/xg0$do;->case:Z

    .line 13
    iput-boolean v0, p0, Lcom/apk/xg0;->case:Z

    .line 14
    iget-object v0, p1, Lcom/apk/xg0$do;->else:Lcom/apk/wf0;

    .line 15
    iput-object v0, p0, Lcom/apk/xg0;->else:Lcom/apk/wf0;

    .line 16
    iget-boolean v0, p1, Lcom/apk/xg0$do;->goto:Z

    .line 17
    iput-boolean v0, p0, Lcom/apk/xg0;->goto:Z

    .line 18
    iget-boolean v0, p1, Lcom/apk/xg0$do;->this:Z

    .line 19
    iput-boolean v0, p0, Lcom/apk/xg0;->this:Z

    .line 20
    iget-object v0, p1, Lcom/apk/xg0$do;->break:Lcom/apk/kg0;

    .line 21
    iput-object v0, p0, Lcom/apk/xg0;->break:Lcom/apk/kg0;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/apk/xg0;->catch:Lcom/apk/xf0;

    .line 23
    iget-object v1, p1, Lcom/apk/xg0$do;->catch:Lcom/apk/ng0;

    .line 24
    iput-object v1, p0, Lcom/apk/xg0;->class:Lcom/apk/ng0;

    .line 25
    iget-object v1, p1, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    .line 26
    iput-object v1, p0, Lcom/apk/xg0;->const:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/apk/hk0;->do:Lcom/apk/hk0;

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/apk/hk0;->do:Lcom/apk/hk0;

    .line 29
    :goto_0
    iput-object v1, p0, Lcom/apk/xg0;->final:Ljava/net/ProxySelector;

    .line 30
    iget-object v1, p1, Lcom/apk/xg0$do;->const:Lcom/apk/wf0;

    .line 31
    iput-object v1, p0, Lcom/apk/xg0;->super:Lcom/apk/wf0;

    .line 32
    iget-object v1, p1, Lcom/apk/xg0$do;->final:Ljavax/net/SocketFactory;

    .line 33
    iput-object v1, p0, Lcom/apk/xg0;->throw:Ljavax/net/SocketFactory;

    .line 34
    iget-object v1, p1, Lcom/apk/xg0$do;->while:Ljava/util/List;

    .line 35
    iput-object v1, p0, Lcom/apk/xg0;->native:Ljava/util/List;

    .line 36
    iget-object v1, p1, Lcom/apk/xg0$do;->import:Ljava/util/List;

    .line 37
    iput-object v1, p0, Lcom/apk/xg0;->public:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    .line 39
    iput-object v1, p0, Lcom/apk/xg0;->return:Ljavax/net/ssl/HostnameVerifier;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/apk/xg0;->throws:I

    .line 41
    iget v2, p1, Lcom/apk/xg0$do;->static:I

    .line 42
    iput v2, p0, Lcom/apk/xg0;->default:I

    .line 43
    iget v2, p1, Lcom/apk/xg0$do;->switch:I

    .line 44
    iput v2, p0, Lcom/apk/xg0;->extends:I

    .line 45
    iget v2, p1, Lcom/apk/xg0$do;->throws:I

    .line 46
    iput v2, p0, Lcom/apk/xg0;->finally:I

    .line 47
    iput v1, p0, Lcom/apk/xg0;->package:I

    .line 48
    iget-object v2, p1, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    new-instance v2, Lcom/apk/di0;

    invoke-direct {v2}, Lcom/apk/di0;-><init>()V

    :goto_1
    iput-object v2, p0, Lcom/apk/xg0;->private:Lcom/apk/di0;

    .line 50
    iget-object v2, p0, Lcom/apk/xg0;->native:Ljava/util/List;

    .line 51
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 52
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/hg0;

    .line 53
    iget-boolean v3, v3, Lcom/apk/hg0;->do:Z

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 54
    iput-object v0, p0, Lcom/apk/xg0;->while:Ljavax/net/ssl/SSLSocketFactory;

    .line 55
    iput-object v0, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    .line 56
    iput-object v0, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    .line 57
    sget-object p1, Lcom/apk/bg0;->for:Lcom/apk/bg0;

    iput-object p1, p0, Lcom/apk/xg0;->static:Lcom/apk/bg0;

    goto :goto_4

    .line 58
    :cond_6
    iget-object v2, p1, Lcom/apk/xg0$do;->super:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_7

    .line 59
    iput-object v2, p0, Lcom/apk/xg0;->while:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    iget-object v2, p1, Lcom/apk/xg0$do;->return:Lcom/apk/kk0;

    .line 61
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    .line 62
    iget-object v2, p1, Lcom/apk/xg0$do;->throw:Ljavax/net/ssl/X509TrustManager;

    .line 63
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    .line 64
    iget-object p1, p1, Lcom/apk/xg0$do;->public:Lcom/apk/bg0;

    .line 65
    iget-object v2, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/apk/bg0;->if(Lcom/apk/kk0;)Lcom/apk/bg0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/xg0;->static:Lcom/apk/bg0;

    goto :goto_4

    .line 66
    :cond_7
    sget-object v2, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 67
    sget-object v2, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 68
    invoke-virtual {v2}, Lcom/apk/uj0;->final()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    .line 69
    sget-object v2, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 70
    sget-object v2, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 71
    iget-object v3, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/apk/uj0;->const(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/xg0;->while:Ljavax/net/ssl/SSLSocketFactory;

    .line 72
    iget-object v2, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    const-string v3, "trustManager"

    .line 73
    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v3, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 75
    sget-object v3, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 76
    invoke-virtual {v3, v2}, Lcom/apk/uj0;->if(Ljavax/net/ssl/X509TrustManager;)Lcom/apk/kk0;

    move-result-object v2

    .line 77
    iput-object v2, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    .line 78
    iget-object p1, p1, Lcom/apk/xg0$do;->public:Lcom/apk/bg0;

    .line 79
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/apk/bg0;->if(Lcom/apk/kk0;)Lcom/apk/bg0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/xg0;->static:Lcom/apk/bg0;

    .line 80
    :goto_4
    iget-object p1, p0, Lcom/apk/xg0;->for:Ljava/util/List;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz p1, :cond_19

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_18

    .line 81
    iget-object p1, p0, Lcom/apk/xg0;->new:Ljava/util/List;

    if-eqz p1, :cond_17

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_16

    .line 82
    iget-object p1, p0, Lcom/apk/xg0;->native:Ljava/util/List;

    .line 83
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 84
    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/hg0;

    .line 85
    iget-boolean v0, v0, Lcom/apk/hg0;->do:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_12

    .line 86
    iget-object p1, p0, Lcom/apk/xg0;->while:Ljavax/net/ssl/SSLSocketFactory;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_7
    const-string v0, "Check failed."

    if-eqz p1, :cond_11

    .line 87
    iget-object p1, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_10

    .line 88
    iget-object p1, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    if-nez p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_f

    .line 89
    iget-object p1, p0, Lcom/apk/xg0;->static:Lcom/apk/bg0;

    sget-object v1, Lcom/apk/bg0;->for:Lcom/apk/bg0;

    invoke-static {p1, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_9

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_12
    iget-object p1, p0, Lcom/apk/xg0;->while:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_15

    .line 94
    iget-object p1, p0, Lcom/apk/xg0;->switch:Lcom/apk/kk0;

    if-eqz p1, :cond_14

    .line 95
    iget-object p1, p0, Lcom/apk/xg0;->import:Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_13

    :goto_9
    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    const-string p1, "Null network interceptor: "

    .line 98
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/xg0;->new:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    const-string p1, "Null interceptor: "

    .line 100
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/xg0;->for:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public do(Lcom/apk/zg0;)Lcom/apk/zf0;
    .locals 2
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/apk/xh0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/apk/xh0;-><init>(Lcom/apk/xg0;Lcom/apk/zg0;Z)V

    return-object v0
.end method
