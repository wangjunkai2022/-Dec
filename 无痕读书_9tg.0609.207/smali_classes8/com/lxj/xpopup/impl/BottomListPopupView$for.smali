.class public Lcom/lxj/xpopup/impl/BottomListPopupView$for;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BottomListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/impl/BottomListPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/BottomListPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/lxj/xpopup/impl/BottomListPopupView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    .line 2
    iget p1, p1, Lcom/lxj/xpopup/impl/BottomListPopupView;->try:I

    if-nez p1, :cond_0

    sget p1, Lcom/codelibrary/R$layout;->_xpopup_adapter_item_layout:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 3
    sget v1, Lcom/codelibrary/R$id;->tv_text:I

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 4
    iget-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object p2, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->goto:[I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length p2, p2

    if-le p2, v0, :cond_0

    .line 5
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iget-object v3, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object v3, v3, Lcom/lxj/xpopup/impl/BottomListPopupView;->goto:[I

    aget v3, v3, v0

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget p2, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 9
    sget p2, Lcom/codelibrary/R$id;->check_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    sget p2, Lcom/codelibrary/R$id;->check_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iget-object v4, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget v4, v4, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    if-ne v0, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    sget p2, Lcom/codelibrary/R$id;->check_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lxj/xpopup/widget/CheckView;

    .line 12
    sget v1, Lcom/apk/zu;->do:I

    .line 13
    invoke-virtual {p2, v1}, Lcom/lxj/xpopup/widget/CheckView;->setColor(I)V

    .line 14
    :cond_2
    sget p2, Lcom/codelibrary/R$id;->tv_text:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget v2, v1, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    if-ne v0, v2, :cond_3

    .line 15
    sget v1, Lcom/apk/zu;->do:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object v2, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v2, Lcom/apk/lv;->continue:Z

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_content_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 19
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    sget p2, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v2, Lcom/apk/lv;->continue:Z

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_dark_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 23
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    iget-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;->do:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object p2, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->else:[Ljava/lang/String;

    array-length p2, p2

    add-int/2addr p2, v3

    if-ne v0, p2, :cond_6

    .line 25
    sget p2, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
