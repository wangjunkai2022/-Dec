.class public Lcom/apk/xs0;
.super Landroid/view/View;
.source "ColorWheelPalette.java"


# instance fields
.field public do:F

.field public for:F

.field public if:F

.field public new:Landroid/graphics/Paint;

.field public try:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/xs0;->new:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apk/xs0;->try:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/xs0;->if:F

    iget v1, p0, Lcom/apk/xs0;->for:F

    iget v2, p0, Lcom/apk/xs0;->do:F

    iget-object v3, p0, Lcom/apk/xs0;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2
    iget v0, p0, Lcom/apk/xs0;->if:F

    iget v1, p0, Lcom/apk/xs0;->for:F

    iget v2, p0, Lcom/apk/xs0;->do:F

    iget-object v3, p0, Lcom/apk/xs0;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    sub-int p4, p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p3, p3, p4

    iput p3, p0, Lcom/apk/xs0;->do:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    .line 4
    iput p1, p0, Lcom/apk/xs0;->if:F

    int-to-float p1, p2

    mul-float p1, p1, p4

    .line 5
    iput p1, p0, Lcom/apk/xs0;->for:F

    .line 6
    new-instance p1, Landroid/graphics/SweepGradient;

    iget p2, p0, Lcom/apk/xs0;->if:F

    iget p3, p0, Lcom/apk/xs0;->for:F

    const/4 p4, 0x7

    new-array p4, p4, [I

    fill-array-data p4, :array_0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 7
    iget-object p2, p0, Lcom/apk/xs0;->new:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    new-instance p1, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/apk/xs0;->if:F

    iget v2, p0, Lcom/apk/xs0;->for:F

    iget v3, p0, Lcom/apk/xs0;->do:F

    const/4 v4, -0x1

    const v5, 0xffffff

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 9
    iget-object p2, p0, Lcom/apk/xs0;->try:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method
