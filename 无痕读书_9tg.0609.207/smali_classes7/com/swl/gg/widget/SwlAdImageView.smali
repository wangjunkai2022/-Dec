.class public Lcom/swl/gg/widget/SwlAdImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SwlAdImageView.java"


# instance fields
.field public do:I

.field public final if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 3
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/swl/gg/widget/SwlAdImageView;->do:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42700000    # 60.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/swl/gg/widget/SwlAdImageView;->do:I

    .line 6
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43160000    # 150.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    sub-int/2addr p2, p1

    .line 8
    iput p2, p0, Lcom/swl/gg/widget/SwlAdImageView;->if:I

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    .line 4
    iget v1, p0, Lcom/swl/gg/widget/SwlAdImageView;->do:I

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 5
    iget v2, p0, Lcom/swl/gg/widget/SwlAdImageView;->if:I

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    const/high16 v1, 0x40200000    # 2.5f

    :cond_0
    mul-float p2, p2, v1

    float-to-int p2, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 7
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lcom/swl/gg/widget/SwlAdImageView;->do:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v7, p2

    move p2, p1

    move p1, v7

    .line 10
    :goto_0
    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method
