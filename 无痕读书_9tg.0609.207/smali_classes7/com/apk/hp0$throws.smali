.class public final Lcom/apk/hp0$throws;
.super Lcom/apk/hp0;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "throws"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/hp0;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 2

    .line 1
    iget-object p1, p2, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p1, Lcom/apk/jo0;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    instance-of v1, p1, Lcom/apk/ho0;

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/apk/jo0;->transient()I

    move-result p2

    invoke-virtual {p1}, Lcom/apk/jo0;->volatile()Lcom/apk/gp0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":last-child"

    return-object v0
.end method
