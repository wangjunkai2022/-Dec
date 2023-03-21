.class public Lcom/swl/gg/sdk/core/widget/TrNiceImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "TrNiceImageView.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I

.field public const:I

.field public do:Landroid/content/Context;

.field public else:I

.field public final:Landroid/graphics/Xfermode;

.field public for:Z

.field public goto:I

.field public if:Z

.field public import:[F

.field public native:[F

.field public new:I

.field public public:Landroid/graphics/RectF;

.field public return:Landroid/graphics/RectF;

.field public static:Landroid/graphics/Paint;

.field public super:I

.field public switch:Landroid/graphics/Path;

.field public this:I

.field public throw:I

.field public throws:Landroid/graphics/Path;

.field public try:I

.field public while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    .line 3
    iput v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else:I

    .line 4
    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    .line 5
    sget-object v1, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 8
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_is_cover_src:I

    if-ne v1, v2, :cond_0

    .line 9
    iget-boolean v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for:Z

    goto/16 :goto_1

    .line 10
    :cond_0
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_is_circle:I

    if-ne v1, v2, :cond_1

    .line 11
    iget-boolean v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    goto/16 :goto_1

    .line 12
    :cond_1
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_border_width:I

    if-ne v1, v2, :cond_2

    .line 13
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    goto/16 :goto_1

    .line 14
    :cond_2
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_border_color:I

    if-ne v1, v2, :cond_3

    .line 15
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    goto/16 :goto_1

    .line 16
    :cond_3
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_inner_border_width:I

    if-ne v1, v2, :cond_4

    .line 17
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    goto :goto_1

    .line 18
    :cond_4
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_inner_border_color:I

    if-ne v1, v2, :cond_5

    .line 19
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else:I

    goto :goto_1

    .line 20
    :cond_5
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_corner_radius:I

    if-ne v1, v2, :cond_6

    .line 21
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    goto :goto_1

    .line 22
    :cond_6
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_corner_top_left_radius:I

    if-ne v1, v2, :cond_7

    .line 23
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->this:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->this:I

    goto :goto_1

    .line 24
    :cond_7
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_corner_top_right_radius:I

    if-ne v1, v2, :cond_8

    .line 25
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->break:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->break:I

    goto :goto_1

    .line 26
    :cond_8
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_corner_bottom_left_radius:I

    if-ne v1, v2, :cond_9

    .line 27
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->catch:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->catch:I

    goto :goto_1

    .line 28
    :cond_9
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_corner_bottom_right_radius:I

    if-ne v1, v2, :cond_a

    .line 29
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->class:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->class:I

    goto :goto_1

    .line 30
    :cond_a
    sget v2, Lcom/swl/gg/sdk/R$styleable;->TrNiceImageView_mask_color:I

    if-ne v1, v2, :cond_b

    .line 31
    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->const:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->const:I

    :cond_b
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p2, p1, [F

    .line 33
    iput-object p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->import:[F

    new-array p1, p1, [F

    .line 34
    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->native:[F

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->return:Landroid/graphics/RectF;

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_d

    .line 40
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->final:Landroid/graphics/Xfermode;

    goto :goto_2

    .line 41
    :cond_d
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->final:Landroid/graphics/Xfermode;

    .line 42
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throws:Landroid/graphics/Path;

    .line 43
    :goto_2
    invoke-virtual {p0}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for()V

    .line 44
    iget-boolean p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-nez p1, :cond_e

    .line 45
    iput v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    :cond_e
    return-void
.end method

.method public static if(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public final case(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for()V

    .line 3
    invoke-virtual {p0}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final else()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->return:Landroid/graphics/RectF;

    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public final for()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->import:[F

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 4
    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    int-to-float v3, v3

    aput v3, v0, v2

    .line 5
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->native:[F

    iget v4, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->import:[F

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->this:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    aput v3, v0, v2

    .line 7
    iget v5, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->break:I

    int-to-float v5, v5

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v7, 0x2

    aput v5, v0, v7

    .line 8
    iget v8, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->class:I

    int-to-float v8, v8

    const/4 v9, 0x5

    aput v8, v0, v9

    const/4 v10, 0x4

    aput v8, v0, v10

    .line 9
    iget v11, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->catch:I

    int-to-float v11, v11

    const/4 v12, 0x7

    aput v11, v0, v12

    const/4 v13, 0x6

    aput v11, v0, v13

    .line 10
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->native:[F

    iget v14, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    int-to-float v14, v14

    div-float/2addr v14, v1

    sub-float/2addr v3, v14

    aput v3, v0, v4

    aput v3, v0, v2

    sub-float/2addr v5, v14

    .line 11
    aput v5, v0, v6

    aput v5, v0, v7

    sub-float/2addr v8, v14

    .line 12
    aput v8, v0, v9

    aput v8, v0, v10

    sub-float/2addr v11, v14

    .line 13
    aput v11, v0, v12

    aput v11, v0, v13

    :cond_2
    return-void
.end method

.method public final new(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2
    iget-boolean v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v3

    iget v5, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v4, v4, v6

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 4
    iget v7, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    sub-int v3, v7, v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v6

    int-to-float v5, v7

    div-float/2addr v3, v5

    div-float/2addr v0, v2

    div-float/2addr v5, v2

    .line 5
    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 8
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-boolean v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->while:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->native:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->final:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-gt v0, v3, :cond_2

    .line 16
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throws:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 18
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throws:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 19
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throws:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->const:I

    if-eqz v0, :cond_3

    .line 22
    iget-object v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    iget-boolean v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-eqz v0, :cond_5

    .line 26
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    if-lez v0, :cond_4

    .line 27
    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->while:F

    int-to-float v4, v0

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try(Landroid/graphics/Canvas;IIF)V

    .line 28
    :cond_4
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    if-lez v0, :cond_6

    .line 29
    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else:I

    iget v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->while:F

    iget v4, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try(Landroid/graphics/Canvas;IIF)V

    goto :goto_2

    .line 30
    :cond_5
    iget v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    if-lez v0, :cond_6

    .line 31
    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    iget-object v2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->return:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->import:[F

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new(II)V

    .line 33
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 34
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    .line 3
    iput p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    .line 4
    invoke-virtual {p0}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else()V

    .line 5
    iget-boolean p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    iget p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->while:F

    .line 7
    iget-object p3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    iget p4, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    int-to-float p4, p4

    div-float/2addr p4, p2

    sub-float v0, p4, p1

    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    sub-float p2, v1, p1

    add-float/2addr p4, p1

    add-float/2addr v1, p1

    invoke-virtual {p3, v0, p2, p4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    iget p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    int-to-float p2, p2

    iget p3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-boolean p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->for:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->return:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->public:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->try:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setCornerBottomLeftRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->catch:I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setCornerBottomRightRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->class:I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->goto:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setCornerTopLeftRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->this:I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setCornerTopRightRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->break:I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case(Z)V

    return-void
.end method

.method public setInnerBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->else:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setInnerBorderWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->do:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    .line 2
    iget-boolean p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->if:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->case:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->const:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final try(Landroid/graphics/Canvas;IIF)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->new(II)V

    .line 2
    iget-object p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget p3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->super:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->throw:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 3
    iget-object p2, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->switch:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/swl/gg/sdk/core/widget/TrNiceImageView;->static:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
