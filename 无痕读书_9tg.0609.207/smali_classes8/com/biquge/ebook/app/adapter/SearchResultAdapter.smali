.class public Lcom/biquge/ebook/app/adapter/SearchResultAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/Book;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final case:I

.field public do:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public else:Ljava/lang/String;

.field public for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Z

.field public new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public final try:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->try:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->if:Z

    const p2, 0x7f06003c

    .line 4
    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->case:I

    const/4 p2, 0x1

    const v1, 0x7f0c012a

    .line 5
    invoke-virtual {p0, p2, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p0, p2, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x4

    .line 7
    invoke-virtual {p0, p2, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x5

    .line 8
    invoke-virtual {p0, p2, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-eqz p3, :cond_0

    .line 9
    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 10
    invoke-direct {p2, p1, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const/4 p1, 0x2

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color = \"#D81E06\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    aget-object v3, v0, v2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    move-object/from16 v3, p2

    check-cast v3, Lcom/biquge/ebook/app/bean/Book;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v5, 0x7f0801d7

    const/4 v7, 0x1

    const v9, 0x7f0905d0

    const v10, 0x7f090130

    const v11, 0x7f09013d

    const v12, 0x7f0902d6

    const v13, 0x7f0902d5

    const v14, 0x7f0902d3

    const v15, 0x7f0902d7

    const v4, 0x7f0902d4

    const v16, 0x7f06003c

    const v6, 0x7f090131

    const/4 v8, 0x0

    const v17, 0x7f100146

    const v18, 0x7f100147

    if-eq v0, v7, :cond_13

    const/4 v7, 0x2

    if-eq v0, v7, :cond_11

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getBookStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 6
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 7
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 8
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->else:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {v2, v6, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_7

    .line 12
    :cond_1
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v7

    .line 13
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 15
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 17
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v12, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->else:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_1
    :try_start_2
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    :cond_2
    invoke-virtual {v2, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v2, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v10

    .line 28
    iget-boolean v11, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->if:Z

    if-nez v11, :cond_7

    if-eqz v7, :cond_3

    .line 29
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 30
    :cond_3
    iget v4, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->case:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 31
    :goto_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 32
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :cond_4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->isHaveShelf()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 36
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    const v3, 0x7f08016b

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_10

    .line 42
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 43
    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 44
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :cond_8
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->for:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->for:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    invoke-static/range {v18 .. v18}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_a

    .line 50
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :cond_a
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 52
    :cond_b
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_c

    .line 53
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :cond_c
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :cond_d
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz v7, :cond_e

    .line 58
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 59
    :cond_e
    iget v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->case:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 60
    :cond_f
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 61
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_3
    const/4 v3, 0x1

    new-array v0, v3, [I

    aput v6, v0, v8

    .line 63
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_7

    .line 64
    :cond_11
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_23

    .line 65
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->for()Z

    move-result v0

    if-nez v0, :cond_12

    .line 66
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iget-object v2, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->try:Landroid/app/Activity;

    const-string v3, "searchnative"

    invoke-virtual {v0, v2, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 67
    :cond_12
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto/16 :goto_7

    .line 68
    :cond_13
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v7

    .line 69
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 71
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 72
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 73
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 74
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v12, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->else:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_4
    :try_start_4
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_14

    .line 79
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    :cond_14
    invoke-virtual {v2, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v2, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 83
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v10

    .line 84
    iget-boolean v11, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->if:Z

    if-nez v11, :cond_19

    if-eqz v7, :cond_15

    .line 85
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_5

    .line 86
    :cond_15
    iget v4, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->case:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 87
    :goto_5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_16

    .line 88
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->isHaveShelf()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 90
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_17
    invoke-static/range {v17 .. v17}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    .line 95
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_18
    const v3, 0x7f08016b

    .line 96
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_22

    .line 98
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 99
    :cond_19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1a

    .line 100
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_1a
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->for:Ljava/util/Map;

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->for:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 102
    invoke-static/range {v18 .. v18}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 104
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_1b
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1c

    .line 106
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_1c
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 108
    :cond_1d
    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1e

    .line 109
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_1e
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 111
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :cond_1f
    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz v7, :cond_20

    .line 114
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_6

    .line 115
    :cond_20
    iget v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->case:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_6

    .line 116
    :cond_21
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 117
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_6
    const/4 v3, 0x1

    new-array v0, v3, [I

    aput v6, v0, v8

    .line 119
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_23
    :goto_7
    return-void
.end method

.method public if(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
