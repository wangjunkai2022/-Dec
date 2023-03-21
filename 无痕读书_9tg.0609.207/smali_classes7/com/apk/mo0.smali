.class public abstract Lcom/apk/mo0;
.super Lcom/apk/no0;
.source "LeafNode.java"


# instance fields
.field public new:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/no0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/no0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    instance-of v0, v0, Lcom/apk/do0;

    if-nez v0, :cond_0

    const-string v0, "#doctype"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/apk/mo0;->strictfp()V

    .line 5
    invoke-static {p0}, Lcom/apk/sb0;->d(Lcom/apk/no0;)Lcom/apk/wo0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/apk/wo0;->if:Lcom/apk/vo0;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-boolean v0, v0, Lcom/apk/vo0;->if:Z

    if-nez v0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/apk/do0;->const(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 12
    iget-object v2, v0, Lcom/apk/do0;->for:[Ljava/lang/String;

    aput-object p2, v2, v1

    .line 13
    iget-object p2, v0, Lcom/apk/do0;->if:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 14
    iget-object p2, v0, Lcom/apk/do0;->if:[Ljava/lang/String;

    aput-object p1, p2, v1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/apk/do0;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/do0;

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public final case()Lcom/apk/do0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/mo0;->strictfp()V

    .line 2
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    check-cast v0, Lcom/apk/do0;

    return-object v0
.end method

.method public const(Lcom/apk/no0;)Lcom/apk/no0;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/no0;->const(Lcom/apk/no0;)Lcom/apk/no0;

    move-result-object p1

    check-cast p1, Lcom/apk/mo0;

    .line 2
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    instance-of v1, v0, Lcom/apk/do0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/apk/do0;

    invoke-virtual {v0}, Lcom/apk/do0;->case()Lcom/apk/do0;

    move-result-object v0

    iput-object v0, p1, Lcom/apk/mo0;->new:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public continue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->return()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/mo0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public do(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/mo0;->strictfp()V

    .line 2
    invoke-super {p0, p1}, Lcom/apk/no0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/no0;->else()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final()Lcom/apk/no0;
    .locals 0

    return-object p0
.end method

.method public final import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    instance-of v0, v0, Lcom/apk/do0;

    return v0
.end method

.method public new(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    instance-of v0, v0, Lcom/apk/do0;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/no0;->return()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/apk/no0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final strictfp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    instance-of v1, v0, Lcom/apk/do0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/apk/do0;

    invoke-direct {v1}, Lcom/apk/do0;-><init>()V

    .line 3
    iput-object v1, p0, Lcom/apk/mo0;->new:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/no0;->return()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/apk/do0;->super(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/do0;

    :cond_0
    return-void
.end method

.method public super()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/no0;->for:Ljava/util/List;

    return-object v0
.end method

.method public this()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public while(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/mo0;->strictfp()V

    .line 2
    invoke-super {p0, p1}, Lcom/apk/no0;->while(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
