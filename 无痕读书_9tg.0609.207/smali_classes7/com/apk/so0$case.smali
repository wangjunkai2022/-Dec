.class public final enum Lcom/apk/so0$case;
.super Lcom/apk/so0;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/so0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/so0;-><init>(Ljava/lang/String;ILcom/apk/so0$catch;)V

    return-void
.end method


# virtual methods
.method public for(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    const-string v1, "th"

    const-string v2, "td"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 3
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 4
    sget-object v4, Lcom/apk/so0$default;->throws:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 7
    sget-object p1, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 8
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    return v3

    .line 9
    :cond_0
    invoke-virtual {p2, v3}, Lcom/apk/ro0;->while(Z)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 12
    :cond_1
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 13
    invoke-virtual {p2}, Lcom/apk/ro0;->break()V

    .line 14
    sget-object p1, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 15
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_2
    sget-object v4, Lcom/apk/so0$default;->default:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 18
    :cond_3
    sget-object v4, Lcom/apk/so0$default;->extends:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 21
    :cond_4
    invoke-virtual {p2, v2}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p2, v2}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p2, v1}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 24
    :goto_0
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 25
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 26
    :cond_6
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 27
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 31
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 32
    sget-object v4, Lcom/apk/so0$default;->finally:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {p2, v2}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, v1}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 35
    :cond_8
    invoke-virtual {p2, v2}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p2, v2}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual {p2, v1}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 38
    :goto_1
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 39
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 40
    :cond_a
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 41
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
