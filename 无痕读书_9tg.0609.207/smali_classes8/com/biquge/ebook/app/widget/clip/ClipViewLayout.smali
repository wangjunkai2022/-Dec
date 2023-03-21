.class public Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipViewLayout.java"


# instance fields
.field public break:F

.field public case:Landroid/graphics/Matrix;

.field public final catch:[F

.field public class:F

.field public const:F

.field public do:Landroid/widget/ImageView;

.field public else:I

.field public for:F

.field public goto:Landroid/graphics/PointF;

.field public if:Lcom/apk/qh;

.field public new:F

.field public this:Landroid/graphics/PointF;

.field public try:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    .line 4
    iput v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->else:I

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->goto:Landroid/graphics/PointF;

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->this:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->break:F

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 8
    iput-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->catch:[F

    const/high16 v2, 0x40800000    # 4.0f

    .line 9
    iput v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->const:F

    .line 10
    sget-object v2, Lcom/biquge/ebook/app/R$styleable;->ClipViewLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x2

    .line 12
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->for:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 15
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p2, Lcom/apk/qh;

    invoke-direct {p2, p1}, Lcom/apk/qh;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    if-ne v1, v3, :cond_0

    .line 18
    sget-object v1, Lcom/apk/qh$do;->do:Lcom/apk/qh$do;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/apk/qh$do;->if:Lcom/apk/qh$do;

    :goto_0
    invoke-virtual {p2, v1}, Lcom/apk/qh;->setClipType(Lcom/apk/qh$do;)V

    .line 19
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {p2, v0}, Lcom/apk/qh;->setClipBorderWidth(I)V

    .line 20
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    iget v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->for:F

    invoke-virtual {p2, v0}, Lcom/apk/qh;->setmHorizontalPadding(F)V

    .line 21
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    .line 22
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 8
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v0, v0

    iget v5, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->for:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    sub-float v7, v0, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    .line 9
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v4, v5

    if-lez v7, :cond_1

    neg-float v4, v4

    add-float/2addr v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 10
    :goto_0
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->for:F

    sub-float v8, v0, v7

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    sub-float/2addr v0, v7

    sub-float v4, v0, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v2, v2

    iget v5, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->new:F

    mul-float v6, v6, v5

    sub-float v6, v2, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_5

    .line 12
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v0, v5

    if-lez v6, :cond_4

    neg-float v0, v0

    add-float v3, v0, v5

    .line 13
    :cond_4
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->new:F

    sub-float v5, v2, v1

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    sub-float/2addr v2, v1

    sub-float v3, v2, v0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->catch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->catch:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final if(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iput v5, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->else:I

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->break:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->this:Landroid/graphics/PointF;

    .line 6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v2

    .line 7
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    div-float/2addr p1, v2

    .line 8
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 9
    iput v3, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->else:I

    goto/16 :goto_2

    .line 10
    :cond_2
    iget v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->else:I

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->goto:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->goto:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v2}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->new:F

    .line 15
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do()V

    goto/16 :goto_1

    :cond_3
    if-ne v0, v3, :cond_6

    .line 17
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if(Landroid/view/MotionEvent;)F

    move-result p1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_6

    .line 18
    iget v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->break:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->getScale()F

    move-result v0

    iget v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->class:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v0}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->new:F

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->this:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->getScale()F

    move-result p1

    iget v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->class:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    const p1, 0x3f8147ae    # 1.01f

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->this:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do()V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->getScale()F

    move-result v0

    iget v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->const:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->if:Lcom/apk/qh;

    invoke-virtual {v0}, Lcom/apk/qh;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->new:F

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->this:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 30
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->case:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->try:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->goto:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    iput v1, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->else:I

    :cond_8
    :goto_2
    return v1
.end method

.method public setImageSrc(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout$do;-><init>(Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
