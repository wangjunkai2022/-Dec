.class public Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;,
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$for;,
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;
    }
.end annotation


# static fields
.field public static final import:[I


# instance fields
.field public break:Landroid/graphics/drawable/Drawable;

.field public case:F

.field public catch:Landroid/graphics/drawable/Drawable;

.field public class:Landroid/graphics/drawable/Drawable;

.field public const:F

.field public do:I

.field public else:I

.field public final:I

.field public for:Z

.field public goto:I

.field public if:F

.field public new:Landroid/view/View;

.field public super:Z

.field public this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;",
            ">;"
        }
    .end annotation
.end field

.field public throw:Landroid/graphics/Rect;

.field public try:Lcom/apk/me0;

.field public while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->import:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e99999a    # 0.3f

    .line 2
    iput v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->for:Z

    const/high16 v1, -0x67000000

    .line 4
    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->final:I

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->throw:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;-><init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$do;)V

    .line 7
    new-instance v2, Lcom/apk/me0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/apk/me0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/apk/me0$for;)V

    .line 8
    iput-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 9
    sget-object v1, Lcom/biquge/ebook/app/R$styleable;->SwipeBackLayout:[I

    const v2, 0x7f110131

    const/high16 v3, 0x7f040000

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeSize(I)V

    .line 12
    :cond_0
    sget-object p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->import:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget p2, p2, v1

    .line 13
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    const/4 p2, 0x3

    const v1, 0x7f080212

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v1, 0x4

    const v2, 0x7f080213

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x7f080211

    const/4 v3, 0x2

    .line 16
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 17
    invoke-virtual {p0, p2, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do(II)V

    .line 18
    invoke-virtual {p0, v1, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do(II)V

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p0, v2, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do(II)V

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float p1, p1, p2

    .line 22
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 23
    iput p1, p2, Lcom/apk/me0;->final:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 24
    iput p1, p2, Lcom/apk/me0;->const:F

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 12

    .line 1
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    .line 2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 3
    iget v1, v0, Lcom/apk/me0;->do:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 4
    iget-object v1, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    .line 5
    iget-object v4, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v4

    .line 6
    iget-object v5, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    .line 7
    iget-object v5, v0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v9, v4, v5

    .line 8
    iget-object v5, v0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v10, v11, v5

    if-eqz v9, :cond_0

    .line 9
    iget-object v5, v0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v10, :cond_1

    .line 10
    iget-object v5, v0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    .line 11
    :cond_2
    iget-object v5, v0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    iget-object v6, v0, Lcom/apk/me0;->native:Landroid/view/View;

    move v7, v4

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Lcom/apk/me0$for;->do(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    iget-object v5, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v4

    if-ne v11, v4, :cond_4

    .line 13
    iget-object v1, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 14
    iget-object v1, v0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    :cond_4
    if-nez v1, :cond_5

    .line 15
    iget-object v1, v0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/apk/me0;->static:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_5
    iget v0, v0, Lcom/apk/me0;->do:I

    if-ne v0, v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    .line 17
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public do(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 4
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3
    iget p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    const/4 v3, 0x0

    cmpl-float p4, p4, v3

    if-lez p4, :cond_7

    if-eqz v0, :cond_7

    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 4
    iget p4, p4, Lcom/apk/me0;->do:I

    if-eqz p4, :cond_7

    .line 5
    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->throw:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p2, p4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/2addr v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    iget v3, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p4, Landroid/graphics/Rect;->top:I

    iget v5, p4, Landroid/graphics/Rect;->left:I

    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_1
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    iget v3, p4, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_2
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    iget v3, p4, Landroid/graphics/Rect;->left:I

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 20
    invoke-virtual {v0, v3, v4, p4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 22
    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_3
    iget p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->final:I

    const/high16 v0, -0x1000000

    and-int/2addr v0, p4

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 24
    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->const:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr p4, v2

    or-int/2addr p4, v0

    .line 25
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    :cond_4
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    :cond_5
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 29
    :cond_6
    :goto_1
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    return p3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->for:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    invoke-virtual {v0, p1}, Lcom/apk/me0;->import(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->super:Z

    .line 2
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->else:I

    iget p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->goto:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->goto:I

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    .line 6
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->super:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->for:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    .line 3
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 4
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    if-nez v5, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/apk/me0;->do()V

    .line 6
    :cond_1
    iget-object v7, v2, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v2, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    .line 8
    :cond_2
    iget-object v7, v2, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v7, 0x1

    if-eqz v5, :cond_1d

    if-eq v5, v7, :cond_1b

    const/4 v8, 0x2

    if-eq v5, v8, :cond_f

    const/4 v8, 0x3

    if-eq v5, v8, :cond_d

    const/4 v8, 0x5

    if-eq v5, v8, :cond_8

    const/4 v4, 0x6

    if-eq v5, v4, :cond_3

    goto/16 :goto_8

    .line 9
    :cond_3
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 10
    iget v5, v2, Lcom/apk/me0;->do:I

    if-ne v5, v7, :cond_7

    iget v5, v2, Lcom/apk/me0;->for:I

    if-ne v4, v5, :cond_7

    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v5

    :goto_0
    const/4 v6, -0x1

    if-ge v3, v5, :cond_6

    .line 12
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 13
    iget v9, v2, Lcom/apk/me0;->for:I

    if-ne v8, v9, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 15
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    float-to-int v9, v9

    float-to-int v10, v10

    .line 16
    invoke-virtual {v2, v9, v10}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v9

    iget-object v10, v2, Lcom/apk/me0;->native:Landroid/view/View;

    if-ne v9, v10, :cond_5

    .line 17
    invoke-virtual {v2, v10, v8}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 18
    iget v1, v2, Lcom/apk/me0;->for:I

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    :goto_2
    if-ne v1, v6, :cond_7

    .line 19
    invoke-virtual {v2}, Lcom/apk/me0;->const()V

    .line 20
    :cond_7
    invoke-virtual {v2, v4}, Lcom/apk/me0;->else(I)V

    goto/16 :goto_8

    .line 21
    :cond_8
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 22
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 23
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 24
    invoke-virtual {v2, v8, v1, v5}, Lcom/apk/me0;->super(FFI)V

    .line 25
    iget v6, v2, Lcom/apk/me0;->do:I

    if-nez v6, :cond_a

    float-to-int v3, v8

    float-to-int v1, v1

    .line 26
    invoke-virtual {v2, v3, v1}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v1

    .line 27
    invoke-virtual {v2, v1, v5}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    .line 28
    iget-object v1, v2, Lcom/apk/me0;->goto:[I

    aget v1, v1, v5

    .line 29
    iget v3, v2, Lcom/apk/me0;->throw:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    .line 30
    iget-object v1, v2, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz v1, :cond_9

    goto/16 :goto_8

    .line 31
    :cond_9
    throw v4

    :cond_a
    float-to-int v4, v8

    float-to-int v1, v1

    .line 32
    iget-object v6, v2, Lcom/apk/me0;->native:Landroid/view/View;

    if-nez v6, :cond_b

    goto :goto_3

    .line 33
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v4, v8, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v4, v8, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v1, v4, :cond_c

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v1, v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    :goto_3
    if-eqz v3, :cond_1f

    .line 35
    iget-object v1, v2, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v2, v1, v5}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    goto/16 :goto_8

    .line 36
    :cond_d
    iget v1, v2, Lcom/apk/me0;->do:I

    if-ne v1, v7, :cond_e

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v2, v1, v1}, Lcom/apk/me0;->this(FF)V

    .line 38
    :cond_e
    invoke-virtual {v2}, Lcom/apk/me0;->do()V

    goto/16 :goto_8

    .line 39
    :cond_f
    iget v4, v2, Lcom/apk/me0;->do:I

    if-ne v4, v7, :cond_17

    .line 40
    iget v4, v2, Lcom/apk/me0;->for:I

    invoke-static {v1, v4}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 41
    invoke-static {v1, v4}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 42
    invoke-static {v1, v4}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 43
    iget-object v6, v2, Lcom/apk/me0;->case:[F

    iget v9, v2, Lcom/apk/me0;->for:I

    aget v6, v6, v9

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 44
    iget-object v6, v2, Lcom/apk/me0;->else:[F

    aget v6, v6, v9

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 45
    iget-object v6, v2, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v9, v2, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v4

    .line 46
    iget-object v10, v2, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 47
    iget-object v11, v2, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-eqz v5, :cond_12

    .line 48
    iget-object v12, v2, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    iget-object v13, v2, Lcom/apk/me0;->native:Landroid/view/View;

    check-cast v12, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 49
    iget-object v12, v12, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 50
    iget v12, v12, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_10

    .line 51
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_10
    and-int/2addr v8, v12

    if-eqz v8, :cond_11

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_11
    const/4 v6, 0x0

    .line 53
    :goto_4
    iget-object v8, v2, Lcom/apk/me0;->native:Landroid/view/View;

    sub-int v12, v6, v10

    invoke-virtual {v8, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_12
    move v15, v6

    if-eqz v4, :cond_14

    .line 54
    iget-object v6, v2, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    iget-object v8, v2, Lcom/apk/me0;->native:Landroid/view/View;

    check-cast v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 55
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 56
    iget v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_13

    .line 57
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 58
    :cond_13
    iget-object v6, v2, Lcom/apk/me0;->native:Landroid/view/View;

    sub-int v8, v3, v11

    invoke-virtual {v6, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    move/from16 v16, v3

    goto :goto_5

    :cond_14
    move/from16 v16, v9

    :goto_5
    if-nez v5, :cond_15

    if-eqz v4, :cond_16

    :cond_15
    sub-int v17, v15, v10

    sub-int v18, v16, v11

    .line 59
    iget-object v13, v2, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    iget-object v14, v2, Lcom/apk/me0;->native:Landroid/view/View;

    .line 60
    invoke-virtual/range {v13 .. v18}, Lcom/apk/me0$for;->do(Landroid/view/View;IIII)V

    .line 61
    :cond_16
    invoke-virtual {v2, v1}, Lcom/apk/me0;->throw(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 62
    :cond_17
    invoke-static/range {p1 .. p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    :goto_6
    if-ge v3, v4, :cond_1a

    .line 63
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 64
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 65
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 66
    iget-object v9, v2, Lcom/apk/me0;->new:[F

    aget v9, v9, v5

    sub-float v9, v6, v9

    .line 67
    iget-object v10, v2, Lcom/apk/me0;->try:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    .line 68
    invoke-virtual {v2, v9, v10, v5}, Lcom/apk/me0;->final(FFI)V

    .line 69
    iget v11, v2, Lcom/apk/me0;->do:I

    if-ne v11, v7, :cond_18

    goto :goto_7

    :cond_18
    float-to-int v6, v6

    float-to-int v8, v8

    .line 70
    invoke-virtual {v2, v6, v8}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v6

    .line 71
    invoke-virtual {v2, v6, v9, v10}, Lcom/apk/me0;->new(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 72
    invoke-virtual {v2, v6, v5}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_7

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 73
    :cond_1a
    :goto_7
    invoke-virtual {v2, v1}, Lcom/apk/me0;->throw(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 74
    :cond_1b
    iget v1, v2, Lcom/apk/me0;->do:I

    if-ne v1, v7, :cond_1c

    .line 75
    invoke-virtual {v2}, Lcom/apk/me0;->const()V

    .line 76
    :cond_1c
    invoke-virtual {v2}, Lcom/apk/me0;->do()V

    goto :goto_8

    .line 77
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 79
    invoke-static {v1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    float-to-int v3, v5

    float-to-int v8, v6

    .line 80
    invoke-virtual {v2, v3, v8}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v3

    .line 81
    invoke-virtual {v2, v5, v6, v1}, Lcom/apk/me0;->super(FFI)V

    .line 82
    invoke-virtual {v2, v3, v1}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    .line 83
    iget-object v3, v2, Lcom/apk/me0;->goto:[I

    aget v1, v3, v1

    .line 84
    iget v3, v2, Lcom/apk/me0;->throw:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    .line 85
    iget-object v1, v2, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz v1, :cond_1e

    goto :goto_8

    .line 86
    :cond_1e
    throw v4

    :cond_1f
    :goto_8
    return v7

    .line 87
    :cond_20
    throw v4
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->super:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    return-void
.end method

.method public setEdgeSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 2
    iput p1, v0, Lcom/apk/me0;->super:I

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 1

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    .line 2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 3
    iput p1, v0, Lcom/apk/me0;->throw:I

    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->for:Z

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->final:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSwipeListener(Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
