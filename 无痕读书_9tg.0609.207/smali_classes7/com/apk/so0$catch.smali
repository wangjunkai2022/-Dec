.class public final enum Lcom/apk/so0$catch;
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
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/apk/yo0$new;

    .line 4
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    check-cast p1, Lcom/apk/yo0$try;

    .line 7
    new-instance v0, Lcom/apk/io0;

    iget-object v2, p2, Lcom/apk/cp0;->goto:Lcom/apk/vo0;

    .line 8
    iget-object v3, p1, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-boolean v2, v2, Lcom/apk/vo0;->do:Z

    if-nez v2, :cond_2

    .line 11
    invoke-static {v3}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_2
    iget-object v2, p1, Lcom/apk/yo0$try;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v4, p1, Lcom/apk/yo0$try;->try:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-direct {v0, v3, v2, v4}, Lcom/apk/io0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p1, Lcom/apk/yo0$try;->for:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "pubSysKey"

    .line 16
    invoke-virtual {v0, v3, v2}, Lcom/apk/mo0;->abstract(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/no0;

    .line 17
    :cond_3
    iget-object v2, p2, Lcom/apk/cp0;->new:Lcom/apk/ho0;

    .line 18
    invoke-virtual {v2, v0}, Lcom/apk/jo0;->abstract(Lcom/apk/no0;)Lcom/apk/jo0;

    .line 19
    iget-boolean p1, p1, Lcom/apk/yo0$try;->case:Z

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p2, Lcom/apk/cp0;->new:Lcom/apk/ho0;

    .line 21
    sget-object v0, Lcom/apk/ho0$if;->if:Lcom/apk/ho0$if;

    .line 22
    iput-object v0, p1, Lcom/apk/ho0;->class:Lcom/apk/ho0$if;

    .line 23
    :cond_4
    sget-object p1, Lcom/apk/so0;->if:Lcom/apk/so0;

    .line 24
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    :goto_0
    return v1

    :cond_5
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 26
    :cond_6
    sget-object v0, Lcom/apk/so0;->if:Lcom/apk/so0;

    .line 27
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 28
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
