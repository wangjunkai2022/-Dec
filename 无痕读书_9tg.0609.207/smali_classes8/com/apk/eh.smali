.class public Lcom/apk/eh;
.super Ljava/lang/Object;
.source "ViewPagerRecyclerView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/eh;->do:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->isNovel()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/apk/eh;->do:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;

    .line 4
    iget-object p2, p2, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;->do:Landroid/content/Context;

    const-string v0, "\u5c0f\u8bf4|\u91cd\u78c5\u63a8\u8350|"

    .line 5
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/apk/eh;->do:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;->do:Landroid/content/Context;

    .line 10
    invoke-static {p1, p2}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_1
    :goto_0
    return-void
.end method
