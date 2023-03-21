.class public Lcom/manhua/adapter/ComicRecyclerViewAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicRecyclerViewAdapter.java"


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
.field public final do:Landroid/app/Activity;

.field public for:Lcom/apk/l00;

.field public final if:Lcom/apk/import;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/import;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    const/4 p1, 0x1

    const v0, 0x7f0c007c

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const p1, 0x7f0c016d

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 5
    iget-boolean p2, p2, Lcom/apk/import;->try:Z

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0c016c

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    :goto_0
    const/4 p2, 0x3

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x4

    const p2, 0x7f0c007d

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 2
    invoke-static {p2}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const-string v2, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x3

    const/4 v5, 0x2

    const v6, 0x7f090312

    const v7, 0x7f09030f

    const v8, 0x7f090310

    const/4 v9, 0x0

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f09017c

    const v2, 0x7f09017d

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 7
    invoke-virtual {p1, v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    const p2, 0x7f09017e

    .line 8
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/apk/iz;

    invoke-direct {p2, p0}, Lcom/apk/iz;-><init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 10
    invoke-virtual {p1, v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 11
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    const p2, 0x7f09017b

    .line 12
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/apk/jz;

    invoke-direct {v0, p0}, Lcom/apk/jz;-><init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09017a

    .line 13
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/apk/kz;

    invoke-direct {p2, p0}, Lcom/apk/kz;-><init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    if-eqz p2, :cond_a

    .line 15
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "#08000000"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 17
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 18
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 19
    iget-object v1, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, v9}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 20
    invoke-virtual {p1, v7, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 21
    invoke-virtual {p1, v6, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_1

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    if-eqz p2, :cond_a

    .line 23
    invoke-virtual {p2}, Lcom/apk/import;->try()Z

    move-result p2

    const v1, 0x7f090311

    const-string v2, "ContinueReadTView"

    const-string v10, ""

    const v11, 0x7f100020

    if-eqz p2, :cond_6

    .line 24
    iget-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    iget-object v4, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do:Landroid/app/Activity;

    invoke-virtual {p2, v4}, Lcom/apk/import;->goto(Landroid/app/Activity;)V

    .line 25
    iget-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    .line 26
    iget-boolean p2, p2, Lcom/apk/import;->try:Z

    if-eqz p2, :cond_4

    .line 27
    invoke-virtual {p1, v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 28
    invoke-virtual {p1, v8, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 29
    invoke-virtual {p1, v7, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 30
    invoke-virtual {p1, v6, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_1

    .line 31
    :cond_4
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v10, v1, v9

    .line 32
    invoke-static {v11, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1, v6, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 35
    :try_start_0
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    iget-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->if:Lcom/apk/import;

    .line 37
    iget-object p2, p2, Lcom/apk/import;->for:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p2, 0x7f10029e

    .line 39
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 40
    :cond_5
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41880000    # 17.0f

    .line 41
    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 48
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 52
    :cond_6
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v9

    .line 54
    invoke-static {v11, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 57
    iget-object v2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do:Landroid/app/Activity;

    invoke-virtual {v0, v2, p2, v9}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-ne p2, v4, :cond_a

    .line 59
    invoke-virtual {p1, v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 60
    invoke-virtual {p1, v6, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_1

    :cond_7
    const v1, 0x7f09043d

    .line 61
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/manhua/ui/widget/ComicImageLayout;

    .line 62
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    invoke-virtual {v7}, Lcom/manhua/ui/widget/ComicImageLayout;->getDanmakuView()Lcom/manhua/ui/widget/barrage/BarrageView;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/manhua/ui/widget/barrage/BarrageView;->setChapterId(Ljava/lang/String;I)V

    :cond_8
    const v0, 0x7f09043e

    .line 66
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const v0, 0x7f09043f

    .line 67
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ProgressBar;

    const v0, 0x7f090175

    .line 68
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {v7}, Lcom/manhua/ui/widget/ComicImageLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, p1

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    .line 73
    :goto_0
    new-instance v10, Lcom/apk/hz;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/apk/hz;-><init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;Lcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final do(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p5, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 6
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 8
    invoke-virtual {p5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    :cond_3
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    :cond_4
    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 12
    invoke-virtual {p6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    :cond_5
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;-><init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-static {p1, p2, p3, v6}, Lcom/apk/u;->this(ZLjava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V

    return-void
.end method
