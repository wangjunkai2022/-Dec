.class public final enum Lcom/apk/so0$break;
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
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/apk/so0;->do(Lcom/apk/yo0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/apk/yo0$new;

    .line 6
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$new;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->for()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/apk/yo0;->case()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_3

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$goto;

    .line 11
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 14
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/apk/yo0$else;

    .line 18
    iget-object v0, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-boolean p1, p2, Lcom/apk/ro0;->throws:Z

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v1

    .line 22
    :cond_4
    sget-object p1, Lcom/apk/so0;->static:Lcom/apk/so0;

    .line 23
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/apk/yo0;->new()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 25
    :cond_6
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 26
    sget-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 27
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 28
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
