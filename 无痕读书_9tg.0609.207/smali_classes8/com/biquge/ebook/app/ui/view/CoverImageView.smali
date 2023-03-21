.class public Lcom/biquge/ebook/app/ui/view/CoverImageView;
.super Landroid/widget/FrameLayout;
.source "CoverImageView.java"


# instance fields
.field public mCoverIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019e
    .end annotation
.end field

.field public mNameTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019f
    .end annotation
.end field

.field public mTypeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c008e

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public do(Lcom/biquge/ebook/app/bean/CollectBook;Z)V
    .locals 6

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v0

    const v1, 0x7f080340

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f100199

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1003f4

    .line 6
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mCoverIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mCoverIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getIcon()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mCoverIv:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 10
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v1, 0x8

    if-nez p1, :cond_5

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x4

    if-le p1, v4, :cond_4

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mNameTv:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz p2, :cond_7

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mTypeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mTypeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mTypeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public setComicCover(Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getIcon()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/CoverImageView;->mCoverIv:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public setCover(Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->do(Lcom/biquge/ebook/app/bean/CollectBook;Z)V

    return-void
.end method
