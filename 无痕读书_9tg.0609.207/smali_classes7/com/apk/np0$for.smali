.class public Lcom/apk/np0$for;
.super Lcom/apk/np0;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/np0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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
    invoke-virtual {p2}, Lcom/apk/jo0;->b()Lcom/apk/jo0;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    invoke-virtual {v1, p1, p2}, Lcom/apk/hp0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
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

    const-string v1, "%s + "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
