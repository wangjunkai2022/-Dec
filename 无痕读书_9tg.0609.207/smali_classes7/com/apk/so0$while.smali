.class public final enum Lcom/apk/so0$while;
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
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/apk/yo0$new;

    .line 5
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/apk/yo0$for;

    .line 8
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 11
    iget-object v2, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v3, "html"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 14
    sget-object p1, Lcom/apk/so0;->for:Lcom/apk/so0;

    .line 15
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 18
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 19
    sget-object v2, Lcom/apk/so0$default;->try:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$while;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 23
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$while;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method

.method public final new(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance v1, Lcom/apk/jo0;

    iget-object v2, p2, Lcom/apk/cp0;->goto:Lcom/apk/vo0;

    const-string v3, "html"

    invoke-virtual {p2, v3, v2}, Lcom/apk/cp0;->else(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2, v0, v0}, Lcom/apk/jo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    .line 3
    invoke-virtual {p2, v1}, Lcom/apk/ro0;->insert(Lcom/apk/jo0;)V

    .line 4
    sget-object v0, Lcom/apk/so0;->for:Lcom/apk/so0;

    .line 5
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 6
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    throw v0
.end method
