.class public Lcom/biquge/ebook/app/widget/CircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircleImageView.java"


# static fields
.field public static final return:Landroid/widget/ImageView$ScaleType;

.field public static final static:Landroid/graphics/Bitmap$Config;


# instance fields
.field public break:Landroid/graphics/Bitmap;

.field public final case:Landroid/graphics/Paint;

.field public catch:Landroid/graphics/BitmapShader;

.field public class:I

.field public const:I

.field public final do:Landroid/graphics/RectF;

.field public else:I

.field public final:F

.field public final for:Landroid/graphics/Matrix;

.field public goto:I

.field public final if:Landroid/graphics/RectF;

.field public import:Z

.field public native:Z

.field public final new:Landroid/graphics/Paint;

.field public public:Z

.field public super:F

.field public this:I

.field public throw:Landroid/graphics/ColorFilter;

.field public final try:Landroid/graphics/Paint;

.field public while:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/biquge/ebook/app/widget/CircleImageView;->return:Landroid/widget/ImageView$ScaleType;

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/biquge/ebook/app/widget/CircleImageView;->static:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->for:Landroid/graphics/Matrix;

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 8
    iput v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    .line 9
    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    .line 10
    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    .line 11
    sget-object v2, Lcom/biquge/ebook/app/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->native:Z

    const/4 v1, 0x3

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    sget-object p1, Lcom/biquge/ebook/app/widget/CircleImageView;->return:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->while:Z

    .line 19
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->import:Z

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    .line 21
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->import:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final for()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->while:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->import:Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 6
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->catch:Landroid/graphics/BitmapShader;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->catch:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->const:I

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->class:I

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    .line 24
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    add-float v6, v1, v3

    add-float/2addr v3, v2

    invoke-direct {v4, v1, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->super:F

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 28
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->native:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    if-lez v0, :cond_3

    .line 29
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->final:F

    .line 31
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 32
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->throw:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->for:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 34
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->class:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->const:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->const:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 36
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->class:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    move v3, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->class:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->const:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    .line 39
    :goto_0
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->for:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->for:Landroid/graphics/Matrix;

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 41
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->catch:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->for:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->throw:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/CircleImageView;->return:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final if()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->public:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_2
    :try_start_0
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 7
    sget-object v2, Lcom/biquge/ebook/app/widget/CircleImageView;->static:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/16 v4, 0x64

    if-gtz v2, :cond_4

    const/16 v2, 0x64

    :cond_4
    if-gtz v3, :cond_5

    const/16 v3, 0x64

    .line 10
    :cond_5
    sget-object v4, Lcom/biquge/ebook/app/widget/CircleImageView;->static:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    :goto_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    .line 16
    :goto_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->public:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->break:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->final:F

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->do:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->final:F

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->if:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->super:F

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->else:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->try:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->native:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->native:Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->goto:I

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->throw:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->throw:Landroid/graphics/ColorFilter;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->new:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->public:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->public:Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->if()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->this:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/CircleImageView;->case:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/CircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->if()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->if()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->if()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->if()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/CircleImageView;->for()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/CircleImageView;->return:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
