.class public Lcom/apk/jw;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field public do:Lcom/apk/kw;

.field public if:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/apk/kw;

    invoke-direct {p1, p0}, Lcom/apk/kw;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    iget-object p1, p0, Lcom/apk/jw;->if:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/apk/jw;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    iput-object v1, p0, Lcom/apk/jw;->if:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/apk/kw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    invoke-virtual {v0}, Lcom/apk/kw;->for()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v0, v0, Lcom/apk/kw;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v0, v0, Lcom/apk/kw;->try:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v0, v0, Lcom/apk/kw;->new:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v0, v0, Lcom/apk/kw;->for:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    invoke-virtual {v0}, Lcom/apk/kw;->goto()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v0, v0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-boolean p1, v0, Lcom/apk/kw;->case:Z

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    invoke-virtual {p2}, Lcom/apk/kw;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/kw;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/kw;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/kw;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v1, v0, Lcom/apk/kw;->for:F

    iget v2, v0, Lcom/apk/kw;->new:F

    invoke-static {v1, v2, p1}, Lcom/apk/mu;->this(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/kw;->try:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v1, v0, Lcom/apk/kw;->for:F

    iget v2, v0, Lcom/apk/kw;->try:F

    invoke-static {v1, p1, v2}, Lcom/apk/mu;->this(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/kw;->new:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget v1, v0, Lcom/apk/kw;->new:F

    iget v2, v0, Lcom/apk/kw;->try:F

    invoke-static {p1, v1, v2}, Lcom/apk/mu;->this(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/kw;->for:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->public:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v0, v0, Lcom/apk/kw;->this:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->return:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/apk/cw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->throw:Lcom/apk/cw;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/apk/dw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->import:Lcom/apk/dw;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/apk/ew;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->while:Lcom/apk/ew;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/apk/fw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->static:Lcom/apk/fw;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/apk/gw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->switch:Lcom/apk/gw;

    return-void
.end method

.method public setOnViewDragListener(Lcom/apk/hw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->throws:Lcom/apk/hw;

    return-void
.end method

.method public setOnViewTapListener(Lcom/apk/iw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-object p1, v0, Lcom/apk/kw;->native:Lcom/apk/iw;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v1, v0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-virtual {v0}, Lcom/apk/kw;->do()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v1, v0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3
    invoke-virtual {v0}, Lcom/apk/kw;->do()V

    return-void
.end method

.method public setScale(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iget-object v1, v0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/apk/kw;->catch(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apk/jw;->if:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v3, Lcom/apk/lw;->do:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 4
    iget-object v1, v0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v1, :cond_3

    .line 5
    iput-object p1, v0, Lcom/apk/kw;->protected:Landroid/widget/ImageView$ScaleType;

    .line 6
    invoke-virtual {v0}, Lcom/apk/kw;->update()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput p1, v0, Lcom/apk/kw;->if:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 2
    iput-boolean p1, v0, Lcom/apk/kw;->volatile:Z

    .line 3
    invoke-virtual {v0}, Lcom/apk/kw;->update()V

    return-void
.end method
