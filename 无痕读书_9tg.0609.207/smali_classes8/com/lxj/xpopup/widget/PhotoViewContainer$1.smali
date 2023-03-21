.class public Lcom/lxj/xpopup/widget/PhotoViewContainer$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "PhotoViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/PhotoViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/widget/PhotoViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    if-ltz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$000(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    neg-int p1, p3

    .line 3
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$000(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 2
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eq p1, p2, :cond_0

    .line 3
    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    .line 4
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget-object p4, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p4}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$000(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    const p4, 0x3e4ccccd    # 0.2f

    mul-float p4, p4, p2

    sub-float p4, p3, p4

    .line 5
    iget-object p5, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p5, p5, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p5, p4}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 6
    iget-object p5, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p5, p5, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p5, p4}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 7
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    .line 8
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 9
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$100(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Lcom/apk/vv;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$100(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Lcom/apk/vv;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    .line 11
    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->for:Landroid/widget/TextView;

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p3}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$200(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I

    move-result p3

    if-le p2, p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$100(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Lcom/apk/vv;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$100(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Lcom/apk/vv;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    .line 4
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->dismiss()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$300(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 6
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->access$300(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 7
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;->this$0:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-boolean p1, p1, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
