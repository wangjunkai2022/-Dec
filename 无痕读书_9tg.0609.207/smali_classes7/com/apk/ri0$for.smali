.class public final Lcom/apk/ri0$for;
.super Lcom/apk/ri0$do;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field public final case:Lcom/apk/tg0;

.field public final synthetic else:Lcom/apk/ri0;

.field public new:J

.field public try:Z


# direct methods
.method public constructor <init>(Lcom/apk/ri0;Lcom/apk/tg0;)V
    .locals 1
    .param p1    # Lcom/apk/ri0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 2
    invoke-direct {p0, p1}, Lcom/apk/ri0$do;-><init>(Lcom/apk/ri0;)V

    iput-object p2, p0, Lcom/apk/ri0$for;->case:Lcom/apk/tg0;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lcom/apk/ri0$for;->new:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/apk/ri0$for;->try:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/ri0$do;->if:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/apk/ri0$for;->try:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/apk/jh0;->catch(Lcom/apk/ll0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 4
    iget-object v0, v0, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 5
    invoke-virtual {v0}, Lcom/apk/bi0;->const()V

    .line 6
    invoke-virtual {p0}, Lcom/apk/ri0$do;->for()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/apk/ri0$do;->if:Z

    return-void
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 10
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_c

    .line 1
    iget-boolean v4, p0, Lcom/apk/ri0$do;->if:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_b

    .line 2
    iget-boolean v4, p0, Lcom/apk/ri0$for;->try:Z

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    return-wide v5

    .line 3
    :cond_1
    iget-wide v7, p0, Lcom/apk/ri0$for;->new:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_2

    cmp-long v4, v7, v5

    if-nez v4, :cond_7

    .line 4
    :cond_2
    iget-wide v7, p0, Lcom/apk/ri0$for;->new:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 6
    iget-object v4, v4, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    .line 7
    invoke-interface {v4}, Lcom/apk/tk0;->super()Ljava/lang/String;

    .line 8
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 9
    iget-object v4, v4, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    .line 10
    invoke-interface {v4}, Lcom/apk/tk0;->return()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/apk/ri0$for;->new:J

    .line 11
    iget-object v4, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 12
    iget-object v4, v4, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    .line 13
    invoke-interface {v4}, Lcom/apk/tk0;->super()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/apk/ie0;->throws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-wide v7, p0, Lcom/apk/ri0$for;->new:J

    cmp-long v9, v7, v2

    if-ltz v9, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    const-string v0, ";"

    const/4 v7, 0x2

    invoke-static {v4, v0, v1, v7}, Lcom/apk/ie0;->static(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    .line 15
    :cond_5
    iget-wide v7, p0, Lcom/apk/ri0$for;->new:J

    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 16
    iput-boolean v1, p0, Lcom/apk/ri0$for;->try:Z

    .line 17
    iget-object v0, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 18
    iget-object v1, v0, Lcom/apk/ri0;->if:Lcom/apk/qi0;

    .line 19
    invoke-virtual {v1}, Lcom/apk/qi0;->do()Lcom/apk/sg0;

    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/apk/ri0;->for:Lcom/apk/sg0;

    .line 21
    iget-object v0, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 22
    iget-object v0, v0, Lcom/apk/ri0;->new:Lcom/apk/xg0;

    .line 23
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 24
    iget-object v0, v0, Lcom/apk/xg0;->break:Lcom/apk/kg0;

    .line 25
    iget-object v1, p0, Lcom/apk/ri0$for;->case:Lcom/apk/tg0;

    iget-object v2, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 26
    iget-object v2, v2, Lcom/apk/ri0;->for:Lcom/apk/sg0;

    .line 27
    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/apk/ki0;->case(Lcom/apk/kg0;Lcom/apk/tg0;Lcom/apk/sg0;)V

    .line 28
    invoke-virtual {p0}, Lcom/apk/ri0$do;->for()V

    .line 29
    :cond_6
    iget-boolean v0, p0, Lcom/apk/ri0$for;->try:Z

    if-nez v0, :cond_7

    return-wide v5

    .line 30
    :cond_7
    iget-wide v0, p0, Lcom/apk/ri0$for;->new:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/apk/ri0$do;->import(Lcom/apk/rk0;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_8

    .line 31
    iget-wide v0, p0, Lcom/apk/ri0$for;->new:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/apk/ri0$for;->new:J

    return-wide p1

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/apk/ri0$for;->else:Lcom/apk/ri0;

    .line 33
    iget-object p1, p1, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 34
    invoke-virtual {p1}, Lcom/apk/bi0;->const()V

    .line 35
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/apk/ri0$do;->for()V

    .line 37
    throw p1

    .line 38
    :cond_9
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v0, p0, Lcom/apk/ri0$for;->new:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p1, "byteCount < 0: "

    .line 44
    invoke-static {p1, p2, p3}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
