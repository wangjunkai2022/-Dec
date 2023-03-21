.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/apk/b40;
.implements Lcom/apk/js0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;,
        Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;
    }
.end annotation


# instance fields
.field public break:Landroid/view/View;

.field public case:I

.field public catch:Z

.field public class:I

.field public const:F

.field public final do:Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;

.field public else:Landroid/graphics/drawable/Drawable;

.field public for:Z

.field public final goto:Lcom/apk/b40$do;

.field public final if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

.field public new:Landroid/graphics/Paint;

.field public this:Ljava/lang/Runnable;

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new:Landroid/graphics/Paint;

    .line 4
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->case:I

    .line 5
    new-instance v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V

    iput-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->goto:Lcom/apk/b40$do;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->class:I

    .line 7
    new-instance v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-direct {v2, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new:Landroid/graphics/Paint;

    const v1, 0x33aaaaaa

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    .line 14
    invoke-virtual {p0, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->try(F)I

    move-result p2

    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->try:I

    .line 15
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new:Landroid/graphics/Paint;

    int-to-float p2, p2

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, p2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    new-instance p2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;

    invoke-direct {p2, p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    return-void
.end method

.method public static synthetic for(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItemIndex()I

    move-result p0

    return p0
.end method

.method private getCurrentItemIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final case(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/apk/h40;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItemIndex()I

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 4
    invoke-interface {v0}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/apk/h40;->for(I)I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/apk/h40;->for(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/apk/h40;->new(I)I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/apk/h40;->for(I)I

    move-result v5

    .line 9
    invoke-interface {v0}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-interface {v0}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 11
    iget-object v6, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v2, v2

    .line 12
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 14
    invoke-interface {v0}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/apk/h40$do;->case:Lcom/apk/h40$do;

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for:Z

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    if-eqz v2, :cond_3

    if-lez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->else:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v4, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->else:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/apk/h40;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->case(Landroid/graphics/Canvas;)V

    .line 13
    :cond_1
    iget-object v4, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->case(Landroid/graphics/Canvas;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 19
    iget v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->try:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->try(F)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v3, v3, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 20
    invoke-virtual {p0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->try(F)I

    move-result v1

    int-to-float v9, v1

    int-to-float v10, v0

    iget-object v11, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->catch:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 9
    iget-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->catch:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->invalidate(Landroid/graphics/Rect;)V

    .line 12
    iput-boolean v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->catch:Z

    :cond_1
    :goto_0
    return v1

    .line 13
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public do()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getOnTransitionListener()Lcom/apk/b40$try;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getOnTransitionListener()Lcom/apk/b40$try;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Lcom/apk/i40;

    :try_start_1
    invoke-virtual {v0}, Lcom/apk/i40;->do()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/apk/b40$if;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/apk/b40$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/b40$if;->for()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/apk/h40;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/apk/h40;

    move-result-object v0

    invoke-interface {v0}, Lcom/apk/h40;->do()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getIndicatorAdapter()Lcom/apk/b40$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getIndicatorAdapter()Lcom/apk/b40$if;

    move-result-object v0

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/apk/b40$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getOnIndicatorItemClickListener()Lcom/apk/b40$for;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/apk/b40$new;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;

    .line 2
    iget-object v0, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;->do:Lcom/apk/b40$new;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/apk/b40$try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getOnTransitionListener()Lcom/apk/b40$try;

    move-result-object v0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public if(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->class:I

    .line 3
    iget v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->case:I

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new(I)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 8
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->class:I

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if(IZ)V

    return-void
.end method

.method public final new(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->this:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    new-instance v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$if;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$if;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->this:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->this:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->this:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->class:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p3, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 6
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->class:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->case:I

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 3
    iput p1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    if-nez p1, :cond_0

    .line 4
    iget p1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float v1, v1, p2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 7
    iput p1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->native:I

    .line 8
    iput p2, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->return:F

    .line 9
    iput p3, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->public:I

    .line 10
    iget-object v1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this(IFI)V

    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItemIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->new(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/apk/b40$if;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/apk/b40$if;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/apk/b40$if;

    move-result-object v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->goto:Lcom/apk/b40$do;

    .line 3
    iget-object v0, v0, Lcom/apk/b40$if;->do:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->goto:Lcom/apk/b40$do;

    .line 6
    iget-object p1, p1, Lcom/apk/b40$if;->do:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->goto:Lcom/apk/b40$do;

    invoke-interface {p1}, Lcom/apk/b40$do;->do()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setItemClickable(Z)V

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/apk/b40$for;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnIndicatorItemClickListener(Lcom/apk/b40$for;)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/apk/b40$new;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;

    .line 2
    iput-object p1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;->do:Lcom/apk/b40$new;

    return-void
.end method

.method public setOnTransitionListener(Lcom/apk/b40$try;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnTransitionListener(Lcom/apk/b40$try;)V

    return-void
.end method

.method public setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->else:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBgColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabBgId(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabView(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setScrollBar(Lcom/apk/h40;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setScrollBar(Lcom/apk/h40;)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 3
    iget-boolean v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;->default:Z

    if-eq v1, p1, :cond_1

    .line 4
    iput-boolean p1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;->default:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public final try(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
