.class public final Lcom/apk/hp0$new;
.super Lcom/apk/hp0;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field public final do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/hp0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/apk/sb0;->transient(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/hp0$new;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/apk/jo0;->case()Lcom/apk/do0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    iget v0, p1, Lcom/apk/do0;->do:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p1, Lcom/apk/do0;->do:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p1, Lcom/apk/do0;->if:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/apk/do0;->final(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Lcom/apk/co0;

    iget-object v3, p1, Lcom/apk/do0;->if:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/apk/do0;->for:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p1}, Lcom/apk/co0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/apk/do0;)V

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apk/co0;

    .line 9
    iget-object p2, p2, Lcom/apk/co0;->do:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/apk/hp0$new;->do:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/apk/hp0$new;->do:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
