.class public Lcom/manhua/ui/widget/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field public do:Lcom/apk/h30;

.field public if:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/apk/h30;

    invoke-direct {p1, p0}, Lcom/apk/h30;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/manhua/ui/widget/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/apk/h30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    invoke-virtual {v0}, Lcom/apk/h30;->for()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v0, v0, Lcom/apk/h30;->class:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v0, v0, Lcom/apk/h30;->try:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v0, v0, Lcom/apk/h30;->new:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v0, v0, Lcom/apk/h30;->for:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    invoke-virtual {v0}, Lcom/apk/h30;->goto()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v0, v0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-boolean p1, v0, Lcom/apk/h30;->case:Z

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    invoke-virtual {p2}, Lcom/apk/h30;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/h30;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/h30;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/h30;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v1, v0, Lcom/apk/h30;->for:F

    iget v2, v0, Lcom/apk/h30;->new:F

    invoke-static {v1, v2, p1}, Lcom/apk/mu;->break(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/h30;->try:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v1, v0, Lcom/apk/h30;->for:F

    iget v2, v0, Lcom/apk/h30;->try:F

    invoke-static {v1, p1, v2}, Lcom/apk/mu;->break(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/h30;->new:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget v1, v0, Lcom/apk/h30;->new:F

    iget v2, v0, Lcom/apk/h30;->try:F

    invoke-static {p1, v1, v2}, Lcom/apk/mu;->break(FFF)V

    .line 3
    iput p1, v0, Lcom/apk/h30;->for:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->public:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v0, v0, Lcom/apk/h30;->this:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->return:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/apk/a30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->throw:Lcom/apk/a30;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/apk/b30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->import:Lcom/apk/b30;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/apk/c30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->while:Lcom/apk/c30;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/apk/d30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->static:Lcom/apk/d30;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/apk/e30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->switch:Lcom/apk/e30;

    return-void
.end method

.method public setOnViewDragListener(Lcom/apk/f30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->throws:Lcom/apk/f30;

    return-void
.end method

.method public setOnViewTapListener(Lcom/apk/g30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-object p1, v0, Lcom/apk/h30;->native:Lcom/apk/g30;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v1, v0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-virtual {v0}, Lcom/apk/h30;->do()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v1, v0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3
    invoke-virtual {v0}, Lcom/apk/h30;->do()V

    return-void
.end method

.method public setScale(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iget-object v1, v0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/apk/h30;->break(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->if:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    sget-object v2, Lcom/apk/i30;->do:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v1, :cond_2

    .line 5
    iput-object p1, v0, Lcom/apk/h30;->abstract:Landroid/widget/ImageView$ScaleType;

    .line 6
    invoke-virtual {v0}, Lcom/apk/h30;->update()V

    :cond_2
    :goto_1
    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix scale type is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput p1, v0, Lcom/apk/h30;->if:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/photoview/PhotoView;->do:Lcom/apk/h30;

    .line 2
    iput-boolean p1, v0, Lcom/apk/h30;->private:Z

    .line 3
    invoke-virtual {v0}, Lcom/apk/h30;->update()V

    return-void
.end method
