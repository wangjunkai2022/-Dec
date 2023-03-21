.class public Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "NovelRankListAdapter.java"


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
.field public final do:Landroid/app/Activity;

.field public for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if:Ljava/lang/String;

    if-eqz p4, :cond_0

    const p3, 0x7f0c012b

    goto :goto_0

    :cond_0
    const p3, 0x7f0c0102

    :goto_0
    const/4 p4, 0x1

    .line 4
    invoke-virtual {p0, p4, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 6
    invoke-direct {p2, p1, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const/4 p1, 0x2

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/Book;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->for()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->do:Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->if:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto/16 :goto_0

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f09032a

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f09033a

    .line 8
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    const v2, 0x7f090349

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getCName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  |  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    const v2, 0x7f090332

    .line 10
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090342

    .line 11
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    const v0, 0x7f100430

    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getScore()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x8

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    :cond_0
    return-void
.end method
