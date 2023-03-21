.class public final Lcom/apk/hp0$finally;
.super Lcom/apk/hp0$super;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "finally"
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

    const-string v0, "nth-last-child"

    return-object v0
.end method

.method public if(Lcom/apk/jo0;Lcom/apk/jo0;)I
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p1, Lcom/apk/jo0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/apk/jo0;->volatile()Lcom/apk/gp0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/apk/jo0;->transient()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
