.class public final Lcom/apk/hp0$volatile;
.super Lcom/apk/hp0;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "volatile"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/hp0;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 8

    .line 1
    instance-of p1, p2, Lcom/apk/oo0;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p2, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/no0;

    .line 4
    instance-of v4, v3, Lcom/apk/po0;

    if-eqz v4, :cond_1

    .line 5
    check-cast v3, Lcom/apk/po0;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/po0;

    .line 8
    new-instance v4, Lcom/apk/oo0;

    .line 9
    iget-object v5, p2, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 10
    iget-object v5, v5, Lcom/apk/xo0;->do:Ljava/lang/String;

    .line 11
    sget-object v6, Lcom/apk/vo0;->new:Lcom/apk/vo0;

    invoke-static {v5, v6}, Lcom/apk/xo0;->do(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object v5

    .line 12
    invoke-virtual {p2}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/apk/jo0;->case()Lcom/apk/do0;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/apk/oo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    if-eqz v2, :cond_6

    .line 13
    invoke-static {v4}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 14
    iget-object v5, v2, Lcom/apk/no0;->do:Lcom/apk/no0;

    invoke-static {v5}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 15
    iget-object v5, v2, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v5, :cond_5

    if-ne v5, v5, :cond_3

    const/4 v3, 0x1

    .line 16
    :cond_3
    invoke-static {v3}, Lcom/apk/sb0;->package(Z)V

    .line 17
    invoke-static {v4}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v4, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3, v4}, Lcom/apk/no0;->package(Lcom/apk/no0;)V

    .line 20
    :cond_4
    iget v3, v2, Lcom/apk/no0;->if:I

    .line 21
    invoke-virtual {v5}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v5, v4, Lcom/apk/no0;->do:Lcom/apk/no0;

    .line 23
    iput v3, v4, Lcom/apk/no0;->if:I

    .line 24
    iput-object p1, v2, Lcom/apk/no0;->do:Lcom/apk/no0;

    .line 25
    invoke-virtual {v4, v2}, Lcom/apk/jo0;->abstract(Lcom/apk/no0;)Lcom/apk/jo0;

    goto :goto_1

    .line 26
    :cond_5
    throw p1

    .line 27
    :cond_6
    throw p1

    :cond_7
    return v3

    .line 28
    :cond_8
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":matchText"

    return-object v0
.end method
