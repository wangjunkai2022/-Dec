.class public final enum Lcom/apk/so0$return;
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
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/apk/yo0$new;

    .line 6
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 11
    iget-object v2, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v3, "html"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 14
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_3
    const-string v3, "body"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 18
    iput-boolean v1, p2, Lcom/apk/ro0;->static:Z

    .line 19
    sget-object p1, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 20
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    :cond_4
    const-string v3, "frameset"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    .line 23
    sget-object p1, Lcom/apk/so0;->public:Lcom/apk/so0;

    .line 24
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    .line 25
    :cond_5
    sget-object v0, Lcom/apk/so0$default;->else:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 27
    iget-object v0, p2, Lcom/apk/ro0;->super:Lcom/apk/jo0;

    .line 28
    iget-object v1, p2, Lcom/apk/cp0;->try:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 30
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 31
    invoke-virtual {v1, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    .line 32
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->a(Lcom/apk/jo0;)Z

    goto :goto_0

    :cond_6
    const-string v0, "head"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 35
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$return;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_0

    .line 36
    :cond_8
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 38
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 39
    sget-object v2, Lcom/apk/so0$default;->new:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$return;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_0

    :cond_9
    const-string v2, "template"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    sget-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 43
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_0

    .line 45
    :cond_a
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 46
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/apk/so0$return;->new(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final new(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 1

    const-string v0, "body"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/cp0;->case(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p2, Lcom/apk/ro0;->static:Z

    .line 3
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 4
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
