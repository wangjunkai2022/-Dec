.class public final Lcom/apk/xg0$do;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public break:Lcom/apk/kg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public case:Z

.field public catch:Lcom/apk/ng0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public class:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public const:Lcom/apk/wf0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public default:J

.field public do:Lcom/apk/lg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public else:Lcom/apk/wf0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public extends:Lcom/apk/di0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final:Ljavax/net/SocketFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public goto:Z

.field public if:Lcom/apk/gg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public import:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/apk/yg0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public native:Ljavax/net/ssl/HostnameVerifier;
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

.field public public:Lcom/apk/bg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public return:Lcom/apk/kk0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static:I

.field public super:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public switch:I

.field public this:Z

.field public throw:Ljavax/net/ssl/X509TrustManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public throws:I

.field public try:Lcom/apk/og0$if;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public while:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/lg0;

    invoke-direct {v0}, Lcom/apk/lg0;-><init>()V

    iput-object v0, p0, Lcom/apk/xg0$do;->do:Lcom/apk/lg0;

    .line 3
    new-instance v0, Lcom/apk/gg0;

    invoke-direct {v0}, Lcom/apk/gg0;-><init>()V

    iput-object v0, p0, Lcom/apk/xg0$do;->if:Lcom/apk/gg0;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/xg0$do;->for:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/xg0$do;->new:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/apk/og0;->do:Lcom/apk/og0;

    const-string v1, "$this$asFactory"

    .line 7
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/apk/hh0;

    invoke-direct {v1, v0}, Lcom/apk/hh0;-><init>(Lcom/apk/og0;)V

    .line 9
    iput-object v1, p0, Lcom/apk/xg0$do;->try:Lcom/apk/og0$if;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/apk/xg0$do;->case:Z

    .line 11
    sget-object v1, Lcom/apk/wf0;->do:Lcom/apk/wf0;

    iput-object v1, p0, Lcom/apk/xg0$do;->else:Lcom/apk/wf0;

    .line 12
    iput-boolean v0, p0, Lcom/apk/xg0$do;->goto:Z

    .line 13
    iput-boolean v0, p0, Lcom/apk/xg0$do;->this:Z

    .line 14
    sget-object v0, Lcom/apk/kg0;->do:Lcom/apk/kg0;

    iput-object v0, p0, Lcom/apk/xg0$do;->break:Lcom/apk/kg0;

    .line 15
    sget-object v0, Lcom/apk/ng0;->do:Lcom/apk/ng0;

    iput-object v0, p0, Lcom/apk/xg0$do;->catch:Lcom/apk/ng0;

    .line 16
    sget-object v0, Lcom/apk/wf0;->do:Lcom/apk/wf0;

    iput-object v0, p0, Lcom/apk/xg0$do;->const:Lcom/apk/wf0;

    .line 17
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apk/xg0$do;->final:Ljavax/net/SocketFactory;

    .line 18
    sget-object v0, Lcom/apk/xg0;->strictfp:Lcom/apk/xg0$if;

    .line 19
    sget-object v0, Lcom/apk/xg0;->continue:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/apk/xg0$do;->while:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/apk/xg0;->strictfp:Lcom/apk/xg0$if;

    .line 22
    sget-object v0, Lcom/apk/xg0;->abstract:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/apk/xg0$do;->import:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/apk/lk0;->do:Lcom/apk/lk0;

    iput-object v0, p0, Lcom/apk/xg0$do;->native:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    sget-object v0, Lcom/apk/bg0;->for:Lcom/apk/bg0;

    iput-object v0, p0, Lcom/apk/xg0$do;->public:Lcom/apk/bg0;

    const/16 v0, 0x2710

    .line 26
    iput v0, p0, Lcom/apk/xg0$do;->static:I

    .line 27
    iput v0, p0, Lcom/apk/xg0$do;->switch:I

    .line 28
    iput v0, p0, Lcom/apk/xg0$do;->throws:I

    const-wide/16 v0, 0x400

    .line 29
    iput-wide v0, p0, Lcom/apk/xg0$do;->default:J

    return-void
.end method


# virtual methods
.method public final do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/apk/jh0;->new(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/apk/xg0$do;->static:I

    return-object p0
.end method

.method public final for(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/apk/xg0$do;
    .locals 2
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trustManager"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/apk/xg0$do;->super:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/apk/xg0$do;->throw:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p2, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/apk/xg0$do;->super:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 6
    sget-object p1, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/uj0;->if(Ljavax/net/ssl/X509TrustManager;)Lcom/apk/kk0;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/apk/xg0$do;->return:Lcom/apk/kk0;

    .line 9
    iput-object p2, p0, Lcom/apk/xg0$do;->throw:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method public final if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/apk/jh0;->new(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/apk/xg0$do;->switch:I

    return-object p0
.end method

.method public final new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/apk/jh0;->new(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/apk/xg0$do;->throws:I

    return-object p0
.end method
