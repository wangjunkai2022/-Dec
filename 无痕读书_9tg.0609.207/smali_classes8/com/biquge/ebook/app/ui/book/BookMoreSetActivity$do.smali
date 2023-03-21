.class public Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;
.super Lcom/apk/bg;
.source "BookMoreSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->for:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Lcom/apk/da;->private(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->new:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 11
    invoke-static {p1}, Lcom/apk/da;->private(I)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 13
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    goto :goto_0

    .line 14
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 15
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->do:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lcom/apk/da;->private(I)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 19
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    goto :goto_0

    .line 20
    :pswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->if:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 23
    invoke-static {p1}, Lcom/apk/da;->private(I)V

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 25
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    goto :goto_0

    .line 26
    :pswitch_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 27
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->try:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x4

    .line 29
    invoke-static {p1}, Lcom/apk/da;->private(I)V

    .line 30
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity$do;->do:Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;

    .line 31
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/BookMoreSetActivity;->i()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090087
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
