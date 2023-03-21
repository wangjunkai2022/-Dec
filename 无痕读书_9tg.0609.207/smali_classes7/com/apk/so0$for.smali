.class public final enum Lcom/apk/so0$for;
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
    .locals 10

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

    if-eqz v0, :cond_13

    const-string v2, "template"

    const-string v3, "html"

    const v4, -0x4ec53386

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v6, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$for;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p2, v3}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$for;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 8
    :cond_3
    check-cast p1, Lcom/apk/yo0$new;

    .line 9
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto/16 :goto_2

    .line 10
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 11
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v4, :cond_6

    const v2, -0x25eb9b01

    if-eq v3, v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "colgroup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    :cond_7
    :goto_0
    if-eqz v5, :cond_9

    if-eq v5, v1, :cond_8

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$for;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 14
    :cond_8
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 15
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_2

    .line 17
    :cond_9
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 18
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v7

    .line 19
    :cond_a
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 20
    sget-object p1, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 21
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_2

    .line 22
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 23
    iget-object v8, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eq v9, v4, :cond_e

    const v2, 0x18180

    if-eq v9, v2, :cond_d

    const v2, 0x3107ab

    if-eq v9, v2, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v5, 0x0

    goto :goto_1

    :cond_d
    const-string v2, "col"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v5, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v5, 0x2

    :cond_f
    :goto_1
    if-eqz v5, :cond_12

    if-eq v5, v1, :cond_11

    if-eq v5, v6, :cond_10

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$for;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 26
    :cond_10
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 27
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_2

    .line 29
    :cond_11
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->default(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_2

    .line 30
    :cond_12
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 31
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 33
    :cond_13
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    :goto_2
    return v1
.end method

.method public final new(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 1

    const-string v0, "colgroup"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 4
    sget-object v0, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 5
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 6
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    const/4 p1, 0x1

    return p1
.end method
