.class public final enum Lcom/apk/so0$this;
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

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "template"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2, v4}, Lcom/apk/ro0;->native(Ljava/lang/String;)Lcom/apk/jo0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 4
    invoke-virtual {p2, v4}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 5
    invoke-virtual {p2}, Lcom/apk/ro0;->break()V

    .line 6
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 7
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    .line 8
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 9
    sget-object v2, Lcom/apk/so0;->import:Lcom/apk/so0;

    if-eq v0, v2, :cond_3

    .line 10
    iget-object v0, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_3

    .line 11
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 12
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_3
    return v1

    .line 13
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 14
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 17
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto/16 :goto_1

    .line 19
    :cond_5
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 20
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 21
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 22
    sget-object v2, Lcom/apk/so0$default;->synchronized:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 23
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 24
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto/16 :goto_1

    .line 26
    :cond_7
    sget-object v1, Lcom/apk/so0$default;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 28
    sget-object v0, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 29
    iget-object v1, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 31
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 32
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_8
    const-string v1, "col"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 36
    sget-object v0, Lcom/apk/so0;->class:Lcom/apk/so0;

    .line 37
    iget-object v1, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/apk/so0;->class:Lcom/apk/so0;

    .line 39
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 40
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_9
    const-string v1, "tr"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 44
    sget-object v0, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 45
    iget-object v1, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 47
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 48
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_a
    const-string v1, "td"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 51
    :cond_b
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 52
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 53
    iget-object v1, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 55
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 56
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 58
    :cond_c
    :goto_0
    invoke-virtual {p2}, Lcom/apk/ro0;->protected()Lcom/apk/so0;

    .line 59
    sget-object v0, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 60
    iget-object v1, p2, Lcom/apk/ro0;->native:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 62
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 63
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 65
    :cond_d
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 66
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    :goto_1
    return v1
.end method
