.class public final Lcom/apk/ri0;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/apk/ji0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ri0$try;,
        Lcom/apk/ri0$if;,
        Lcom/apk/ri0$do;,
        Lcom/apk/ri0$new;,
        Lcom/apk/ri0$for;,
        Lcom/apk/ri0$case;
    }
.end annotation


# instance fields
.field public final case:Lcom/apk/tk0;

.field public do:I

.field public final else:Lcom/apk/sk0;

.field public for:Lcom/apk/sg0;

.field public final if:Lcom/apk/qi0;

.field public final new:Lcom/apk/xg0;

.field public final try:Lcom/apk/bi0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/xg0;Lcom/apk/bi0;Lcom/apk/tk0;Lcom/apk/sk0;)V
    .locals 1
    .param p1    # Lcom/apk/xg0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apk/bi0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ri0;->new:Lcom/apk/xg0;

    iput-object p2, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    iput-object p3, p0, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    iput-object p4, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 2
    new-instance p1, Lcom/apk/qi0;

    invoke-direct {p1, p3}, Lcom/apk/qi0;-><init>(Lcom/apk/tk0;)V

    iput-object p1, p0, Lcom/apk/ri0;->if:Lcom/apk/qi0;

    return-void
.end method

.method public static final this(Lcom/apk/ri0;Lcom/apk/xk0;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p1, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    .line 2
    sget-object v0, Lcom/apk/ml0;->new:Lcom/apk/ml0;

    const-string v1, "delegate"

    .line 3
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v0, p1, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    .line 5
    invoke-virtual {p0}, Lcom/apk/ml0;->do()Lcom/apk/ml0;

    .line 6
    invoke-virtual {p0}, Lcom/apk/ml0;->if()Lcom/apk/ml0;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 7
    throw p0
.end method


# virtual methods
.method public final break(J)Lcom/apk/ll0;
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ri0;->do:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/apk/ri0;->do:I

    .line 3
    new-instance v0, Lcom/apk/ri0$new;

    invoke-direct {v0, p0, p1, p2}, Lcom/apk/ri0$new;-><init>(Lcom/apk/ri0;J)V

    return-object v0

    :cond_1
    const-string p1, "state: "

    .line 4
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 2
    iget-object v0, v0, Lcom/apk/bi0;->if:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apk/jh0;->else(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-interface {v0}, Lcom/apk/sk0;->flush()V

    return-void
.end method

.method public final catch(Lcom/apk/sg0;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/apk/ri0;->do:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-interface {v0, p2}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    .line 3
    invoke-virtual {p1}, Lcom/apk/sg0;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-virtual {p1, v1}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v3

    const-string v4, ": "

    .line 5
    invoke-interface {v3, v4}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v1}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-interface {p1, v0}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    .line 9
    iput v2, p0, Lcom/apk/ri0;->do:I

    return-void

    :cond_2
    const-string p1, "state: "

    .line 10
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    invoke-interface {v0}, Lcom/apk/sk0;->flush()V

    return-void
.end method

.method public else(Lcom/apk/ch0;)J
    .locals 3
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/apk/jh0;->final(Lcom/apk/ch0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public for(Lcom/apk/ch0;)Lcom/apk/ll0;
    .locals 9
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/apk/ki0;->for(Lcom/apk/ch0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apk/ri0;->break(J)Lcom/apk/ll0;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 4
    iget-object p1, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 5
    iget v0, p0, Lcom/apk/ri0;->do:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iput v2, p0, Lcom/apk/ri0;->do:I

    .line 7
    new-instance v0, Lcom/apk/ri0$for;

    invoke-direct {v0, p0, p1}, Lcom/apk/ri0$for;-><init>(Lcom/apk/ri0;Lcom/apk/tg0;)V

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/apk/jh0;->final(Lcom/apk/ch0;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v5, v6}, Lcom/apk/ri0;->break(J)Lcom/apk/ll0;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    iget p1, p0, Lcom/apk/ri0;->do:I

    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 12
    iput v2, p0, Lcom/apk/ri0;->do:I

    .line 13
    iget-object p1, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 14
    invoke-virtual {p1}, Lcom/apk/bi0;->const()V

    .line 15
    new-instance p1, Lcom/apk/ri0$case;

    invoke-direct {p1, p0}, Lcom/apk/ri0$case;-><init>(Lcom/apk/ri0;)V

    :goto_2
    return-object p1

    .line 16
    :cond_6
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goto(Lcom/apk/zg0;J)Lcom/apk/jl0;
    .locals 5
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lcom/apk/zg0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x2

    const-string v2, "state: "

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lcom/apk/ri0;->do:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput v1, p0, Lcom/apk/ri0;->do:I

    .line 4
    new-instance p1, Lcom/apk/ri0$if;

    invoke-direct {p1, p0}, Lcom/apk/ri0$if;-><init>(Lcom/apk/ri0;)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    .line 6
    iget p1, p0, Lcom/apk/ri0;->do:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iput v1, p0, Lcom/apk/ri0;->do:I

    .line 8
    new-instance p1, Lcom/apk/ri0$try;

    invoke-direct {p1, p0}, Lcom/apk/ri0$try;-><init>(Lcom/apk/ri0;)V

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Lcom/apk/zg0;)V
    .locals 4
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 2
    iget-object v1, v1, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 3
    iget-object v1, v1, Lcom/apk/fh0;->if:Ljava/net/Proxy;

    .line 4
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyType"

    invoke-static {v1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, p1, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 11
    iget-boolean v2, v2, Lcom/apk/tg0;->do:Z

    if-nez v2, :cond_0

    .line 12
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    const-string v2, "url"

    .line 16
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/apk/tg0;->if()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/apk/tg0;->new()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " HTTP/1.1"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/apk/ri0;->catch(Lcom/apk/sg0;Ljava/lang/String;)V

    return-void
.end method

.method public new(Z)Lcom/apk/ch0$do;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/apk/ri0;->do:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/ri0;->if:Lcom/apk/qi0;

    invoke-virtual {v0}, Lcom/apk/qi0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pi0;->do(Ljava/lang/String;)Lcom/apk/pi0;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/apk/ch0$do;

    invoke-direct {v2}, Lcom/apk/ch0$do;-><init>()V

    .line 4
    iget-object v3, v0, Lcom/apk/pi0;->do:Lcom/apk/yg0;

    invoke-virtual {v2, v3}, Lcom/apk/ch0$do;->case(Lcom/apk/yg0;)Lcom/apk/ch0$do;

    .line 5
    iget v3, v0, Lcom/apk/pi0;->if:I

    .line 6
    iput v3, v2, Lcom/apk/ch0$do;->for:I

    .line 7
    iget-object v3, v0, Lcom/apk/pi0;->for:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/apk/ch0$do;->try(Ljava/lang/String;)Lcom/apk/ch0$do;

    .line 8
    iget-object v3, p0, Lcom/apk/ri0;->if:Lcom/apk/qi0;

    invoke-virtual {v3}, Lcom/apk/qi0;->do()Lcom/apk/sg0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apk/ch0$do;->new(Lcom/apk/sg0;)Lcom/apk/ch0$do;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lcom/apk/pi0;->if:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 10
    :cond_2
    iget p1, v0, Lcom/apk/pi0;->if:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Lcom/apk/ri0;->do:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/apk/ri0;->do:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 14
    iget-object v0, v0, Lcom/apk/bi0;->while:Lcom/apk/fh0;

    .line 15
    iget-object v0, v0, Lcom/apk/fh0;->do:Lcom/apk/uf0;

    .line 16
    iget-object v0, v0, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 17
    invoke-virtual {v0}, Lcom/apk/tg0;->case()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const-string p1, "state: "

    .line 19
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/apk/ri0;->do:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public try()Lcom/apk/bi0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    return-object v0
.end method
