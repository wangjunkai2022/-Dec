.class public Lcom/apk/jo0$do;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lcom/apk/kp0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/jo0;->e()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/apk/jo0;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/no0;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/apk/po0;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/apk/po0;

    .line 3
    iget-object p2, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p2, p1}, Lcom/apk/jo0;->continue(Ljava/lang/StringBuilder;Lcom/apk/po0;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/apk/jo0;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Lcom/apk/jo0;

    .line 7
    iget-object p2, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 8
    iget-object p1, p1, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 9
    iget-boolean p2, p1, Lcom/apk/xo0;->for:Z

    if-nez p2, :cond_1

    .line 10
    iget-object p1, p1, Lcom/apk/xo0;->if:Ljava/lang/String;

    const-string p2, "br"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p1}, Lcom/apk/po0;->interface(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public if(Lcom/apk/no0;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/apk/jo0;

    if-eqz p2, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/apk/jo0;

    .line 3
    iget-object p2, p2, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 4
    iget-boolean p2, p2, Lcom/apk/xo0;->for:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/apk/no0;->public()Lcom/apk/no0;

    move-result-object p1

    instance-of p1, p1, Lcom/apk/po0;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/apk/po0;->interface(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/jo0$do;->do:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
