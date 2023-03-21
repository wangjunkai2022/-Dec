.class public Lcom/apk/f00$for;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/pz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/f00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;FFZ)V
    .locals 3

    if-eqz p4, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    if-eqz p1, :cond_7

    .line 2
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 4
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 5
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->throw()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 7
    invoke-virtual {p1}, Lcom/apk/f00;->extends()Z

    move-result p1

    const-wide v0, 0x3fe6666666666666L    # 0.7

    if-eqz p1, :cond_4

    float-to-double p1, p3

    const-wide p3, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, p1, p3

    if-gez v2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 9
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 10
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->break()V

    goto :goto_0

    :cond_2
    cmpl-double p3, p1, v0

    if-lez p3, :cond_3

    .line 11
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 12
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 13
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->this()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 15
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 16
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->throw()V

    goto :goto_0

    :cond_4
    float-to-double p1, p2

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, p1, p3

    if-gez v2, :cond_5

    .line 17
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 18
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 19
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->break()V

    goto :goto_0

    :cond_5
    cmpl-double p3, p1, v0

    if-lez p3, :cond_6

    .line 20
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 21
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 22
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->this()V

    goto :goto_0

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/apk/f00$for;->do:Lcom/apk/f00;

    .line 24
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 25
    check-cast p1, Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->throw()V

    :goto_0
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 26
    throw p1
.end method
