.class public Lcom/apk/hp0$private;
.super Lcom/apk/hp0$super;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "private"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/hp0$super;-><init>(II)V

    return-void
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-of-type"

    return-object v0
.end method

.method public if(Lcom/apk/jo0;Lcom/apk/jo0;)I
    .locals 4

    .line 1
    iget-object p1, p2, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p1, Lcom/apk/jo0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/apk/jo0;->volatile()Lcom/apk/gp0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/jo0;

    .line 4
    iget-object v2, v1, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    iget-object v3, p2, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 5
    invoke-virtual {v2, v3}, Lcom/apk/xo0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v1, p2, :cond_1

    :cond_3
    return v0
.end method
