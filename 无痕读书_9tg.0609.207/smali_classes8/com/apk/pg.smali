.class public Lcom/apk/pg;
.super Ljava/lang/Object;
.source "ComicStoreRankLayout.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->new:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$if;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 5
    iget-boolean v0, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->goto:Z

    if-eqz v0, :cond_0

    const-string v0, "\u7537\u6f2b"

    goto :goto_0

    :cond_0
    const-string v0, "\u5973\u6f2b"

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    iget-object p2, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 11
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/apk/pg;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_2
    :goto_1
    return-void
.end method
