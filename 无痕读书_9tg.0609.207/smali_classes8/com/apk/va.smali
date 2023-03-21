.class public Lcom/apk/va;
.super Ljava/lang/Object;
.source "BookDetailDirFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/va;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/apk/va;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    .line 3
    iget-object p1, p1, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isGroup()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/apk/va;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    invoke-virtual {p2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    iget-object p3, p0, Lcom/apk/va;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 6
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    const-string p4, "detail"

    invoke-static {p2, p3, p1, p4}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->Z(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
