.class public final Lcom/apk/fp0$if;
.super Lcom/apk/fp0;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/fp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/apk/fp0;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/apk/hp0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/apk/fp0;-><init>()V

    .line 3
    iget v0, p0, Lcom/apk/fp0;->if:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    new-instance v1, Lcom/apk/fp0$do;

    invoke-direct {v1, p1}, Lcom/apk/fp0$do;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/apk/fp0;->if()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/apk/fp0;->if:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/hp0;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/apk/hp0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-static {v0, v1}, Lcom/apk/bo0;->goto(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
