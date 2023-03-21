.class public abstract Lcom/apk/cp0;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field public break:Lcom/apk/yo0$goto;

.field public case:Ljava/lang/String;

.field public catch:Lcom/apk/yo0$else;

.field public do:Lcom/apk/wo0;

.field public else:Lcom/apk/yo0;

.field public for:Lcom/apk/ap0;

.field public goto:Lcom/apk/vo0;

.field public if:Lcom/apk/qo0;

.field public new:Lcom/apk/ho0;

.field public this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apk/xo0;",
            ">;"
        }
    .end annotation
.end field

.field public try:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apk/jo0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/yo0$goto;

    invoke-direct {v0}, Lcom/apk/yo0$goto;-><init>()V

    iput-object v0, p0, Lcom/apk/cp0;->break:Lcom/apk/yo0$goto;

    .line 3
    new-instance v0, Lcom/apk/yo0$else;

    invoke-direct {v0}, Lcom/apk/yo0$else;-><init>()V

    iput-object v0, p0, Lcom/apk/cp0;->catch:Lcom/apk/yo0$else;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cp0;->break:Lcom/apk/yo0$goto;

    .line 2
    iget-object v1, p0, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    if-ne v1, v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/yo0$goto;

    invoke-direct {v0}, Lcom/apk/yo0$goto;-><init>()V

    .line 4
    iput-object p1, v0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 7
    move-object p1, p0

    check-cast p1, Lcom/apk/ro0;

    .line 8
    iput-object v0, p1, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 9
    iget-object v1, p1, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v1, v0, p1}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/apk/yo0$goto;->return()Lcom/apk/yo0$this;

    .line 11
    iput-object p1, v0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 14
    move-object p1, p0

    check-cast p1, Lcom/apk/ro0;

    .line 15
    iput-object v0, p1, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 16
    iget-object v1, p1, Lcom/apk/ro0;->class:Lcom/apk/so0;

    invoke-virtual {v1, v0, p1}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1
.end method

.method public do()Lcom/apk/jo0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cp0;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/cp0;->try:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/jo0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/cp0;->new:Lcom/apk/ho0;

    :goto_0
    return-object v0
.end method

.method public else(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/cp0;->this:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/xo0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/apk/xo0;->do(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object v0

    .line 3
    iget-object p2, p0, Lcom/apk/cp0;->this:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public for(Ljava/io/Reader;Ljava/lang/String;Lcom/apk/wo0;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    const-string v0, "String input must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/sb0;->synchronized(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    .line 2
    invoke-static {p2, v0}, Lcom/apk/sb0;->synchronized(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/apk/ho0;

    invoke-direct {v0, p2}, Lcom/apk/ho0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apk/cp0;->new:Lcom/apk/ho0;

    .line 5
    iput-object p3, v0, Lcom/apk/ho0;->catch:Lcom/apk/wo0;

    .line 6
    iput-object p3, p0, Lcom/apk/cp0;->do:Lcom/apk/wo0;

    .line 7
    iget-object v0, p3, Lcom/apk/wo0;->if:Lcom/apk/vo0;

    .line 8
    iput-object v0, p0, Lcom/apk/cp0;->goto:Lcom/apk/vo0;

    .line 9
    new-instance v0, Lcom/apk/qo0;

    const v1, 0x8000

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/apk/qo0;-><init>(Ljava/io/Reader;I)V

    .line 11
    iput-object v0, p0, Lcom/apk/cp0;->if:Lcom/apk/qo0;

    .line 12
    iget-object p1, p3, Lcom/apk/wo0;->do:Lcom/apk/uo0;

    .line 13
    iget p1, p1, Lcom/apk/uo0;->do:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 14
    iget-object v2, v0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0x199

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Lcom/apk/qo0;->package()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 17
    iput-object v1, v0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    .line 18
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 19
    new-instance p1, Lcom/apk/ap0;

    iget-object v0, p0, Lcom/apk/cp0;->if:Lcom/apk/qo0;

    .line 20
    iget-object p3, p3, Lcom/apk/wo0;->do:Lcom/apk/uo0;

    .line 21
    invoke-direct {p1, v0, p3}, Lcom/apk/ap0;-><init>(Lcom/apk/qo0;Lcom/apk/uo0;)V

    iput-object p1, p0, Lcom/apk/cp0;->for:Lcom/apk/ap0;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/apk/cp0;->try:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/cp0;->this:Ljava/util/Map;

    .line 24
    iput-object p2, p0, Lcom/apk/cp0;->case:Ljava/lang/String;

    return-void
.end method

.method public if(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cp0;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/cp0;->do()Lcom/apk/jo0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 4
    iget-object v0, v0, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract new(Lcom/apk/yo0;)Z
.end method

.method public try(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    iget-object v1, p0, Lcom/apk/cp0;->catch:Lcom/apk/yo0$else;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/apk/yo0$else;

    invoke-direct {v0}, Lcom/apk/yo0$else;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/apk/vo0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/cp0;->new(Lcom/apk/yo0;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/apk/yo0$this;->return()Lcom/apk/yo0$this;

    .line 7
    iput-object p1, v1, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/apk/vo0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Lcom/apk/cp0;->new(Lcom/apk/yo0;)Z

    move-result p1

    return p1
.end method
