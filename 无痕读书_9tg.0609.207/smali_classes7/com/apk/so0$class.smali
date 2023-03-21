.class public final enum Lcom/apk/so0$class;
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
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/apk/yo0$new;

    .line 6
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const-string v3, "html"

    const-string v4, "frameset"

    if-eqz v0, :cond_8

    .line 10
    check-cast p1, Lcom/apk/yo0$goto;

    .line 11
    iget-object v0, p1, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const/4 v5, -0x1

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    :cond_3
    :goto_0
    if-eqz v5, :cond_7

    if-eq v5, v1, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v8, :cond_4

    .line 13
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 14
    :cond_4
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 15
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 17
    :cond_5
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->default(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    goto :goto_1

    .line 19
    :cond_7
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 20
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 24
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p2, v3}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    .line 28
    :cond_9
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 29
    iget-boolean p1, p2, Lcom/apk/ro0;->throws:Z

    if-nez p1, :cond_b

    .line 30
    invoke-virtual {p2, v4}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 31
    sget-object p1, Lcom/apk/so0;->return:Lcom/apk/so0;

    .line 32
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_1

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/apk/yo0;->new()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 34
    invoke-virtual {p2, v3}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 35
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    :cond_b
    :goto_1
    return v1

    .line 36
    :cond_c
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x5d2a96d -> :sswitch_1
        0x47177da7 -> :sswitch_0
    .end sparse-switch
.end method
