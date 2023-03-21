.class public Lcom/apk/n7;
.super Ljava/lang/Object;
.source "BookNovelDirActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n7;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

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
    iget-object p1, p0, Lcom/apk/n7;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    .line 3
    iget-object p1, p1, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/apk/n7;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    .line 6
    iget-object p3, p2, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->if:Lcom/biquge/ebook/app/bean/Book;

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    const-string p4, "detail"

    invoke-static {p2, p3, p1, p4}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->Z(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p3, p2, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->for:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/n7;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->new:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/apk/n7;->do:Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_3
    return-void
.end method
