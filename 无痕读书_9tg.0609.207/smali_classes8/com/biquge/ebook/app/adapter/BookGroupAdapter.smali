.class public Lcom/biquge/ebook/app/adapter/BookGroupAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BookGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public case:I

.field public final do:Z

.field public for:Z

.field public if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public new:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation
.end field

.field public final try:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;ZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->case:I

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do:Z

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p0, p2, p5}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    const p3, 0x7f0c011f

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0c0120

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const p3, 0x7f0c011d

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    goto :goto_0

    :cond_2
    const p3, 0x7f0c011e

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    :goto_0
    const p2, 0x7f06003c

    .line 9
    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->try:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const v4, 0x7f0902c7

    const v5, 0x7f0902c6

    const/4 v6, 0x2

    const v7, 0x7f0902c5

    const v8, 0x7f0902ca

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eq v3, v6, :cond_d

    const/4 v12, 0x3

    if-eq v3, v12, :cond_0

    goto/16 :goto_12

    :cond_0
    const v3, 0x7f090309

    .line 3
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/widget/NightRecyclerView;

    const v12, 0x7f090308

    .line 4
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CREATE_BOOKGROUP_TO_SHELF"

    .line 6
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const v4, 0x7f1001e2

    .line 7
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_1

    .line 9
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_c

    .line 11
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    const-string v14, "CREATE_BOOKGROUP_CREATE"

    .line 12
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const v4, 0x7f1001b5

    .line 13
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_3

    .line 15
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    :cond_3
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_c

    .line 17
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 18
    :cond_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_5

    .line 19
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    :cond_5
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_6

    .line 21
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getSaveTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBookCount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_0

    .line 24
    :cond_7
    new-instance v13, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v14, v1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 27
    new-instance v6, Lcom/biquge/ebook/app/adapter/ImageAdapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupIcons()Ljava/util/List;

    move-result-object v13

    invoke-direct {v6, v13, v9}, Lcom/biquge/ebook/app/adapter/ImageAdapter;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 29
    :goto_0
    new-instance v6, Lcom/apk/j;

    invoke-direct {v6, v1, v2}, Lcom/apk/j;-><init>(Lcom/biquge/ebook/app/adapter/BookGroupAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 32
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    .line 33
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 34
    :cond_8
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_9

    .line 35
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :cond_9
    :goto_1
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 37
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 38
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_b

    .line 39
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 40
    :cond_a
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_b

    .line 41
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :cond_b
    :goto_2
    iget-boolean v3, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do:Z

    if-eqz v3, :cond_c

    .line 43
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupBookCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 44
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_12

    .line 45
    :cond_d
    iget-boolean v3, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do:Z

    const v6, 0x7f0902c3

    const v12, 0x7f0902c4

    const v13, 0x7f10042e

    const v14, 0x7f0902c9

    const v15, 0x7f0902c2

    if-eqz v3, :cond_21

    const v3, 0x7f0902fc

    .line 46
    :try_start_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v5, 0x7f0905d0

    .line 48
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v15}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 50
    iget-object v15, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->if:Ljava/util/Map;

    const v16, 0x7f06003c

    if-eqz v15, :cond_12

    .line 51
    iget-object v15, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->if:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 52
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 54
    :cond_e
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_10

    iget-object v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 56
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 57
    sget-object v4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 58
    iget-boolean v4, v4, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    if-eqz v4, :cond_f

    .line 59
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    .line 60
    :cond_f
    iget v4, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->try:I

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    .line 61
    :cond_10
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 62
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 63
    :goto_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_11

    .line 64
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_11
    :goto_5
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_18

    .line 66
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_18

    .line 67
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 68
    :cond_12
    iget-boolean v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    if-eqz v5, :cond_15

    .line 69
    iget-object v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_14

    iget-object v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 70
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 71
    sget-object v4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 72
    iget-boolean v4, v4, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    if-eqz v4, :cond_13

    .line 73
    invoke-static/range {v16 .. v16}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_6

    .line 74
    :cond_13
    iget v4, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->try:I

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_6

    .line 75
    :cond_14
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 76
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 77
    :goto_6
    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_16

    .line 78
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 79
    :cond_15
    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_16

    .line 80
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :cond_16
    :goto_7
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_18

    .line 82
    iget-boolean v5, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    if-eqz v5, :cond_17

    .line 83
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_18

    .line 84
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 85
    :cond_17
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_18

    .line 86
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_18
    :goto_8
    invoke-virtual {v2, v14}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 88
    invoke-virtual {v4, v0}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 89
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    const v4, 0x7f10016e

    .line 90
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 91
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 93
    :cond_19
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 94
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getExternalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v8, 0x7f10006f

    if-nez v4, :cond_1a

    const-string v4, ""

    .line 95
    invoke-virtual {v2, v7, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 96
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getExternalUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 99
    :cond_1a
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterName()Ljava/lang/String;

    move-result-object v4

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v10

    .line 100
    invoke-static {v13, v14}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v7, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 102
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getChapterUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_1b
    new-array v4, v9, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v13, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 106
    invoke-virtual {v2, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_9
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getMajorCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 110
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getMajorCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 112
    :cond_1c
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const v4, 0x7f0902c6

    .line 113
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 115
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 116
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 117
    :cond_1d
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_1e

    .line 118
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1e
    :goto_b
    const v4, 0x7f0902c7

    .line 119
    invoke-virtual {v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 121
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_20

    .line 122
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 123
    :cond_1f
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    .line 124
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_c
    :try_start_1
    new-array v0, v9, [I

    aput v3, v0, v10

    .line 126
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 128
    :cond_21
    :try_start_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 130
    invoke-virtual {v2, v15}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0902c8

    .line 131
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    .line 132
    iget-boolean v8, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    if-eqz v8, :cond_25

    .line 133
    iget-object v8, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_23

    iget-object v8, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 134
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 135
    sget-object v3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 136
    iget-boolean v3, v3, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    if-eqz v3, :cond_22

    const v3, 0x7f060045

    .line 137
    invoke-static {v3}, Lcom/apk/ze;->p(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_d

    .line 138
    :cond_22
    iget v3, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->try:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_d

    .line 139
    :cond_23
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 140
    iget v3, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->try:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_d
    if-eqz v5, :cond_24

    .line 141
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_24

    .line 142
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_24
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_27

    .line 144
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 145
    :cond_25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_26

    .line 146
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_26
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_27

    .line 148
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :cond_27
    :goto_e
    invoke-virtual {v2, v14}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 150
    invoke-virtual {v3, v0}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 151
    iget-boolean v3, v1, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do:Z

    if-eqz v3, :cond_2a

    .line 152
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v3

    if-eqz v3, :cond_28

    const v3, 0x7f100199

    .line 153
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_f

    .line 154
    :cond_28
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v3

    if-eqz v3, :cond_29

    const v3, 0x7f1003f2

    .line 155
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_f

    :cond_29
    new-array v3, v9, [Ljava/lang/Object;

    .line 156
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastCapterName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v13, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 157
    :goto_f
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_2a
    const v3, 0x7f0902c6

    .line 158
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 159
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 160
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 161
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 162
    :cond_2b
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_2c

    .line 163
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_2c
    :goto_10
    invoke-virtual {v2, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getMajorCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 166
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getMajorCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 168
    :cond_2d
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    const v3, 0x7f0902c7

    .line 169
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getStickTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 171
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_2f

    .line 172
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    .line 173
    :cond_2e
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 174
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    :goto_12
    return-void
.end method

.method public do()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CollectBook;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public for(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    return p1
.end method

.method public if(Z)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->case:I

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getItemType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isNew()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->case:I

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    return p1
.end method
