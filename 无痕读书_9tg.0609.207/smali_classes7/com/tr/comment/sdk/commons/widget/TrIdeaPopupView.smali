.class public Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "TrIdeaPopupView.java"

# interfaces
.implements Lcom/apk/g80;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final case:Ljava/lang/String;

.field public final do:Landroidx/fragment/app/FragmentActivity;

.field public final else:Ljava/lang/String;

.field public final for:Lcom/tr/comment/sdk/bean/TrSortType;

.field public goto:Lcom/tr/comment/sdk/view/TrCommentView;

.field public final if:Lcom/tr/comment/sdk/bean/TrSourceType;

.field public final new:Ljava/lang/String;

.field public final try:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Lcom/tr/comment/sdk/bean/TrSortType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->do:Landroidx/fragment/app/FragmentActivity;

    .line 3
    iput-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->if:Lcom/tr/comment/sdk/bean/TrSourceType;

    .line 4
    iput-object p3, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->for:Lcom/tr/comment/sdk/bean/TrSortType;

    .line 5
    iput-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->new:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->try:I

    .line 7
    iput-object p6, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->case:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->else:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_idea_popupview_layout:I

    return v0
.end method

.method public getPopupHeight()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_close_btn:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_popup_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_bg_bottom_dialog_night:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    :cond_0
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_bottompopup_cv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/view/TrCommentView;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->goto:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 5
    invoke-virtual {v0}, Lcom/tr/comment/sdk/view/TrCommentView;->goto()V

    .line 6
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->for:Lcom/tr/comment/sdk/bean/TrSortType;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->goto:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {v1, v0}, Lcom/tr/comment/sdk/view/TrCommentView;->setSortType(Lcom/tr/comment/sdk/bean/TrSortType;)V

    .line 8
    :cond_1
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_close_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->goto:Lcom/tr/comment/sdk/view/TrCommentView;

    iget v1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->try:I

    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->new:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tr/comment/sdk/view/TrCommentView;->super(ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->goto:Lcom/tr/comment/sdk/view/TrCommentView;

    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->do:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->if:Lcom/tr/comment/sdk/bean/TrSourceType;

    invoke-static {v2}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->case:Ljava/lang/String;

    iget-object v4, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;->else:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tr/comment/sdk/view/TrCommentView;->const(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
