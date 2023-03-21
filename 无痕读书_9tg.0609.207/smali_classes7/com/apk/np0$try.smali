.class public Lcom/apk/np0$try;
.super Lcom/apk/np0;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/np0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/hp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/np0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p2, p2, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p2, Lcom/apk/jo0;

    :goto_0
    if-eqz p2, :cond_3

    .line 2
    iget-object v1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    invoke-virtual {v1, p1, p2}, Lcom/apk/hp0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p2, p2, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p2, Lcom/apk/jo0;

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
