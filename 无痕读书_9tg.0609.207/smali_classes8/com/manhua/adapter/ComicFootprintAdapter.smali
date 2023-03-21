.class public Lcom/manhua/adapter/ComicFootprintAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicFootprintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/manhua/data/bean/ComicFootprint;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/app/Activity;

.field public for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->do:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->if:Ljava/lang/String;

    const/4 p3, 0x1

    const v1, 0x7f0c0083

    .line 4
    invoke-virtual {p0, p3, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 6
    invoke-direct {p2, p1, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    iput-object p2, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(ILandroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicFootprint;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->for()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    iget-object p2, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->do:Landroid/app/Activity;

    iget-object v0, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->if:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/adapter/ComicFootprintAdapter;->for:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicFootprint;->getIcon()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09032a

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f09033a

    .line 8
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicFootprint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    const v0, 0x7f090349

    .line 9
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicFootprint;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    const v0, 0x7f0902d3

    .line 10
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicFootprint;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    const v0, 0x7f090332

    .line 11
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicFootprint;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_3
    :goto_0
    return-void
.end method
