.class public Lcom/lxj/xpopup/impl/CenterListPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "CenterListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/impl/CenterListPopupView$if;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/xv;

.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public else:I

.field public for:Ljava/lang/CharSequence;

.field public if:Landroid/widget/TextView;

.field public new:[Ljava/lang/String;

.field public try:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->else:I

    .line 3
    iput p2, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    .line 4
    iput p3, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindItemLayoutId:I

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->addInnerContent()V

    return-void
.end method

.method public static synthetic if(Lcom/lxj/xpopup/impl/CenterListPopupView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindItemLayoutId:I

    return p0
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyDarkTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->if:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_dark_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public applyLightTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyLightTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->if:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-nez v0, :cond_0

    sget v0, Lcom/codelibrary/R$layout;->_xpopup_center_impl_list:I

    :cond_0
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->class:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public initPopupContent()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->initPopupContent()V

    .line 2
    sget v0, Lcom/codelibrary/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    :cond_0
    sget v0, Lcom/codelibrary/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->if:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->for:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->if:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->for:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Lcom/lxj/xpopup/impl/CenterListPopupView$if;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->new:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lxj/xpopup/impl/CenterListPopupView$if;-><init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Ljava/util/List;)V

    .line 12
    new-instance v1, Lcom/lxj/xpopup/impl/CenterListPopupView$do;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/CenterListPopupView$do;-><init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Lcom/lxj/xpopup/impl/CenterListPopupView$if;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 13
    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyTheme()V

    return-void
.end method
