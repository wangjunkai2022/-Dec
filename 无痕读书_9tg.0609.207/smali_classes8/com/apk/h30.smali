.class public Lcom/apk/h30;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/h30$case;,
        Lcom/apk/h30$try;
    }
.end annotation


# instance fields
.field public abstract:Landroid/widget/ImageView$ScaleType;

.field public break:Lcom/apk/y20;

.field public case:Z

.field public final catch:Landroid/graphics/Matrix;

.field public final class:Landroid/graphics/Matrix;

.field public final const:Landroid/graphics/Matrix;

.field public final continue:Lcom/apk/z20;

.field public default:Lcom/apk/h30$case;

.field public do:Landroid/view/animation/Interpolator;

.field public else:Z

.field public extends:I

.field public final final:Landroid/graphics/RectF;

.field public finally:I

.field public for:F

.field public final goto:Landroid/widget/ImageView;

.field public if:I

.field public import:Lcom/apk/b30;

.field public native:Lcom/apk/g30;

.field public new:F

.field public package:F

.field public private:Z

.field public public:Landroid/view/View$OnClickListener;

.field public return:Landroid/view/View$OnLongClickListener;

.field public static:Lcom/apk/d30;

.field public strictfp:Z

.field public final super:[F

.field public switch:Lcom/apk/e30;

.field public this:Landroid/view/GestureDetector;

.field public throw:Lcom/apk/a30;

.field public throws:Lcom/apk/f30;

.field public try:F

.field public while:Lcom/apk/c30;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/apk/h30;->do:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/apk/h30;->if:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/apk/h30;->for:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 5
    iput v0, p0, Lcom/apk/h30;->new:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    iput v0, p0, Lcom/apk/h30;->try:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/apk/h30;->case:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/apk/h30;->else:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/apk/h30;->class:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/apk/h30;->final:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Lcom/apk/h30;->super:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/apk/h30;->extends:I

    .line 15
    iput v1, p0, Lcom/apk/h30;->finally:I

    .line 16
    iput-boolean v0, p0, Lcom/apk/h30;->private:Z

    .line 17
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    .line 18
    new-instance v0, Lcom/apk/h30$do;

    invoke-direct {v0, p0}, Lcom/apk/h30$do;-><init>(Lcom/apk/h30;)V

    iput-object v0, p0, Lcom/apk/h30;->continue:Lcom/apk/z20;

    .line 19
    iput-object p1, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/apk/h30;->package:F

    .line 24
    new-instance v0, Lcom/apk/y20;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/h30;->continue:Lcom/apk/z20;

    invoke-direct {v0, v1, v2}, Lcom/apk/y20;-><init>(Landroid/content/Context;Lcom/apk/z20;)V

    iput-object v0, p0, Lcom/apk/h30;->break:Lcom/apk/y20;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/apk/h30$if;

    invoke-direct {v1, p0}, Lcom/apk/h30$if;-><init>(Lcom/apk/h30;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/apk/h30;->this:Landroid/view/GestureDetector;

    .line 26
    new-instance p1, Lcom/apk/h30$for;

    invoke-direct {p1, p0}, Lcom/apk/h30$for;-><init>(Lcom/apk/h30;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method


# virtual methods
.method public break(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/apk/h30;->for:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/apk/h30;->try:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iget-object p4, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    new-instance v6, Lcom/apk/h30$try;

    invoke-virtual {p0}, Lcom/apk/h30;->goto()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/apk/h30$try;-><init>(Lcom/apk/h30;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/h30;->do()V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final case(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final catch(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/apk/h30;->else(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/apk/h30;->case(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 5
    iget-boolean v3, p0, Lcom/apk/h30;->strictfp:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    if-lez v2, :cond_1

    if-lez p1, :cond_1

    .line 6
    iput-boolean v4, p0, Lcom/apk/h30;->strictfp:Z

    int-to-float v3, p1

    div-float/2addr v3, v1

    int-to-float v6, v2

    div-float/2addr v6, v0

    div-float/2addr v3, v6

    .line 7
    iget v6, p0, Lcom/apk/h30;->try:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    .line 8
    iput v3, p0, Lcom/apk/h30;->try:F

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v6, v1, p1

    .line 10
    iget-object v7, p0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_2

    .line 11
    iget-object v3, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    sub-float/2addr v1, p1

    div-float/2addr v1, v9

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_3

    .line 13
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v4, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v9

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 16
    :cond_3
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 18
    iget-object v4, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 19
    iget-object v4, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v9

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 20
    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 22
    iget v0, p0, Lcom/apk/h30;->package:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_5

    .line 23
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    :cond_5
    sget-object p1, Lcom/apk/h30$new;->do:[I

    iget-object v0, p0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 27
    :cond_8
    iget-object p1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 28
    :cond_9
    iget-object p1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/apk/h30;->this()V

    return-void
.end method

.method public final do()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/h30;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/h30;->try()Landroid/graphics/Matrix;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v1, p0, Lcom/apk/h30;->throw:Lcom/apk/a30;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/h30;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/apk/h30;->throw:Lcom/apk/a30;

    invoke-interface {v1, v0}, Lcom/apk/a30;->do(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public final else(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public for()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h30;->if()Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/h30;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/h30;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public goto()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    .line 2
    iget-object v1, p0, Lcom/apk/h30;->super:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object v0, p0, Lcom/apk/h30;->super:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    .line 5
    iget-object v4, p0, Lcom/apk/h30;->super:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    iget-object v1, p0, Lcom/apk/h30;->super:[F

    const/4 v4, 0x3

    aget v1, v1, v4

    float-to-double v4, v1

    .line 7
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final if()Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/apk/h30;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/h30;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/apk/h30;->case(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_3

    .line 4
    sget-object v11, Lcom/apk/h30$new;->do:[I

    iget-object v12, p0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    .line 7
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 8
    :goto_1
    iput v9, p0, Lcom/apk/h30;->finally:I

    goto :goto_2

    .line 9
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-lez v11, :cond_4

    .line 10
    iput v1, p0, Lcom/apk/h30;->finally:I

    neg-float v4, v2

    goto :goto_2

    .line 11
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gez v11, :cond_5

    .line 12
    iput v8, p0, Lcom/apk/h30;->finally:I

    sub-float/2addr v4, v2

    goto :goto_2

    .line 13
    :cond_5
    iput v5, p0, Lcom/apk/h30;->finally:I

    const/4 v4, 0x0

    .line 14
    :goto_2
    iget-object v2, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/apk/h30;->else(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v11, v3, v2

    if-gtz v11, :cond_8

    .line 15
    sget-object v1, Lcom/apk/h30$new;->do:[I

    iget-object v5, p0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 17
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v10, v2

    goto :goto_4

    .line 18
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 19
    :goto_4
    iput v9, p0, Lcom/apk/h30;->extends:I

    goto :goto_5

    .line 20
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v3, v10

    if-lez v6, :cond_9

    .line 21
    iput v1, p0, Lcom/apk/h30;->extends:I

    neg-float v10, v3

    goto :goto_5

    .line 22
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v10, v2, v0

    .line 23
    iput v8, p0, Lcom/apk/h30;->extends:I

    goto :goto_5

    .line 24
    :cond_a
    iput v5, p0, Lcom/apk/h30;->extends:I

    .line 25
    :goto_5
    iget-object v0, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method public final new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/h30;->final:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/apk/h30;->final:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lcom/apk/h30;->final:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/h30;->catch(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/apk/h30;->private:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/apk/h30;->goto()F

    move-result v0

    iget v3, p0, Lcom/apk/h30;->for:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/apk/h30;->for()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    new-instance v9, Lcom/apk/h30$try;

    invoke-virtual {p0}, Lcom/apk/h30;->goto()F

    move-result v5

    iget v6, p0, Lcom/apk/h30;->for:F

    .line 7
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/apk/h30$try;-><init>(Lcom/apk/h30;FFFF)V

    .line 8
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/apk/h30;->goto()F

    move-result v0

    iget v3, p0, Lcom/apk/h30;->try:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/apk/h30;->for()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    new-instance v9, Lcom/apk/h30$try;

    invoke-virtual {p0}, Lcom/apk/h30;->goto()F

    move-result v5

    iget v6, p0, Lcom/apk/h30;->try:F

    .line 12
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/apk/h30$try;-><init>(Lcom/apk/h30;FFFF)V

    .line 13
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const/4 p1, 0x1

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/apk/h30;->default:Lcom/apk/h30$case;

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p1, Lcom/apk/h30$case;->do:Landroid/widget/OverScroller;

    invoke-virtual {p1, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 18
    iput-object v3, p0, Lcom/apk/h30;->default:Lcom/apk/h30$case;

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 19
    :goto_3
    iget-object v0, p0, Lcom/apk/h30;->break:Lcom/apk/y20;

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/apk/y20;->for()Z

    move-result p1

    .line 21
    iget-object v0, p0, Lcom/apk/h30;->break:Lcom/apk/y20;

    .line 22
    iget-boolean v3, v0, Lcom/apk/y20;->try:Z

    .line 23
    :try_start_0
    iget-object v4, v0, Lcom/apk/y20;->for:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    invoke-virtual {v0, p2}, Lcom/apk/y20;->new(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    if-nez p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/apk/h30;->break:Lcom/apk/y20;

    invoke-virtual {p1}, Lcom/apk/y20;->for()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    :goto_5
    if-nez v3, :cond_7

    .line 26
    iget-object v0, p0, Lcom/apk/h30;->break:Lcom/apk/y20;

    .line 27
    iget-boolean v0, v0, Lcom/apk/y20;->try:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 28
    :cond_8
    iput-boolean v1, p0, Lcom/apk/h30;->else:Z

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    move v1, p1

    .line 29
    :goto_7
    iget-object p1, p0, Lcom/apk/h30;->this:Landroid/view/GestureDetector;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public final this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget v0, p0, Lcom/apk/h30;->package:F

    .line 3
    iget-object v1, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4
    invoke-virtual {p0}, Lcom/apk/h30;->do()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/h30;->try()Landroid/graphics/Matrix;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Lcom/apk/h30;->throw:Lcom/apk/a30;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/apk/h30;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/apk/h30;->throw:Lcom/apk/a30;

    invoke-interface {v1, v0}, Lcom/apk/a30;->do(Landroid/graphics/RectF;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h30;->if()Z

    return-void
.end method

.method public final try()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h30;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/h30;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/apk/h30;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/apk/h30;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/h30;->private:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/h30;->catch(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h30;->this()V

    :goto_0
    return-void
.end method
