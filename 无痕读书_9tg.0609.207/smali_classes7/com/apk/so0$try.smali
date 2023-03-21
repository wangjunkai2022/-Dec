.class public final enum Lcom/apk/so0$try;
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
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const-string v1, "tr"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 3
    iget-object v3, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 4
    sget-object v4, Lcom/apk/so0$default;->throws:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/apk/ro0;->final()V

    .line 6
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 7
    sget-object p1, Lcom/apk/so0;->super:Lcom/apk/so0;

    .line 8
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 9
    invoke-virtual {p2}, Lcom/apk/ro0;->package()V

    goto/16 :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/apk/so0$default;->strictfp:[Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p2, v1}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 13
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result v2

    :cond_1
    return v2

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$try;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 17
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 20
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 21
    :cond_4
    invoke-virtual {p2}, Lcom/apk/ro0;->final()V

    .line 22
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 23
    sget-object p1, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 24
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    :cond_5
    const-string v3, "table"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {p2, v1}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 28
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result v2

    :cond_6
    return v2

    .line 29
    :cond_7
    sget-object v3, Lcom/apk/so0$default;->return:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v1}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 31
    :cond_8
    invoke-virtual {p2}, Lcom/apk/ro0;->final()V

    .line 32
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 33
    sget-object p1, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 34
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_9
    :goto_1
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 36
    :cond_a
    sget-object v1, Lcom/apk/so0$default;->volatile:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 38
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$try;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 39
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$try;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

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
