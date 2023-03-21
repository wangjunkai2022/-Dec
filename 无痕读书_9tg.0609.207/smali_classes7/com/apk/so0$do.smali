.class public final enum Lcom/apk/so0$do;
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
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->try:Lcom/apk/yo0$break;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    iget-object v0, p1, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/apk/so0;->default:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    return v3

    .line 7
    :cond_0
    iget-object p2, p2, Lcom/apk/ro0;->public:Ljava/util/List;

    .line 8
    iget-object p1, p1, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 10
    :cond_1
    iget-object v0, p2, Lcom/apk/ro0;->public:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 12
    iget-object v0, p2, Lcom/apk/ro0;->public:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/apk/bo0;->try(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 16
    invoke-virtual {p2}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object v4

    .line 17
    iget-object v4, v4, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 18
    iget-object v4, v4, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 19
    sget-object v5, Lcom/apk/so0$default;->private:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/apk/bo0;->new(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    iput-boolean v2, p2, Lcom/apk/ro0;->switch:Z

    .line 21
    new-instance v4, Lcom/apk/yo0$for;

    invoke-direct {v4}, Lcom/apk/yo0$for;-><init>()V

    .line 22
    iput-object v1, v4, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 24
    iput-object v4, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 25
    invoke-virtual {v1, v4, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    .line 26
    iput-boolean v3, p2, Lcom/apk/ro0;->switch:Z

    goto :goto_0

    .line 27
    :cond_2
    new-instance v4, Lcom/apk/yo0$for;

    invoke-direct {v4}, Lcom/apk/yo0$for;-><init>()V

    .line 28
    iput-object v1, v4, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 29
    sget-object v1, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 30
    iput-object v4, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 31
    invoke-virtual {v1, v4, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    goto :goto_0

    .line 32
    :cond_3
    new-instance v4, Lcom/apk/yo0$for;

    invoke-direct {v4}, Lcom/apk/yo0$for;-><init>()V

    .line 33
    iput-object v1, v4, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v4}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto :goto_0

    .line 35
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/apk/ro0;->public:Ljava/util/List;

    .line 36
    :cond_5
    iget-object v0, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 37
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 38
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method
