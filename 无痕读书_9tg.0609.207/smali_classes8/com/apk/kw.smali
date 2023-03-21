.class public Lcom/apk/kw;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/kw$case;,
        Lcom/apk/kw$try;
    }
.end annotation


# instance fields
.field public abstract:Z

.field public break:Lcom/apk/aw;

.field public case:Z

.field public final catch:Landroid/graphics/Matrix;

.field public final class:Landroid/graphics/Matrix;

.field public final const:Landroid/graphics/Matrix;

.field public continue:Z

.field public default:Lcom/apk/kw$case;

.field public do:Landroid/view/animation/Interpolator;

.field public else:Z

.field public extends:I

.field public final final:Landroid/graphics/RectF;

.field public finally:I

.field public for:F

.field public goto:Landroid/widget/ImageView;

.field public if:I

.field public implements:F

.field public import:Lcom/apk/dw;

.field public instanceof:F

.field public interface:Z

.field public native:Lcom/apk/iw;

.field public new:F

.field public package:F

.field public private:Z

.field public protected:Landroid/widget/ImageView$ScaleType;

.field public public:Landroid/view/View$OnClickListener;

.field public return:Landroid/view/View$OnLongClickListener;

.field public static:Lcom/apk/fw;

.field public strictfp:Z

.field public final super:[F

.field public switch:Lcom/apk/gw;

.field public this:Landroid/view/GestureDetector;

.field public throw:Lcom/apk/cw;

.field public throws:Lcom/apk/hw;

.field public transient:Lcom/apk/bw;

.field public try:F

.field public volatile:Z

.field public while:Lcom/apk/ew;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/apk/kw;->do:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    .line 3
    iput v0, p0, Lcom/apk/kw;->if:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/apk/kw;->for:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 5
    iput v0, p0, Lcom/apk/kw;->new:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 6
    iput v0, p0, Lcom/apk/kw;->try:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/apk/kw;->case:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/apk/kw;->else:Z

    .line 9
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    .line 10
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/apk/kw;->class:Landroid/graphics/Matrix;

    .line 11
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/apk/kw;->final:Landroid/graphics/RectF;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 13
    iput-object v2, p0, Lcom/apk/kw;->super:[F

    const/4 v2, 0x2

    .line 14
    iput v2, p0, Lcom/apk/kw;->extends:I

    .line 15
    iput v2, p0, Lcom/apk/kw;->finally:I

    .line 16
    iput-boolean v0, p0, Lcom/apk/kw;->volatile:Z

    .line 17
    iput-boolean v1, p0, Lcom/apk/kw;->interface:Z

    .line 18
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    .line 19
    new-instance v0, Lcom/apk/kw$do;

    invoke-direct {v0, p0}, Lcom/apk/kw$do;-><init>(Lcom/apk/kw;)V

    iput-object v0, p0, Lcom/apk/kw;->transient:Lcom/apk/bw;

    .line 20
    iput-object p1, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 22
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 23
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/apk/kw;->package:F

    .line 25
    new-instance v0, Lcom/apk/aw;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/kw;->transient:Lcom/apk/bw;

    invoke-direct {v0, v1, v2}, Lcom/apk/aw;-><init>(Landroid/content/Context;Lcom/apk/bw;)V

    iput-object v0, p0, Lcom/apk/kw;->break:Lcom/apk/aw;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/apk/kw$if;

    invoke-direct {v1, p0}, Lcom/apk/kw$if;-><init>(Lcom/apk/kw;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/apk/kw;->this:Landroid/view/GestureDetector;

    .line 27
    new-instance p1, Lcom/apk/kw$for;

    invoke-direct {p1, p0}, Lcom/apk/kw$for;-><init>(Lcom/apk/kw;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method


# virtual methods
.method public final break(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/apk/kw;->throw:Lcom/apk/cw;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/kw;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/kw;->throw:Lcom/apk/cw;

    check-cast v0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->do(Landroid/graphics/RectF;)V

    :cond_0
    return-void
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

.method public catch(FFFZ)V
    .locals 7

    if-eqz p4, :cond_0

    .line 1
    iget-object p4, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    new-instance v6, Lcom/apk/kw$try;

    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/apk/kw$try;-><init>(Lcom/apk/kw;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 3
    invoke-virtual {p0}, Lcom/apk/kw;->do()V

    :goto_0
    return-void
.end method

.method public final class(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/apk/kw;->else(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/apk/kw;->case(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 6
    iget-object v5, p0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 7
    iget-object v3, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    iget-object v4, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v4, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 16
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    iget v7, p0, Lcom/apk/kw;->package:F

    float-to-int v7, v7

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_4

    .line 19
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    :cond_4
    sget-object v7, Lcom/apk/kw$new;->do:[I

    iget-object v9, p0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    const/4 p1, 0x2

    if-eq v7, p1, :cond_7

    const/4 p1, 0x3

    if-eq v7, p1, :cond_6

    const/4 p1, 0x4

    if-eq v7, p1, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    cmpl-float v7, p1, v1

    if-lez v7, :cond_9

    mul-float v7, p1, v8

    div-float/2addr v7, v2

    mul-float v1, v1, v8

    div-float/2addr v1, v0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_9

    .line 24
    iput-boolean v9, p0, Lcom/apk/kw;->interface:Z

    .line 25
    iget-object v1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/RectF;

    mul-float p1, p1, v3

    invoke-direct {v2, v5, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v4, v2, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/apk/kw;->this()V

    return-void
.end method

.method public final do()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/kw;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/kw;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kw;->break(Landroid/graphics/Matrix;)V

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
    invoke-virtual {p0}, Lcom/apk/kw;->if()Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/kw;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kw;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public goto()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    .line 2
    iget-object v1, p0, Lcom/apk/kw;->super:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object v0, p0, Lcom/apk/kw;->super:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    .line 5
    iget-object v4, p0, Lcom/apk/kw;->super:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    iget-object v1, p0, Lcom/apk/kw;->super:[F

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
    invoke-virtual {p0}, Lcom/apk/kw;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kw;->new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

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
    iget-object v4, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/apk/kw;->case(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_3

    .line 4
    iget v11, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_3

    .line 5
    sget-object v11, Lcom/apk/kw$new;->do:[I

    iget-object v12, p0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 7
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    .line 8
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 9
    :goto_1
    iput v9, p0, Lcom/apk/kw;->finally:I

    goto :goto_2

    .line 10
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-ltz v11, :cond_4

    .line 11
    iput v1, p0, Lcom/apk/kw;->finally:I

    neg-float v4, v2

    goto :goto_2

    .line 12
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_5

    .line 13
    iput v8, p0, Lcom/apk/kw;->finally:I

    sub-float/2addr v4, v2

    goto :goto_2

    .line 14
    :cond_5
    iput v6, p0, Lcom/apk/kw;->finally:I

    const/4 v4, 0x0

    .line 15
    :goto_2
    iget-object v2, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/apk/kw;->else(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v11, v3, v2

    if-gtz v11, :cond_8

    .line 16
    iget v11, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_8

    .line 17
    sget-object v1, Lcom/apk/kw$new;->do:[I

    iget-object v6, p0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 18
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 19
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v10, v2

    goto :goto_4

    .line 20
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 21
    :goto_4
    iput v9, p0, Lcom/apk/kw;->extends:I

    goto :goto_5

    .line 22
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v10

    if-ltz v5, :cond_9

    .line 23
    iput v1, p0, Lcom/apk/kw;->extends:I

    neg-float v10, v3

    goto :goto_5

    .line 24
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_a

    sub-float v10, v2, v0

    .line 25
    iput v8, p0, Lcom/apk/kw;->extends:I

    goto :goto_5

    .line 26
    :cond_a
    iput v6, p0, Lcom/apk/kw;->extends:I

    .line 27
    :goto_5
    iget-object v0, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method public final new(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/kw;->final:Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/apk/kw;->final:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lcom/apk/kw;->final:Landroid/graphics/RectF;

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
    iget-object p1, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/kw;->class(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/apk/kw;->volatile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

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
    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/apk/kw;->implements:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/apk/kw;->instanceof:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6
    iget-boolean v3, p0, Lcom/apk/kw;->interface:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    cmpl-float v3, v0, p1

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 7
    :goto_1
    iput-boolean v3, p0, Lcom/apk/kw;->continue:Z

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 8
    :goto_2
    iput-boolean p1, p0, Lcom/apk/kw;->strictfp:Z

    goto/16 :goto_6

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_5

    cmpl-float v3, v0, p1

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/apk/kw;->continue:Z

    .line 10
    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v3

    float-to-double v5, v3

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_6

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/apk/kw;->strictfp:Z

    goto/16 :goto_6

    .line 11
    :cond_7
    iput-boolean v1, p0, Lcom/apk/kw;->private:Z

    .line 12
    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v0

    iget v3, p0, Lcom/apk/kw;->for:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 13
    invoke-virtual {p0}, Lcom/apk/kw;->for()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 14
    new-instance v9, Lcom/apk/kw$try;

    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v5

    iget v6, p0, Lcom/apk/kw;->for:F

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/apk/kw$try;-><init>(Lcom/apk/kw;FFFF)V

    .line 16
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 17
    :cond_8
    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v0

    iget v3, p0, Lcom/apk/kw;->try:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    .line 18
    invoke-virtual {p0}, Lcom/apk/kw;->for()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 19
    new-instance v9, Lcom/apk/kw$try;

    invoke-virtual {p0}, Lcom/apk/kw;->goto()F

    move-result v5

    iget v6, p0, Lcom/apk/kw;->try:F

    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/apk/kw$try;-><init>(Lcom/apk/kw;FFFF)V

    .line 21
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_5
    const/4 p1, 0x1

    goto :goto_7

    .line 22
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apk/kw;->implements:F

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/apk/kw;->instanceof:F

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/apk/kw;->default:Lcom/apk/kw$case;

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, v0, Lcom/apk/kw$case;->do:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 27
    iput-object v3, p0, Lcom/apk/kw;->default:Lcom/apk/kw$case;

    :cond_a
    if-eqz p1, :cond_b

    .line 28
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    :goto_6
    const/4 p1, 0x0

    .line 29
    :goto_7
    iget-object v0, p0, Lcom/apk/kw;->break:Lcom/apk/aw;

    if-eqz v0, :cond_10

    .line 30
    invoke-virtual {v0}, Lcom/apk/aw;->for()Z

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/apk/kw;->break:Lcom/apk/aw;

    .line 32
    iget-boolean v3, v0, Lcom/apk/aw;->try:Z

    .line 33
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v2, :cond_c

    .line 34
    iget-object v4, v0, Lcom/apk/aw;->for:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    :cond_c
    invoke-virtual {v0, p2}, Lcom/apk/aw;->new(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    nop

    :goto_8
    if-nez p1, :cond_d

    .line 36
    iget-object p1, p0, Lcom/apk/kw;->break:Lcom/apk/aw;

    invoke-virtual {p1}, Lcom/apk/aw;->for()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_9

    :cond_d
    const/4 p1, 0x0

    :goto_9
    if-nez v3, :cond_e

    .line 37
    iget-object v0, p0, Lcom/apk/kw;->break:Lcom/apk/aw;

    .line 38
    iget-boolean v0, v0, Lcom/apk/aw;->try:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_a
    if-eqz p1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 39
    :cond_f
    iput-boolean v1, p0, Lcom/apk/kw;->else:Z

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    move v1, p1

    .line 40
    :goto_b
    iget-object p1, p0, Lcom/apk/kw;->this:Landroid/view/GestureDetector;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public final this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget v0, p0, Lcom/apk/kw;->package:F

    .line 3
    iget-object v1, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4
    invoke-virtual {p0}, Lcom/apk/kw;->do()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/kw;->try()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kw;->break(Landroid/graphics/Matrix;)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/kw;->if()Z

    return-void
.end method

.method public final try()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/kw;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/kw;->catch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/apk/kw;->class:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/apk/kw;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/kw;->volatile:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/kw;->class(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/kw;->this()V

    :goto_0
    return-void
.end method
