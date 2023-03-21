.class public final enum Lcom/apk/so0$else;
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
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    const-string v2, "template"

    const-string v3, "html"

    const-string v4, "select"

    const-string v5, "optgroup"

    const-string v6, "option"

    const/4 v7, 0x1

    if-eq v0, v7, :cond_e

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v0, v8, :cond_4

    if-eq v0, v9, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p2, v3}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 4
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    check-cast p1, Lcom/apk/yo0$for;

    .line 6
    iget-object v0, p1, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/apk/so0;->default:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 10
    :cond_2
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto/16 :goto_1

    .line 11
    :cond_3
    check-cast p1, Lcom/apk/yo0$new;

    .line 12
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto/16 :goto_1

    .line 13
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 14
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const/4 v3, -0x1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x3

    :cond_5
    :goto_0
    if-eqz v3, :cond_b

    if-eq v3, v7, :cond_9

    if-eq v3, v8, :cond_7

    if-eq v3, v9, :cond_6

    .line 16
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 17
    :cond_6
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 18
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 20
    :cond_7
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->static(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 21
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 22
    :cond_8
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 23
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    goto/16 :goto_1

    .line 24
    :cond_9
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    goto/16 :goto_1

    .line 26
    :cond_a
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    goto/16 :goto_1

    .line 27
    :cond_b
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apk/ro0;->goto(Lcom/apk/jo0;)Lcom/apk/jo0;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apk/ro0;->goto(Lcom/apk/jo0;)Lcom/apk/jo0;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 29
    iget-object p1, p1, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 31
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 32
    :cond_c
    invoke-virtual {p2, v5}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 33
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    goto :goto_1

    .line 34
    :cond_d
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    goto :goto_1

    .line 35
    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 36
    iget-object v8, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 37
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 38
    sget-object p1, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 39
    iput-object v0, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 40
    invoke-virtual {p1, v0, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 41
    :cond_f
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 42
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 43
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 44
    :cond_10
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_1

    .line 45
    :cond_11
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 46
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 47
    invoke-virtual {p2, v6}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 48
    :cond_12
    invoke-virtual {p2, v5}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 49
    invoke-virtual {p2, v5}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 50
    :cond_13
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    :cond_14
    :goto_1
    return v7

    .line 51
    :cond_15
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 52
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 53
    invoke-virtual {p2, v4}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 54
    :cond_16
    sget-object v3, Lcom/apk/so0$default;->interface:[Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 55
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 56
    invoke-virtual {p2, v4}, Lcom/apk/ro0;->static(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    return v1

    .line 57
    :cond_17
    invoke-virtual {p2, v4}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    .line 58
    iput-object v0, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 59
    iget-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {p1, v0, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_18
    const-string v0, "script"

    .line 60
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2

    .line 61
    :cond_19
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 62
    :cond_1a
    :goto_2
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 63
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 65
    :cond_1b
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch
.end method
