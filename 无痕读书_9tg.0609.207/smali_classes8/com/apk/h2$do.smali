.class public Lcom/apk/h2$do;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Lcom/apk/pz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;FFZ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    if-eqz p1, :cond_8

    .line 2
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    const-wide v0, 0x3fd3333333333333L    # 0.3

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-nez p1, :cond_2

    float-to-double p1, p2

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 4
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 5
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->break()V

    goto/16 :goto_0

    :cond_0
    cmpl-double p3, p1, v2

    if-lez p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 7
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 8
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->this()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 10
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 11
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->throw()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 13
    invoke-virtual {p1}, Lcom/apk/h2;->implements()Z

    move-result p1

    if-eqz p1, :cond_5

    float-to-double p1, p3

    const-wide p3, 0x3fc3333333333333L    # 0.15

    cmpg-double v0, p1, p3

    if-gez v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 15
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 16
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->break()V

    goto :goto_0

    :cond_3
    cmpl-double p3, p1, v2

    if-lez p3, :cond_4

    .line 17
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 18
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 19
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->this()V

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 21
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 22
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->throw()V

    goto :goto_0

    :cond_5
    float-to-double p1, p2

    cmpg-double p3, p1, v0

    if-gez p3, :cond_6

    .line 23
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 24
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 25
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->break()V

    goto :goto_0

    :cond_6
    cmpl-double p3, p1, v2

    if-lez p3, :cond_7

    .line 26
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 27
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 28
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->this()V

    goto :goto_0

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/apk/h2$do;->do:Lcom/apk/h2;

    .line 30
    iget-object p1, p1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 31
    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->throw()V

    :goto_0
    return-void

    :cond_8
    const/4 p1, 0x0

    .line 32
    throw p1
.end method
