.class public Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "DownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;
    }
.end annotation


# instance fields
.field public break:F

.field public case:I

.field public catch:F

.field public class:I

.field public const:I

.field public default:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public do:Landroid/graphics/Paint;

.field public else:F

.field public extends:[F

.field public final:F

.field public finally:[F

.field public for:I

.field public goto:F

.field public volatile if:Landroid/graphics/Paint;

.field public import:F

.field public native:Z

.field public new:I

.field public public:Landroid/graphics/RectF;

.field public return:Landroid/graphics/LinearGradient;

.field public static:Landroid/animation/ValueAnimator;

.field public super:F

.field public switch:Ljava/lang/CharSequence;

.field public this:I

.field public throw:F

.field public throws:I

.field public try:I

.field public while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->this:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 3
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 4
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->while:F

    const/high16 p2, 0x40c00000    # 6.0f

    .line 5
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->import:F

    const/4 p2, 0x3

    new-array v1, p2, [F

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->extends:[F

    new-array p2, p2, [F

    .line 7
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->finally:[F

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x64

    .line 9
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->class:I

    .line 10
    iput v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->const:I

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    .line 16
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    iput v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    const p2, 0x7f060048

    .line 21
    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    const-string p2, "#555555"

    .line 22
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->new:I

    const-string p2, "#bababa"

    .line 23
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    const-string p2, "#ffffff"

    .line 24
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    const/16 p2, 0xf

    .line 25
    invoke-virtual {p0, p2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    new-array p1, p1, [F

    .line 26
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->static:Landroid/animation/ValueAnimator;

    .line 27
    new-instance p2, Lcom/apk/vc;

    invoke-direct {p2, p0}, Lcom/apk/vc;-><init>(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    iget p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->this:I

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setBallStyle(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBallStyle(I)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->this:I

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_0

    :goto_0
    if-ge v2, v1, :cond_0

    new-array v4, v1, [F

    .line 4
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x2ee

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    aget v5, v3, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 8
    new-instance v5, Lcom/apk/wc;

    invoke-direct {v5, p0, v2}, Lcom/apk/wc;-><init>(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->default:Ljava/util/ArrayList;

    goto :goto_2

    .line 11
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v1, [I

    .line 12
    fill-array-data v4, :array_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    new-array v6, v1, [F

    .line 13
    iget v7, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throw:F

    aput v7, v6, v2

    iget v8, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->import:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    sub-float v8, v7, v8

    aput v8, v6, v3

    const/4 v8, 0x2

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x258

    .line 14
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 16
    aget v7, v4, v5

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    new-instance v7, Lcom/apk/xc;

    invoke-direct {v7, p0, v5}, Lcom/apk/xc;-><init>(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->default:Ljava/util/ArrayList;

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x46
        0x8c
        0xd2
    .end array-data
.end method


# virtual methods
.method public getBorderWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    return v0
.end method

.method public getButtonRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    return v0
.end method

.method public getMaxProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->class:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->const:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    return v0
.end method

.method public getTextCoverColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    return v0
.end method

.method public final if(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    .line 4
    iget-boolean v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget-boolean v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 8
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    :cond_4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v12, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_5

    goto :goto_4

    .line 15
    :cond_5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 17
    :cond_6
    iget v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->class:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    div-float/2addr v1, v2

    iput v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->final:F

    .line 18
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->new:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 20
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 22
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->final:F

    mul-float v4, v2, v3

    .line 25
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->public:Landroid/graphics/RectF;

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    iget-object v3, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->do:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 30
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/2addr v1, v10

    int-to-float v1, v1

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 31
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    const-string v2, ""

    .line 32
    iput-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    .line 33
    :cond_8
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 34
    iput v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throw:F

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    div-float/2addr v4, v3

    iput v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->super:F

    .line 36
    iget v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    if-eqz v4, :cond_d

    const/4 v5, 0x0

    if-eq v4, v12, :cond_a

    if-eq v4, v10, :cond_a

    if-eq v4, v9, :cond_9

    goto/16 :goto_7

    .line 37
    :cond_9
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget v6, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float/2addr v6, v3

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    if-ge v5, v9, :cond_e

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->super:F

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->import:F

    mul-float v2, v2, v3

    int-to-float v4, v5

    mul-float v2, v2, v4

    add-float/2addr v2, v1

    iget v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->while:F

    mul-float v1, v1, v4

    add-float/2addr v1, v2

    .line 41
    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throw:F

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->finally:[F

    aget v1, v1, v5

    iget v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->import:F

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->extends:[F

    aget v4, v4, v5

    mul-float v2, v2, v4

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->final:F

    mul-float v4, v4, v6

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v10

    int-to-float v6, v6

    div-float v8, v2, v3

    sub-float/2addr v6, v8

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v9, v8

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v10

    int-to-float v13, v13

    sub-float/2addr v8, v13

    add-float/2addr v8, v4

    div-float/2addr v8, v2

    cmpg-float v13, v4, v6

    if-gtz v13, :cond_b

    .line 48
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget v5, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_b
    cmpg-float v6, v6, v4

    if-gez v6, :cond_c

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_c

    .line 50
    new-instance v4, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    div-float v14, v6, v3

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    div-float v16, v6, v3

    const/16 v17, 0x0

    new-array v6, v10, [I

    iget v9, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    aput v9, v6, v5

    iget v9, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    aput v9, v6, v12

    new-array v9, v10, [F

    aput v8, v9, v5

    const v5, 0x3a83126f    # 0.001f

    add-float/2addr v8, v5

    aput v8, v9, v12

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->return:Landroid/graphics/LinearGradient;

    .line 51
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget v5, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->return:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6

    .line 53
    :cond_c
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget v5, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    :goto_6
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 56
    :cond_d
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    iget v5, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v4, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_e
    :goto_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->if:I

    .line 4
    iput v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    .line 5
    iget v0, p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->do:I

    int-to-float v0, v0

    .line 6
    iput v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;->for:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;

    iget v2, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    float-to-int v2, v2

    iget v3, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton$do;-><init>(Landroid/os/Parcelable;IILjava/lang/String;)V

    return-object v1
.end method

.method public setBackgroundSecondColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->new:I

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->goto:F

    return-void
.end method

.method public setBtnTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    return-void
.end method

.method public setButtonRadius(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    return-void
.end method

.method public setButtonRadius(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->else:F

    return-void
.end method

.method public setCurrentText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->switch:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setCurrentTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->if(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->class:I

    return-void
.end method

.method public setMinProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->const:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->break:F

    return-void
.end method

.method public setShowBorder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->native:Z

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->throws:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->default:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->default:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->default:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->try:I

    return-void
.end method

.method public setTextCoverColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->case:I

    return-void
.end method

.method public setmBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->for:I

    return-void
.end method
