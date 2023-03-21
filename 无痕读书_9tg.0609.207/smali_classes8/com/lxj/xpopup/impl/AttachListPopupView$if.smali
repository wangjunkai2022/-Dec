.class public Lcom/lxj/xpopup/impl/AttachListPopupView$if;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "AttachListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/impl/AttachListPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
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
.field public final synthetic do:Lcom/lxj/xpopup/impl/AttachListPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/lxj/xpopup/impl/AttachListPopupView;
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
    iput-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$if;->do:Lcom/lxj/xpopup/impl/AttachListPopupView;

    .line 2
    iget p1, p1, Lcom/lxj/xpopup/impl/AttachListPopupView;->final:I

    if-nez p1, :cond_0

    sget p1, Lcom/codelibrary/R$layout;->_xpopup_adapter_item_layout:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 3
    sget v1, Lcom/codelibrary/R$id;->tv_text:I

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 4
    iget-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$if;->do:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object p2, p2, Lcom/lxj/xpopup/impl/AttachListPopupView;->throw:[I

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    array-length p2, p2

    if-le p2, v0, :cond_0

    .line 5
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$if;->do:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/impl/AttachListPopupView;->throw:[I

    aget v0, v2, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget p2, Lcom/codelibrary/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    sget p2, Lcom/codelibrary/R$id;->tv_text:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$if;->do:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object v2, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v2, Lcom/apk/lv;->continue:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/codelibrary/R$color;->_xpopup_content_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 10
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    sget p2, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
