.class public final enum Lcom/apk/so0$new;
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
    iget-object v0, p1, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$new;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 4
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/apk/so0$default;->transient:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/apk/ro0;->class()V

    .line 9
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 10
    sget-object p1, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 11
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    :cond_2
    const-string v1, "table"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$new;->try(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 14
    :cond_3
    sget-object v1, Lcom/apk/so0$default;->continue:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$new;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 17
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 18
    iget-object v2, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v3, "tr"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {p2}, Lcom/apk/ro0;->class()V

    .line 21
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 22
    sget-object p1, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 23
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    :goto_0
    return v1

    .line 24
    :cond_6
    sget-object v1, Lcom/apk/so0$default;->throws:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 26
    invoke-virtual {p2, v3}, Lcom/apk/cp0;->case(Ljava/lang/String;)Z

    .line 27
    iput-object v0, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 28
    iget-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {p1, v0, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 29
    :cond_7
    sget-object v0, Lcom/apk/so0$default;->abstract:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$new;->try(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 31
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$new;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method

.method public final new(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 2
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method

.method public final try(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 1

    const-string v0, "tbody"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lcom/apk/ro0;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/apk/ro0;->class()V

    .line 4
    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 6
    iget-object v0, v0, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 8
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 9
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
