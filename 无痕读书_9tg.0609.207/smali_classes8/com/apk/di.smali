.class public abstract Lcom/apk/di;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/di$for;,
        Lcom/apk/di$try;,
        Lcom/apk/di$case;,
        Lcom/apk/di$else;,
        Lcom/apk/di$new;,
        Lcom/apk/di$this;,
        Lcom/apk/di$break;,
        Lcom/apk/di$catch;,
        Lcom/apk/di$class;,
        Lcom/apk/di$if;,
        Lcom/apk/di$goto;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/di$if;

.field public final do:Ljava/lang/String;

.field public for:Ljava/net/ServerSocket;

.field public final if:I

.field public new:Ljava/lang/Thread;

.field public try:Lcom/apk/di$class;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/di;->do:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/apk/di;->if:I

    .line 4
    new-instance p1, Lcom/apk/di$case;

    invoke-direct {p1, p0, v0}, Lcom/apk/di$case;-><init>(Lcom/apk/di;Lcom/apk/di$do;)V

    iput-object p1, p0, Lcom/apk/di;->try:Lcom/apk/di$class;

    .line 5
    new-instance p1, Lcom/apk/di$for;

    invoke-direct {p1, p0, v0}, Lcom/apk/di$for;-><init>(Lcom/apk/di;Lcom/apk/di$do;)V

    iput-object p1, p0, Lcom/apk/di;->case:Lcom/apk/di$if;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    .line 6
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public for()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/apk/di;->for:Ljava/net/ServerSocket;

    .line 2
    iget-object v1, p0, Lcom/apk/di;->do:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/apk/di;->do:Ljava/lang/String;

    iget v3, p0, Lcom/apk/di;->if:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/apk/di;->if:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apk/di$do;

    invoke-direct {v1, p0}, Lcom/apk/di$do;-><init>(Lcom/apk/di;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apk/di;->new:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 5
    iget-object v0, p0, Lcom/apk/di;->new:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/apk/di;->new:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract if(Ljava/lang/String;Lcom/apk/di$goto;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/apk/di$this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apk/di$goto;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apk/di$this;"
        }
    .end annotation
.end method
