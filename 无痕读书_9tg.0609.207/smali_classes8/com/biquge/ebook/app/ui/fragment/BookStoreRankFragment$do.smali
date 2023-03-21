.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;
.super Ljava/lang/Object;
.source "BookStoreRankFragment.java"

# interfaces
.implements Lcom/apk/nt$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    const/4 p2, 0x1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    iput-boolean p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    iget-object p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->time_choose:Landroid/widget/TextView;

    sget-object p4, Lcom/apk/q0;->goto:[Ljava/lang/String;

    .line 4
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    xor-int/2addr p1, p2

    .line 5
    aget-object p1, p4, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    .line 7
    iget-object p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    if-eqz p3, :cond_1

    .line 8
    iget-boolean p4, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    .line 9
    iput-boolean p4, p3, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 10
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->i(Z)V

    .line 11
    :cond_1
    iget-object p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    if-eqz p3, :cond_2

    .line 12
    iget-boolean p4, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    .line 13
    iput-boolean p4, p3, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 14
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->i(Z)V

    .line 15
    :cond_2
    iget-object p3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->new:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    if-eqz p3, :cond_3

    .line 16
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    .line 17
    iput-boolean p1, p3, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->goto:Z

    .line 18
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->i(Z)V

    :cond_3
    return-void
.end method
