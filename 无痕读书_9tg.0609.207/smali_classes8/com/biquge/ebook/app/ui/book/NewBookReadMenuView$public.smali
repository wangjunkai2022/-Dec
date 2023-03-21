.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$public;
.super Landroid/widget/PopupWindow;
.source "NewBookReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "public"
.end annotation


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const v1, 0x7f0c01c3

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f090610

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->volatile:Lcom/apk/bg;

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09060d

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->if:Landroid/widget/TextView;

    .line 14
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->volatile:Lcom/apk/bg;

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090613

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 17
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->volatile:Lcom/apk/bg;

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09060e

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 20
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->volatile:Lcom/apk/bg;

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090611

    .line 22
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 23
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v3, :cond_0

    .line 24
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->this:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 25
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_1

    .line 26
    :cond_0
    new-instance v3, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    .line 27
    iget-object v4, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setWebSite(Z)V

    .line 29
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 30
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setCollectId(Ljava/lang/String;)V

    .line 31
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 32
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 33
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->break:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 34
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    .line 37
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setCollectId(Ljava/lang/String;)V

    .line 38
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    .line 39
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 40
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->goto:Lcom/biquge/ebook/app/bean/Book;

    .line 41
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setIcon(Ljava/lang/String;)V

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V

    :goto_1
    const v1, 0x7f090612

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09060f

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->getBookAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
