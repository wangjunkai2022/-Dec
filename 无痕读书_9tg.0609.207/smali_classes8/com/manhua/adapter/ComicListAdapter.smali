.class public Lcom/manhua/adapter/ComicListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/manhua/data/bean/ComicElement;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/app/Activity;

.field public for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/manhua/adapter/ComicListAdapter;->do:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/manhua/adapter/ComicListAdapter;->if:Ljava/lang/String;

    const/4 p3, 0x1

    const v1, 0x7f0c007f

    .line 4
    invoke-virtual {p0, p3, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p3, 0x2

    const v1, 0x7f0c0082

    .line 5
    invoke-virtual {p0, p3, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 7
    invoke-direct {p2, p1, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    iput-object p2, p0, Lcom/manhua/adapter/ComicListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p1}, Lcom/apk/strictfp;->setAutoRefresh(Z)V

    const/4 p1, 0x3

    .line 10
    iget-object p2, p0, Lcom/manhua/adapter/ComicListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicElement;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f090177

    const v2, 0x7f10013d

    const v3, 0x7f090178

    const/4 v4, 0x0

    const v5, 0x7f090176

    const/4 v6, 0x1

    if-eq v0, v6, :cond_4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/adapter/ComicListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->for()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/manhua/adapter/ComicListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iget-object p2, p0, Lcom/manhua/adapter/ComicListAdapter;->do:Landroid/app/Activity;

    iget-object v0, p0, Lcom/manhua/adapter/ComicListAdapter;->if:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/adapter/ComicListAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto/16 :goto_2

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getCommendImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f080223

    .line 8
    invoke-static {v0, v5, v6, v4}, Lcom/apk/u;->native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V

    .line 9
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 13
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 15
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 16
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_1
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 20
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090179

    .line 21
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090174

    const v1, 0x7f10013c

    new-array v2, v6, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicElement;->getBookCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method
