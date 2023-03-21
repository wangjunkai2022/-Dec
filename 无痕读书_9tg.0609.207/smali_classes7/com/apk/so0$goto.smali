.class public final enum Lcom/apk/so0$goto;
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
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const-string v1, "select"

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 3
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/apk/so0$default;->protected:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 6
    invoke-virtual {p2, v1}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 7
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    .line 8
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 9
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 12
    iget-object v2, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 13
    sget-object v3, Lcom/apk/so0$default;->protected:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 15
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v0}, Lcom/apk/ro0;->throws(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p2, v1}, Lcom/apk/ro0;->interface(Ljava/lang/String;)Lcom/apk/jo0;

    .line 18
    invoke-virtual {p2}, Lcom/apk/ro0;->b()V

    .line 19
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 20
    iget-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 21
    :cond_2
    sget-object v0, Lcom/apk/so0;->throw:Lcom/apk/so0;

    .line 22
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
