.class public final enum Lcom/apk/so0$throws;
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
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/apk/yo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 3
    iget-object v0, v0, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/apk/so0$default;->private:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/apk/ro0;->public:Ljava/util/List;

    .line 6
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    iput-object v0, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 7
    sget-object v0, Lcom/apk/so0;->break:Lcom/apk/so0;

    .line 8
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 9
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 12
    check-cast p1, Lcom/apk/yo0$new;

    .line 13
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    return v1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const-string v3, "template"

    const-string v4, "table"

    if-eqz v0, :cond_13

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 18
    iget-object v5, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v6, "caption"

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    invoke-virtual {p2}, Lcom/apk/ro0;->const()V

    .line 21
    invoke-virtual {p2}, Lcom/apk/ro0;->package()V

    .line 22
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 23
    sget-object p1, Lcom/apk/so0;->catch:Lcom/apk/so0;

    .line 24
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto/16 :goto_2

    :cond_3
    const-string v6, "colgroup"

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 26
    invoke-virtual {p2}, Lcom/apk/ro0;->const()V

    .line 27
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 28
    sget-object p1, Lcom/apk/so0;->class:Lcom/apk/so0;

    .line 29
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto/16 :goto_2

    :cond_4
    const-string v7, "col"

    .line 30
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 31
    invoke-virtual {p2}, Lcom/apk/ro0;->const()V

    .line 32
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->case(Ljava/lang/String;)Z

    .line 33
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 34
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 35
    :cond_5
    sget-object v6, Lcom/apk/so0$default;->return:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 36
    invoke-virtual {p2}, Lcom/apk/ro0;->const()V

    .line 37
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 38
    sget-object p1, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 39
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto/16 :goto_2

    .line 40
    :cond_6
    sget-object v6, Lcom/apk/so0$default;->static:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 41
    invoke-virtual {p2}, Lcom/apk/ro0;->const()V

    const-string v0, "tbody"

    .line 42
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->case(Ljava/lang/String;)Z

    .line 43
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 44
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 45
    :cond_7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 46
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 47
    invoke-virtual {p2, v5}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 48
    :cond_8
    invoke-virtual {p2, v5}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 49
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    .line 50
    iget-object v2, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 51
    sget-object v3, Lcom/apk/so0;->this:Lcom/apk/so0;

    if-ne v2, v3, :cond_9

    .line 52
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    return v1

    .line 53
    :cond_9
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 54
    invoke-virtual {v2, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 55
    :cond_a
    sget-object v4, Lcom/apk/so0$default;->switch:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 56
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 57
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_b
    const-string v4, "input"

    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 60
    invoke-virtual {v0}, Lcom/apk/yo0$this;->while()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/apk/do0;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    .line 61
    :cond_c
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->default(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_2

    .line 62
    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$throws;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    return v1

    :cond_e
    const-string v4, "form"

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 64
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 65
    iget-object p1, p2, Lcom/apk/ro0;->throw:Lcom/apk/lo0;

    if-nez p1, :cond_11

    .line 66
    invoke-virtual {p2, v3}, Lcom/apk/ro0;->native(Ljava/lang/String;)Lcom/apk/jo0;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_10

    goto :goto_3

    .line 67
    :cond_10
    invoke-virtual {p2, v0, v2, v2}, Lcom/apk/ro0;->extends(Lcom/apk/yo0$goto;ZZ)Lcom/apk/lo0;

    :goto_2
    return v1

    :cond_11
    :goto_3
    return v2

    .line 68
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$throws;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    return v1

    .line 69
    :cond_13
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 71
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 73
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 74
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 75
    :cond_14
    invoke-virtual {p2, v4}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 76
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    goto :goto_4

    .line 77
    :cond_15
    sget-object v4, Lcom/apk/so0$default;->package:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 78
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 79
    :cond_16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 80
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 81
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    :goto_4
    return v1

    .line 83
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$throws;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    return v1

    .line 84
    :cond_18
    invoke-virtual {p1}, Lcom/apk/yo0;->new()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "html"

    .line 85
    invoke-virtual {p2, p1}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 86
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    :cond_19
    return v1

    .line 87
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$throws;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    return v1
.end method

.method public new(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p2, Lcom/apk/ro0;->switch:Z

    .line 3
    sget-object v1, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 4
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p2, Lcom/apk/ro0;->switch:Z

    return v0
.end method
