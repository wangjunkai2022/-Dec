.class public Lcom/manhua/adapter/ComicRankListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicRankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/manhua/data/bean/ComicBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public final for:Ljava/lang/String;

.field public final if:Landroid/app/Activity;

.field public final new:Z

.field public try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    .line 3
    iput-object p1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->if:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/manhua/adapter/ComicRankListAdapter;->for:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/manhua/adapter/ComicRankListAdapter;->new:Z

    if-eqz p5, :cond_0

    const p3, 0x7f0c0083

    goto :goto_0

    :cond_0
    const p3, 0x7f0c007e

    :goto_0
    const/4 p4, 0x1

    .line 6
    invoke-virtual {p0, p4, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 8
    invoke-direct {p2, p1, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput-object p2, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const/4 p1, 0x2

    .line 11
    iget-object p2, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicBean;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_e

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->for()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iget-object p2, p0, Lcom/manhua/adapter/ComicRankListAdapter;->if:Landroid/app/Activity;

    iget-object v0, p0, Lcom/manhua/adapter/ComicRankListAdapter;->for:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto/16 :goto_0

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f09032a

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f09033a

    .line 8
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    const v3, 0x7f090349

    .line 9
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    const v3, 0x7f0902d3

    .line 10
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    const v3, 0x7f090332

    .line 11
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    iget-boolean v0, p0, Lcom/manhua/adapter/ComicRankListAdapter;->new:Z

    const v3, 0x7f100430

    const/4 v4, 0x0

    const v5, 0x7f090342

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v0, :cond_c

    .line 13
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f09033c

    .line 14
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 16
    iget v8, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 17
    iput p1, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    .line 18
    :cond_3
    iget v8, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    if-ne p1, v8, :cond_5

    const p1, 0x7f080091

    .line 19
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v7, :cond_e

    .line 23
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 24
    :cond_5
    iget v8, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    add-int/2addr v8, v2

    if-ne p1, v8, :cond_7

    const p1, 0x7f080092

    .line 25
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v7, :cond_e

    .line 29
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 30
    :cond_7
    iget v8, p0, Lcom/manhua/adapter/ComicRankListAdapter;->do:I

    add-int/2addr v8, v1

    if-ne p1, v8, :cond_9

    const p1, 0x7f080093

    .line 31
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v7, :cond_e

    .line 35
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_9
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eq p1, v7, :cond_a

    .line 37
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :cond_a
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_b

    new-array p1, v2, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {v3, p1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_b
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_c
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_d

    new-array v0, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v3, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_d
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_0
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRankListAdapter;->try:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method
