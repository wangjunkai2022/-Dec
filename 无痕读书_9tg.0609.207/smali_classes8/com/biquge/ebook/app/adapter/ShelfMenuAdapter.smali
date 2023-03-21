.class public Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ShelfMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/BookMenuItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookMenuItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0103

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/BookMenuItem;

    const v0, 0x7f09034d

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setTouchEnable(Z)V

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMenuItem;->isCheck()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    const v2, 0x7f09034c

    .line 6
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMenuItem;->isSwitch()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMenuItem;->getResId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v0, 0x7f09034e

    .line 13
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMenuItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
