.class public Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BookRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/BookChapter;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final case:Lcom/apk/import;

.field public final do:Z

.field public final else:Landroid/view/View$OnClickListener;

.field public for:Z

.field public goto:Landroid/view/View$OnTouchListener;

.field public if:I

.field public final new:Z

.field public this:Landroid/view/View$OnClickListener;

.field public final try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/apk/import;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter$do;-><init>(Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->else:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->try:Landroid/app/Activity;

    .line 4
    iput p2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->if:I

    .line 5
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    const/4 p1, 0x1

    const p2, 0x7f0c0123

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const p2, 0x7f0c016d

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    .line 7
    iget-boolean p3, p3, Lcom/apk/import;->try:Z

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0c016c

    .line 9
    invoke-virtual {p0, v0, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    :goto_0
    const/4 p3, 0x3

    .line 10
    invoke-virtual {p0, p3, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/finally;->extends()Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/finally;->default()Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/finally;->throw()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->do:Z

    .line 14
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->new:Z

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 2
    invoke-static {p2}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v2, :cond_5

    const/4 p2, 0x3

    const v5, 0x7f090312

    const v6, 0x7f09030f

    const v7, 0x7f090310

    if-eq v1, v4, :cond_1

    if-eq v1, p2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    if-eqz p2, :cond_d

    .line 5
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "#08000000"

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->try:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, v3}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 10
    invoke-virtual {p1, v6, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 11
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_4

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    if-eqz v1, :cond_d

    .line 13
    invoke-virtual {v1}, Lcom/apk/import;->try()Z

    move-result v1

    const v8, 0x7f090311

    const-string v9, "ContinueReadTView"

    const-string v10, ""

    const v11, 0x7f100020

    if-eqz v1, :cond_4

    .line 14
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->try:Landroid/app/Activity;

    invoke-virtual {p2, v1}, Lcom/apk/import;->goto(Landroid/app/Activity;)V

    .line 15
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    .line 16
    iget-boolean p2, p2, Lcom/apk/import;->try:Z

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1, v8, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    invoke-virtual {p1, v7, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 19
    invoke-virtual {p1, v6, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 20
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_4

    .line 21
    :cond_2
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v10, v1, v3

    .line 22
    invoke-static {v11, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 25
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->case:Lcom/apk/import;

    .line 27
    iget-object p2, p2, Lcom/apk/import;->for:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p2, 0x7f10029e

    .line 29
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 30
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->try:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41880000    # 17.0f

    .line 31
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 37
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 38
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 39
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 42
    :cond_4
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v3

    .line 44
    invoke-static {v11, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 47
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->try:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1, v3}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, p2, :cond_d

    .line 49
    invoke-virtual {p1, v8, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_4

    .line 51
    :cond_5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 53
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v1

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getNovelid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/apk/da;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    const v5, 0x7f0900e0

    .line 54
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 55
    iget-boolean v5, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->for:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->if:I

    if-ne v5, v4, :cond_7

    goto :goto_1

    .line 56
    :cond_7
    iget-boolean v5, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->do:Z

    if-eqz v5, :cond_9

    .line 57
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v5

    if-le v5, v2, :cond_8

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v5

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v6

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v2, 0x0

    :goto_2
    const v5, 0x7f0900e1

    .line 58
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/widget/ReadContentLayout;

    .line 59
    iget-object v6, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->goto:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object v6, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->else:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v5, p2, v1, v2}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;Z)V

    .line 62
    iget v1, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->if:I

    if-eq v1, v4, :cond_c

    .line 63
    invoke-virtual {v5}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->getBarrageView()Lcom/manhua/ui/widget/barrage/BarrageView;

    move-result-object v1

    .line 64
    iget-boolean v4, p0, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->new:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_b

    .line 65
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result p2

    invoke-virtual {v1, v4, p2}, Lcom/manhua/ui/widget/barrage/BarrageView;->setChapterId(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_a

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v5, :cond_c

    .line 68
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 69
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_c

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 71
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v5, :cond_c

    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_3
    const p2, 0x7f090110

    .line 73
    invoke-virtual {p1, p2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_d
    :goto_4
    return-void
.end method

.method public do()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
