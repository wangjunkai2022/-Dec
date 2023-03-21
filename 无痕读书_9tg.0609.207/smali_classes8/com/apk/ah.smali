.class public Lcom/apk/ah;
.super Ljava/lang/Object;
.source "StoreRankLayout.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/StoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 5
    iget-boolean v0, v0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->goto:Z

    if-eqz v0, :cond_0

    const-string v0, "\u7537\u9891"

    goto :goto_0

    :cond_0
    const-string v0, "\u5973\u9891"

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->else:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->isNovel()Z

    move-result p3

    const-string v0, ""

    if-eqz p3, :cond_1

    .line 10
    iget-object p3, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 12
    invoke-static {p3, p2, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/apk/ah;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 15
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_2
    :goto_1
    return-void
.end method
