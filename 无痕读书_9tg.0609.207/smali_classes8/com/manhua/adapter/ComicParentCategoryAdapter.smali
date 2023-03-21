.class public Lcom/manhua/adapter/ComicParentCategoryAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ComicParentCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/manhua/data/bean/ComicCategory;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    const v1, 0x7f0c0081

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 v0, 0x2

    const v1, 0x7f0c011a

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicCategory;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const v0, 0x7f090358

    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCategory;->isMan()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f08007f

    goto :goto_0

    :cond_1
    const p2, 0x7f08007e

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    const v0, 0x7f0902d1

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCategory;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCategory;->isMan()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f08007d

    goto :goto_1

    :cond_3
    const v3, 0x7f08007c

    :goto_1
    const/4 v4, 0x0

    .line 8
    invoke-static {v2, v0, v3, v4}, Lcom/apk/u;->native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V

    const v0, 0x7f0902d2

    .line 9
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    const v0, 0x7f0902d0

    const v2, 0x7f100264

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicCategory;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {v2, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
