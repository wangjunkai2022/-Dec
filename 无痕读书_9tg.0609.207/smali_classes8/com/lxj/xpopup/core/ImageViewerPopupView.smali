.class public Lcom/lxj/xpopup/core/ImageViewerPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "ImageViewerPopupView.java"

# interfaces
.implements Lcom/apk/vv;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/core/ImageViewerPopupView$for;
    }
.end annotation


# instance fields
.field public break:Landroid/graphics/Rect;

.field public case:Landroid/animation/ArgbEvaluator;

.field public catch:Landroid/widget/ImageView;

.field public class:Lcom/apk/jw;

.field public const:Z

.field public do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

.field public else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final:Landroid/view/View;

.field public for:Landroid/widget/TextView;

.field public goto:Lcom/apk/zv;

.field public if:Lcom/lxj/xpopup/widget/BlankView;

.field public new:Landroid/widget/TextView;

.field public super:I

.field public this:I

.field public try:Lcom/lxj/xpopup/widget/HackyViewPager;


# direct methods
.method private getDuration()I
    .locals 1

    .line 1
    sget v0, Lcom/apk/zu;->if:I

    add-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public static synthetic if(Lcom/lxj/xpopup/core/ImageViewerPopupView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getDuration()I

    move-result p0

    return p0
.end method

.method public static this(Lcom/lxj/xpopup/core/ImageViewerPopupView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/apk/jv;

    invoke-direct {v2, p0, v0, p1}, Lcom/apk/jv;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getDuration()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    iput-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->goto:Lcom/apk/zv;

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    sget-object v1, Lcom/apk/qv;->do:Lcom/apk/qv;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/apk/qv;->new:Lcom/apk/qv;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->doDismissAnimation()V

    return-void
.end method

.method public doAfterShow()V
    .locals 0

    return-void
.end method

.method public doDismissAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->catch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->if:Lcom/lxj/xpopup/widget/BlankView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 10
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doShowAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->catch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$do;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public getAnimationDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPopupLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/codelibrary/R$layout;->_xpopup_image_viewer_popup_view:I

    return v0
.end method

.method public initPopupContent()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 2
    sget v0, Lcom/codelibrary/R$id;->tv_pager_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->for:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/codelibrary/R$id;->tv_save:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->new:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/codelibrary/R$id;->placeholderView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/BlankView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->if:Lcom/lxj/xpopup/widget/BlankView;

    .line 5
    sget v0, Lcom/codelibrary/R$id;->photoViewContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    .line 6
    invoke-virtual {v0, p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->setOnDragChangeListener(Lcom/apk/vv;)V

    .line 7
    sget v0, Lcom/codelibrary/R$id;->pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/HackyViewPager;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    .line 8
    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 10
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->catch:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->if:Lcom/lxj/xpopup/widget/BlankView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->goto:Lcom/apk/zv;

    if-nez v0, :cond_1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->for:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->new:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 18
    :cond_1
    throw v2

    .line 19
    :cond_2
    new-instance v0, Lcom/apk/jw;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/jw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    .line 20
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->do:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->catch:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/jw;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->new:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p1}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 4
    sget-object p1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance p1, Lcom/apk/kv;

    invoke-direct {p1, p0}, Lcom/apk/kv;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->catch:Landroid/widget/ImageView;

    return-void
.end method
