.class public Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;
.super Ljava/lang/Object;
.source "ComicViewPagerRecyclerView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;->do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;->do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;

    .line 4
    iget-object p2, p2, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;->do:Landroid/content/Context;

    .line 5
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;->do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;->do:Landroid/content/Context;

    const-string v0, "\u91cd\u78c5\u63a8\u8350|"

    .line 10
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_1
    :goto_0
    return-void
.end method
