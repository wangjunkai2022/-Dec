.class public final enum Lcom/apk/so0$native;
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
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    return v1

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const-string v3, "template"

    const-string v4, "head"

    if-eq v0, v1, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$native;->new(Lcom/apk/yo0;Lcom/apk/cp0;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    check-cast p1, Lcom/apk/yo0$new;

    .line 7
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 9
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 12
    sget-object p1, Lcom/apk/so0;->case:Lcom/apk/so0;

    .line 13
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto/16 :goto_0

    .line 14
    :cond_3
    sget-object v4, Lcom/apk/so0$default;->for:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$native;->new(Lcom/apk/yo0;Lcom/apk/cp0;)Z

    move-result p1

    return p1

    .line 16
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->native(Ljava/lang/String;)Lcom/apk/jo0;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_6

    .line 18
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-virtual {p2, v1}, Lcom/apk/ro0;->while(Z)V

    .line 20
    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 22
    iget-object p1, p1, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 24
    :cond_7
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 25
    invoke-virtual {p2}, Lcom/apk/ro0;->break()V

    .line 26
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 27
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 29
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 30
    iget-object v5, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v6, "html"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 32
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 33
    :cond_a
    sget-object v6, Lcom/apk/so0$default;->do:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 34
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->default(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    move-result-object p1

    const-string v0, "base"

    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/apk/no0;->while(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 36
    iget-boolean v2, p2, Lcom/apk/ro0;->final:Z

    if-eqz v2, :cond_b

    goto/16 :goto_0

    .line 37
    :cond_b
    invoke-virtual {p1, v0}, Lcom/apk/no0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 39
    iput-object p1, p2, Lcom/apk/cp0;->case:Ljava/lang/String;

    .line 40
    iput-boolean v1, p2, Lcom/apk/ro0;->final:Z

    .line 41
    iget-object p2, p2, Lcom/apk/cp0;->new:Lcom/apk/ho0;

    if-eqz p2, :cond_c

    .line 42
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p2}, Lcom/apk/jo0;->case()Lcom/apk/do0;

    move-result-object p2

    sget-object v0, Lcom/apk/jo0;->this:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/apk/do0;->super(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/do0;

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x0

    .line 44
    throw p1

    :cond_d
    const-string v6, "meta"

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 46
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->default(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto/16 :goto_0

    :cond_e
    const-string v6, "title"

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 48
    iget-object p1, p2, Lcom/apk/cp0;->for:Lcom/apk/ap0;

    sget-object v2, Lcom/apk/bp0;->for:Lcom/apk/bp0;

    .line 49
    iput-object v2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    .line 50
    iget-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    iput-object p1, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 51
    sget-object p1, Lcom/apk/so0;->goto:Lcom/apk/so0;

    .line 52
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 53
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_0

    .line 54
    :cond_f
    sget-object v6, Lcom/apk/so0$default;->if:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 55
    invoke-static {v0, p2}, Lcom/apk/so0;->if(Lcom/apk/yo0$goto;Lcom/apk/ro0;)V

    goto :goto_0

    :cond_10
    const-string v6, "noscript"

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 57
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 58
    sget-object p1, Lcom/apk/so0;->try:Lcom/apk/so0;

    .line 59
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    :cond_11
    const-string v6, "script"

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 61
    iget-object p1, p2, Lcom/apk/cp0;->for:Lcom/apk/ap0;

    sget-object v2, Lcom/apk/bp0;->case:Lcom/apk/bp0;

    .line 62
    iput-object v2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    .line 63
    iget-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    iput-object p1, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 64
    sget-object p1, Lcom/apk/so0;->goto:Lcom/apk/so0;

    .line 65
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 66
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_0

    .line 67
    :cond_12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 68
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 69
    :cond_13
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 70
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 71
    invoke-virtual {p2}, Lcom/apk/ro0;->package()V

    .line 72
    iput-boolean v2, p2, Lcom/apk/ro0;->static:Z

    .line 73
    sget-object p1, Lcom/apk/so0;->import:Lcom/apk/so0;

    .line 74
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 75
    iget-object p2, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_0
    return v1

    .line 76
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$native;->new(Lcom/apk/yo0;Lcom/apk/cp0;)Z

    move-result p1

    return p1

    .line 77
    :cond_16
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2
.end method

.method public final new(Lcom/apk/yo0;Lcom/apk/cp0;)Z
    .locals 1

    const-string v0, "head"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 2
    check-cast p2, Lcom/apk/ro0;

    .line 3
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 4
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
