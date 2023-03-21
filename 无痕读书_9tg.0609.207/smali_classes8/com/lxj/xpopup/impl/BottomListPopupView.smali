.class public Lcom/lxj/xpopup/impl/BottomListPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "BottomListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/impl/BottomListPopupView$for;
    }
.end annotation


# instance fields
.field public break:I

.field public case:Ljava/lang/CharSequence;

.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public else:[Ljava/lang/String;

.field public for:Landroid/widget/LinearLayout;

.field public goto:[I

.field public if:Landroid/widget/TextView;

.field public new:I

.field public this:Lcom/apk/xv;

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    .line 3
    iput p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->new:I

    .line 4
    iput p3, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->try:I

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->addInnerContent()V

    return-void
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyDarkTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_dark_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2, v2, v2, v2}, Lcom/apk/pw;->else(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->for:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2, v2, v2, v2}, Lcom/apk/pw;->else(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public applyLightTheme()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyLightTheme()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_light_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2, v2, v2, v2}, Lcom/apk/pw;->else(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->for:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codelibrary/R$color;->_xpopup_light_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v2, v2, Lcom/apk/lv;->final:F

    invoke-static {v1, v2, v2, v2, v2}, Lcom/apk/pw;->else(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->new:I

    if-nez v0, :cond_0

    sget v0, Lcom/codelibrary/R$layout;->_xpopup_bottom_impl_list:I

    :cond_0
    return v0
.end method

.method public initPopupContent()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->initPopupContent()V

    .line 2
    sget v0, Lcom/codelibrary/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->new:I

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

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/codelibrary/R$id;->dialog_cancel_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->for:Landroid/widget/LinearLayout;

    .line 7
    sget v0, Lcom/codelibrary/R$id;->dialog_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/impl/BottomListPopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/BottomListPopupView$do;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->case:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    sget v0, Lcom/codelibrary/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->case:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    :goto_0
    new-instance v0, Lcom/lxj/xpopup/impl/BottomListPopupView$for;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->else:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lxj/xpopup/impl/BottomListPopupView$for;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Ljava/util/List;)V

    .line 15
    new-instance v1, Lcom/lxj/xpopup/impl/BottomListPopupView$if;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/BottomListPopupView$if;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Lcom/lxj/xpopup/impl/BottomListPopupView$for;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 16
    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->new:I

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v0, v0, Lcom/apk/lv;->continue:Z

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/BottomListPopupView;->applyDarkTheme()V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/BottomListPopupView;->applyLightTheme()V

    :cond_4
    :goto_1
    return-void
.end method
