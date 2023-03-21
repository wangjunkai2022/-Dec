.class public Lcom/apk/me0;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/me0$for;
    }
.end annotation


# static fields
.field public static final switch:Landroid/view/animation/Interpolator;


# instance fields
.field public break:[I

.field public case:[F

.field public catch:I

.field public class:Landroid/view/VelocityTracker;

.field public const:F

.field public do:I

.field public else:[F

.field public final:F

.field public for:I

.field public goto:[I

.field public if:I

.field public final import:Lcom/apk/me0$for;

.field public native:Landroid/view/View;

.field public new:[F

.field public public:Z

.field public final return:Landroid/view/ViewGroup;

.field public final static:Ljava/lang/Runnable;

.field public super:I

.field public this:[I

.field public throw:I

.field public try:[F

.field public while:Landroidx/core/widget/ScrollerCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/me0$do;

    invoke-direct {v0}, Lcom/apk/me0$do;-><init>()V

    sput-object v0, Lcom/apk/me0;->switch:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/apk/me0$for;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/me0;->for:I

    .line 3
    new-instance v0, Lcom/apk/me0$if;

    invoke-direct {v0, p0}, Lcom/apk/me0$if;-><init>(Lcom/apk/me0;)V

    iput-object v0, p0, Lcom/apk/me0;->static:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 4
    iput-object p2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 8
    iput p3, p0, Lcom/apk/me0;->super:I

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/apk/me0;->if:I

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/apk/me0;->const:F

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/apk/me0;->final:F

    .line 12
    sget-object p2, Lcom/apk/me0;->switch:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public break(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    throw v1

    :cond_2
    return-object v1
.end method

.method public final case(III)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method public final catch(IIII)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2
    iget-object v0, p0, Lcom/apk/me0;->native:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/me0;->while(I)V

    return p1

    .line 5
    :cond_0
    iget p1, p0, Lcom/apk/me0;->final:F

    float-to-int p1, p1

    iget p2, p0, Lcom/apk/me0;->const:F

    float-to-int p2, p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/apk/me0;->case(III)I

    move-result p1

    .line 6
    iget p2, p0, Lcom/apk/me0;->final:F

    float-to-int p2, p2

    iget p3, p0, Lcom/apk/me0;->const:F

    float-to-int p3, p3

    invoke-virtual {p0, p4, p2, p3}, Lcom/apk/me0;->case(III)I

    move-result p2

    .line 7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 8
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v6, v0, v1

    add-int v7, p3, p4

    if-eqz p1, :cond_1

    int-to-float p3, v0

    int-to-float v0, v6

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    int-to-float v0, v7

    :goto_0
    div-float/2addr p3, v0

    if-eqz p2, :cond_2

    int-to-float p4, v1

    int-to-float v0, v6

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    int-to-float v0, v7

    :goto_1
    div-float/2addr p4, v0

    .line 11
    iget-object v0, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 12
    iget-object v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 13
    iget v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v0, v0, 0x3

    .line 14
    invoke-virtual {p0, v4, p1, v0}, Lcom/apk/me0;->goto(III)I

    move-result p1

    .line 15
    iget-object v0, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 16
    iget-object v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 17
    iget v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v0, v0, 0x8

    .line 18
    invoke-virtual {p0, v5, p2, v0}, Lcom/apk/me0;->goto(III)I

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    int-to-float p2, p2

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    float-to-int v6, p2

    .line 19
    iget-object v1, p0, Lcom/apk/me0;->while:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 20
    invoke-virtual {p0, p1}, Lcom/apk/me0;->while(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public class(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/me0;->catch:I

    const/4 v1, 0x1

    shl-int v2, v1, p2

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final const()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/apk/me0;->const:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    iget-object v0, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/apk/me0;->for:I

    .line 3
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/apk/me0;->final:F

    iget v2, p0, Lcom/apk/me0;->const:F

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/me0;->try(FFF)F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/apk/me0;->for:I

    .line 6
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/apk/me0;->final:F

    iget v3, p0, Lcom/apk/me0;->const:F

    .line 7
    invoke-virtual {p0, v1, v2, v3}, Lcom/apk/me0;->try(FFF)F

    move-result v1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/apk/me0;->this(FF)V

    return-void
.end method

.method public do()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/apk/me0;->for:I

    .line 2
    iget-object v0, p0, Lcom/apk/me0;->new:[F

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v0, p0, Lcom/apk/me0;->try:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    iget-object v0, p0, Lcom/apk/me0;->case:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 6
    iget-object v0, p0, Lcom/apk/me0;->else:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 7
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 8
    iget-object v0, p0, Lcom/apk/me0;->this:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    iget-object v0, p0, Lcom/apk/me0;->break:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 10
    iput v1, p0, Lcom/apk/me0;->catch:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final else(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->new:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    aput v1, v0, p1

    .line 3
    iget-object v0, p0, Lcom/apk/me0;->try:[F

    aput v1, v0, p1

    .line 4
    iget-object v0, p0, Lcom/apk/me0;->case:[F

    aput v1, v0, p1

    .line 5
    iget-object v0, p0, Lcom/apk/me0;->else:[F

    aput v1, v0, p1

    .line 6
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 7
    iget-object v0, p0, Lcom/apk/me0;->this:[I

    aput v1, v0, p1

    .line 8
    iget-object v0, p0, Lcom/apk/me0;->break:[I

    aput v1, v0, p1

    .line 9
    iget v0, p0, Lcom/apk/me0;->catch:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/apk/me0;->catch:I

    return-void
.end method

.method public final final(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apk/me0;->if(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/apk/me0;->if(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/apk/me0;->if(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/apk/me0;->if(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_5

    .line 5
    iget-object p1, p0, Lcom/apk/me0;->this:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 6
    iget-object p1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public for(II)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/me0;->catch:I

    const/4 v1, 0x1

    shl-int v2, v1, p2

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 2
    :goto_2
    iget-object v3, p0, Lcom/apk/me0;->case:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/apk/me0;->new:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 3
    iget-object v4, p0, Lcom/apk/me0;->else:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/apk/me0;->try:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v4, v3

    .line 4
    iget p1, p0, Lcom/apk/me0;->if:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_5
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/apk/me0;->if:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_7
    if-eqz p1, :cond_9

    .line 6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/apk/me0;->if:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    return v1

    :cond_9
    return v2
.end method

.method public final goto(III)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v2, v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v2, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v2, p2

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final if(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_3

    iget v0, p0, Lcom/apk/me0;->throw:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apk/me0;->break:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget-object v0, p0, Lcom/apk/me0;->this:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget v0, p0, Lcom/apk/me0;->if:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/apk/me0;->this:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_3

    iget p2, p0, Lcom/apk/me0;->if:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public import(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/me0;->do()V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_6

    const/4 v6, 0x3

    if-eq v0, v6, :cond_a

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/me0;->else(I)V

    goto/16 :goto_2

    .line 9
    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 10
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 11
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Lcom/apk/me0;->super(FFI)V

    .line 13
    iget v1, p0, Lcom/apk/me0;->do:I

    if-nez v1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/apk/me0;->goto:[I

    aget p1, p1, v0

    .line 15
    iget v0, p0, Lcom/apk/me0;->throw:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    .line 16
    iget-object p1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz p1, :cond_4

    goto/16 :goto_2

    .line 17
    :cond_4
    throw v2

    :cond_5
    if-ne v1, v4, :cond_e

    float-to-int v1, v6

    float-to-int p1, p1

    .line 18
    invoke-virtual {p0, v1, p1}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/apk/me0;->native:Landroid/view/View;

    if-ne p1, v1, :cond_e

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    goto/16 :goto_2

    .line 21
    :cond_6
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    .line 22
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 23
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 24
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 25
    iget-object v7, p0, Lcom/apk/me0;->new:[F

    aget v7, v7, v2

    sub-float v7, v4, v7

    .line 26
    iget-object v8, p0, Lcom/apk/me0;->try:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    .line 27
    invoke-virtual {p0, v7, v8, v2}, Lcom/apk/me0;->final(FFI)V

    .line 28
    iget v9, p0, Lcom/apk/me0;->do:I

    if-ne v9, v5, :cond_7

    goto :goto_1

    :cond_7
    float-to-int v4, v4

    float-to-int v6, v6

    .line 29
    invoke-virtual {p0, v4, v6}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {p0, v4, v7, v8}, Lcom/apk/me0;->new(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 31
    invoke-virtual {p0, v4, v2}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/apk/me0;->throw(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/apk/me0;->do()V

    goto :goto_2

    .line 34
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 36
    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 37
    invoke-virtual {p0, v0, v1, p1}, Lcom/apk/me0;->super(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/apk/me0;->break(II)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/apk/me0;->native:Landroid/view/View;

    if-ne v0, v1, :cond_c

    iget v1, p0, Lcom/apk/me0;->do:I

    if-ne v1, v4, :cond_c

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/apk/me0;->native(Landroid/view/View;I)Z

    .line 41
    :cond_c
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    aget p1, v0, p1

    .line 42
    iget v0, p0, Lcom/apk/me0;->throw:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_e

    .line 43
    iget-object p1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz p1, :cond_d

    goto :goto_2

    .line 44
    :cond_d
    throw v2

    .line 45
    :cond_e
    :goto_2
    iget p1, p0, Lcom/apk/me0;->do:I

    if-ne p1, v5, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3
.end method

.method public native(Landroid/view/View;I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->native:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/apk/me0;->for:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 2
    iget-object v2, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 3
    iget-object v3, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 4
    iget-object v4, v3, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 5
    iget v3, v3, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    .line 6
    invoke-virtual {v4, v3, p2}, Lcom/apk/me0;->class(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x2

    if-eqz v3, :cond_5

    .line 7
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 8
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 9
    invoke-virtual {v6, v1, p2}, Lcom/apk/me0;->class(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 11
    iput v1, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 13
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 14
    invoke-virtual {v6, v5, p2}, Lcom/apk/me0;->class(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 16
    iput v5, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    goto :goto_0

    .line 17
    :cond_2
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 18
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 19
    invoke-virtual {v6, v4, p2}, Lcom/apk/me0;->class(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 21
    iput v4, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    .line 22
    :cond_3
    :goto_0
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 23
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 24
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 25
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 26
    iget-object v6, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 27
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;

    .line 28
    iget-object v8, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 29
    iget v8, v8, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    .line 30
    invoke-interface {v7, v8}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;->new(I)V

    goto :goto_1

    .line 31
    :cond_4
    iput-boolean v1, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->do:Z

    .line 32
    :cond_5
    iget-object v6, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 33
    iget v7, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    if-eq v7, v1, :cond_9

    if-ne v7, v5, :cond_6

    goto :goto_2

    :cond_6
    if-ne v7, v4, :cond_7

    .line 34
    iget-object v2, v6, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 35
    invoke-virtual {v2, v1, p2}, Lcom/apk/me0;->for(II)Z

    move-result v2

    goto :goto_3

    :cond_7
    const/16 v2, 0xb

    if-ne v7, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 36
    :cond_9
    :goto_2
    iget-object v2, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 37
    iget-object v2, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 38
    invoke-virtual {v2, v5, p2}, Lcom/apk/me0;->for(II)Z

    move-result v2

    :goto_3
    xor-int/2addr v2, v1

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 39
    iput p2, p0, Lcom/apk/me0;->for:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_b

    .line 41
    iput-object p1, p0, Lcom/apk/me0;->native:Landroid/view/View;

    .line 42
    iput p2, p0, Lcom/apk/me0;->for:I

    .line 43
    iget-object p1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    if-eqz p1, :cond_a

    .line 44
    invoke-virtual {p0, v1}, Lcom/apk/me0;->while(I)V

    return v1

    :cond_a
    const/4 p1, 0x0

    .line 45
    throw p1

    .line 46
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-static {p2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return v0
.end method

.method public final new(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 2
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 3
    iget p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 5
    iget-object v2, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 6
    iget v2, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p3, p2

    .line 7
    iget p1, p0, Lcom/apk/me0;->if:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_6

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/apk/me0;->if:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    if-eqz v2, :cond_7

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/apk/me0;->if:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public final super(FFI)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/me0;->new:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p3, :cond_2

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 2
    new-array v2, v0, [F

    .line 3
    new-array v3, v0, [F

    .line 4
    new-array v4, v0, [F

    .line 5
    new-array v5, v0, [F

    .line 6
    new-array v6, v0, [I

    .line 7
    new-array v7, v0, [I

    .line 8
    new-array v0, v0, [I

    .line 9
    iget-object v8, p0, Lcom/apk/me0;->new:[F

    if-eqz v8, :cond_1

    .line 10
    array-length v9, v8

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v8, p0, Lcom/apk/me0;->try:[F

    array-length v9, v8

    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v8, p0, Lcom/apk/me0;->case:[F

    array-length v9, v8

    invoke-static {v8, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v8, p0, Lcom/apk/me0;->else:[F

    array-length v9, v8

    invoke-static {v8, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v8, p0, Lcom/apk/me0;->goto:[I

    array-length v9, v8

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v8, p0, Lcom/apk/me0;->this:[I

    array-length v9, v8

    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v8, p0, Lcom/apk/me0;->break:[I

    array-length v9, v8

    invoke-static {v8, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_1
    iput-object v2, p0, Lcom/apk/me0;->new:[F

    .line 18
    iput-object v3, p0, Lcom/apk/me0;->try:[F

    .line 19
    iput-object v4, p0, Lcom/apk/me0;->case:[F

    .line 20
    iput-object v5, p0, Lcom/apk/me0;->else:[F

    .line 21
    iput-object v6, p0, Lcom/apk/me0;->goto:[I

    .line 22
    iput-object v7, p0, Lcom/apk/me0;->this:[I

    .line 23
    iput-object v0, p0, Lcom/apk/me0;->break:[I

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/apk/me0;->new:[F

    iget-object v2, p0, Lcom/apk/me0;->case:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 25
    iget-object v0, p0, Lcom/apk/me0;->try:[F

    iget-object v2, p0, Lcom/apk/me0;->else:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 26
    iget-object v0, p0, Lcom/apk/me0;->goto:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 27
    iget-object v2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/apk/me0;->super:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    const/4 v1, 0x1

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Lcom/apk/me0;->super:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    const/4 v1, 0x4

    .line 29
    :cond_4
    iget-object v2, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Lcom/apk/me0;->super:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    const/4 v1, 0x2

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/apk/me0;->return:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Lcom/apk/me0;->super:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    const/16 v1, 0x8

    .line 31
    :cond_6
    aput v1, v0, p3

    .line 32
    iget p1, p0, Lcom/apk/me0;->catch:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/apk/me0;->catch:I

    return-void
.end method

.method public final this(FF)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/me0;->public:Z

    .line 2
    iget-object v1, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    iget-object v2, p0, Lcom/apk/me0;->native:Landroid/view/View;

    check-cast v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    if-eqz v1, :cond_8

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 5
    iget-object v4, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 6
    iget v5, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    cmpl-float p1, p1, v7

    if-gtz p1, :cond_0

    if-nez p1, :cond_5

    .line 7
    iget p1, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 8
    iget p2, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 9
    :cond_0
    iget-object p1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 10
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_3

    cmpg-float p2, p1, v7

    if-ltz p2, :cond_2

    cmpl-float p1, p1, v7

    if-nez p1, :cond_5

    .line 12
    iget p1, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 13
    iget p2, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 14
    :cond_2
    iget-object p1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 15
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0xa

    neg-int p1, p1

    goto :goto_0

    :cond_3
    and-int/lit8 p1, v5, 0x8

    if-eqz p1, :cond_5

    cmpg-float p1, p2, v7

    if-ltz p1, :cond_4

    cmpl-float p1, p2, v7

    if-nez p1, :cond_5

    .line 17
    iget p1, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 18
    iget p2, v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 19
    :cond_4
    iget-object p1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 20
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xa

    neg-int p1, p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 22
    :goto_1
    iget-object v2, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 23
    iget-object v2, v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 24
    iget-boolean v3, v2, Lcom/apk/me0;->public:Z

    if-eqz v3, :cond_7

    .line 25
    iget-object v3, v2, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    iget v4, v2, Lcom/apk/me0;->for:I

    .line 26
    invoke-static {v3, v4}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v2, Lcom/apk/me0;->class:Landroid/view/VelocityTracker;

    iget v5, v2, Lcom/apk/me0;->for:I

    .line 27
    invoke-static {v4, v5}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    .line 28
    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/apk/me0;->catch(IIII)Z

    .line 29
    iget-object p1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 30
    iput-boolean v8, p0, Lcom/apk/me0;->public:Z

    .line 31
    iget p1, p0, Lcom/apk/me0;->do:I

    if-ne p1, v0, :cond_6

    .line 32
    invoke-virtual {p0, v8}, Lcom/apk/me0;->while(I)V

    :cond_6
    return-void

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 34
    throw p1
.end method

.method public final throw(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 4
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/apk/me0;->case:[F

    aput v3, v5, v2

    .line 6
    iget-object v3, p0, Lcom/apk/me0;->else:[F

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final try(FFF)F
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method public while(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/me0;->do:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/apk/me0;->do:I

    .line 3
    iget-object v0, p0, Lcom/apk/me0;->import:Lcom/apk/me0$for;

    check-cast v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;

    .line 4
    iget-object v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 5
    iget-object v1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 8
    iget-object v1, v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;

    .line 10
    iget-object v3, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 11
    iget v3, v3, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 12
    invoke-interface {v2, p1, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;->do(IF)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/apk/me0;->native:Landroid/view/View;

    :cond_1
    return-void
.end method
