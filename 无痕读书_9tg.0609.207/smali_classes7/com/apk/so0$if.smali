.class public final enum Lcom/apk/so0$if;
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
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 3
    iget-object v3, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object p1, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 8
    :cond_0
    invoke-virtual {p2, v1}, Lcom/apk/ro0;->while(Z)V

    .line 9
    invoke-virtual {p2, v2}, Lcom/apk/cp0;->if(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 11
    :cond_1
    invoke-virtual {p2, v2}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 12
    invoke-virtual {p2}, Lcom/apk/ro0;->break()V

    .line 13
    sget-object p1, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 14
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 17
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 18
    sget-object v3, Lcom/apk/so0$default;->finally:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 21
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    const-string v3, "table"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    :cond_4
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 24
    invoke-virtual {p2, v2}, Lcom/apk/cp0;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 26
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 29
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 30
    sget-object v2, Lcom/apk/so0$default;->instanceof:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 32
    :cond_7
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 33
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
