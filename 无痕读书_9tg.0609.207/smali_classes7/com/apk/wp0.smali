.class public Lcom/apk/wp0;
.super Landroid/animation/ValueAnimator;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/wp0$for;
    }
.end annotation


# instance fields
.field public do:[[Lcom/apk/wp0$for;

.field public if:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apk/xp0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/apk/xp0;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/wp0;->if:Ljava/lang/ref/WeakReference;

    const/4 p3, 0x2

    new-array v0, p3, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x1f4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    .line 8
    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 9
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr p2, v4

    int-to-float v4, v1

    div-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v5, v0

    div-float/2addr v5, v2

    float-to-int v5, v5

    new-array p3, p3, [I

    const/4 v6, 0x1

    aput v5, p3, v6

    const/4 v5, 0x0

    aput v4, p3, v5

    .line 10
    const-class v4, Lcom/apk/wp0$for;

    invoke-static {v4, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Lcom/apk/wp0$for;

    const/4 v4, 0x0

    .line 11
    :goto_0
    array-length v6, p3

    if-ge v4, v6, :cond_1

    const/4 v6, 0x0

    .line 12
    :goto_1
    aget-object v7, p3, v4

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 13
    new-instance v7, Lcom/apk/wp0$for;

    invoke-direct {v7, p0}, Lcom/apk/wp0$for;-><init>(Lcom/apk/wp0;)V

    int-to-float v8, v6

    mul-float v8, v8, v2

    float-to-int v9, v8

    int-to-float v10, v4

    mul-float v10, v10, v2

    float-to-int v11, v10

    .line 14
    invoke-virtual {p1, v9, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    iput v9, v7, Lcom/apk/wp0$for;->try:I

    add-float/2addr v8, v3

    .line 15
    iput v8, v7, Lcom/apk/wp0$for;->if:F

    add-float/2addr v10, p2

    .line 16
    iput v10, v7, Lcom/apk/wp0$for;->for:F

    .line 17
    iput v2, v7, Lcom/apk/wp0$for;->new:F

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/apk/wp0$for;->case:I

    .line 19
    aget-object v8, p3, v4

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    iput-object p3, p0, Lcom/apk/wp0;->do:[[Lcom/apk/wp0$for;

    .line 22
    new-instance p1, Lcom/apk/wp0$do;

    invoke-direct {p1, p0}, Lcom/apk/wp0$do;-><init>(Lcom/apk/wp0;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    new-instance p1, Lcom/apk/wp0$if;

    invoke-direct {p1, p0}, Lcom/apk/wp0$if;-><init>(Lcom/apk/wp0;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
