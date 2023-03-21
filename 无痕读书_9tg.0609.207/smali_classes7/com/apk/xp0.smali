.class public Lcom/apk/xp0;
.super Landroid/view/View;
.source "QBadgeView.java"

# interfaces
.implements Lcom/apk/vp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/xp0$do;
    }
.end annotation


# instance fields
.field public abstract:Landroid/graphics/Paint;

.field public break:Z

.field public case:F

.field public catch:I

.field public class:F

.field public const:F

.field public continue:Landroid/graphics/Paint;

.field public default:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public do:I

.field public else:I

.field public extends:Landroid/view/View;

.field public final:F

.field public finally:I

.field public for:Landroid/graphics/Bitmap;

.field public goto:Ljava/lang/String;

.field public if:I

.field public import:Landroid/graphics/RectF;

.field public native:Landroid/graphics/Path;

.field public new:Z

.field public package:I

.field public private:Landroid/text/TextPaint;

.field public public:Landroid/graphics/Paint$FontMetrics;

.field public return:Landroid/graphics/PointF;

.field public static:Landroid/graphics/PointF;

.field public strictfp:Lcom/apk/wp0;

.field public super:I

.field public switch:Landroid/graphics/PointF;

.field public this:Z

.field public throw:Z

.field public throws:Landroid/graphics/PointF;

.field public try:F

.field public volatile:Landroid/view/ViewGroup;

.field public while:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->native:Landroid/graphics/Path;

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    .line 7
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    .line 8
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->switch:Landroid/graphics/PointF;

    .line 9
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->throws:Landroid/graphics/PointF;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->default:Ljava/util/List;

    .line 11
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    .line 12
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 13
    iget-object v1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 14
    iget-object v1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 15
    iget-object v1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object v1, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/apk/xp0;->continue:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object v1, p0, Lcom/apk/xp0;->continue:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x17b1c0

    .line 22
    iput v1, p0, Lcom/apk/xp0;->do:I

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/apk/xp0;->if:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/xp0;->try:F

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/xp0;->case:F

    .line 26
    iput v0, p0, Lcom/apk/xp0;->else:I

    const v1, 0x800035

    .line 27
    iput v1, p0, Lcom/apk/xp0;->catch:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/xp0;->class:F

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/xp0;->const:F

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/apk/xp0;->final:F

    .line 31
    iput-boolean p1, p0, Lcom/apk/xp0;->break:Z

    .line 32
    iput-boolean v0, p0, Lcom/apk/xp0;->new:Z

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private getBadgeCircleRadius()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/apk/xp0;->case:F

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/apk/xp0;->case:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/apk/xp0;->case:F

    :goto_0
    mul-float v1, v1, v3

    add-float/2addr v1, v0

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public final break(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v2

    .line 3
    iget v4, p0, Lcom/apk/xp0;->super:I

    const/4 v5, 0x1

    const/high16 v6, -0x40400000    # -1.5f

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v2

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    int-to-float v0, v0

    int-to-float v2, v2

    const/high16 v3, 0x33000000

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2
    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/apk/xp0;->super:I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/xp0;->else(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public do(Landroid/view/View;)Lcom/apk/vp0;
    .locals 5

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 5
    iput-object p1, p0, Lcom/apk/xp0;->extends:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/apk/xp0$do;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/apk/xp0$do;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    new-instance v3, Lcom/apk/xp0$do;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/apk/xp0$do;-><init>(Lcom/apk/xp0;Landroid/content/Context;)V

    .line 13
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 15
    :cond_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-object p0

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView must have a parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/xp0;->volatile:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/apk/xp0;->extends:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    :goto_0
    return-void
.end method

.method public final for(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V
    .locals 6

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 4
    iget-object p3, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/apk/xp0;->case:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 5
    iget-object p3, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p3, Landroid/graphics/RectF;->right:F

    .line 6
    iget-object p3, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/apk/xp0;->case:F

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->bottom:F

    .line 7
    iget-object p3, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    .line 8
    iget-object v0, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-int v3, p3

    int-to-float v3, v3

    sub-float v4, v2, v3

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 10
    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v4, v3

    iput v5, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v2, v3

    .line 11
    iput v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    .line 12
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 13
    iget-object v0, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    :goto_1
    iget-object p3, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    iget-object p3, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/apk/xp0;->public:Landroid/graphics/Paint$FontMetrics;

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    iget-object v0, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xp0;->do:I

    return v0
.end method

.method public getBadgeGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xp0;->catch:I

    return v0
.end method

.method public getBadgeNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xp0;->else:I

    return v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xp0;->if:I

    return v0
.end method

.method public getDragCenter()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->extends:Landroid/view/View;

    return-object v0
.end method

.method public goto(I)Lcom/apk/vp0;
    .locals 2

    .line 1
    iput p1, p0, Lcom/apk/xp0;->else:I

    if-gez p1, :cond_0

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const-string p1, "99+"

    .line 3
    iput-object p1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    if-gt p1, v0, :cond_2

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lcom/apk/xp0;->else:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 8
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 9
    iget-object p1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 11
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    iget v0, p0, Lcom/apk/xp0;->try:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 13
    iget-object p1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 14
    iget-object p1, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/xp0;->public:Landroid/graphics/Paint$FontMetrics;

    .line 15
    iget-object v0, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/apk/xp0;->if()V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public final if()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/apk/xp0;->new:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/apk/xp0;->getBadgeCircleRadius()F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/apk/xp0;->case:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    .line 10
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v2

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v2

    iget-object v10, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    .line 13
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    :goto_0
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 14
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    .line 15
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/apk/xp0;->for:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public final new(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apk/xp0;->new(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/apk/xp0;->volatile:Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/apk/xp0;->volatile:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/xp0;->extends:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/apk/xp0;->volatile:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/xp0;->new(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/apk/xp0;->strictfp:Lcom/apk/wp0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/xp0;->strictfp:Lcom/apk/wp0;

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, v0, Lcom/apk/wp0;->do:[[Lcom/apk/wp0$for;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, v0, Lcom/apk/wp0;->do:[[Lcom/apk/wp0$for;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 5
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 7
    iget-object v6, v4, Lcom/apk/wp0$for;->else:Landroid/graphics/Paint;

    iget v7, v4, Lcom/apk/wp0$for;->try:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v6, v4, Lcom/apk/wp0$for;->if:F

    iget-object v7, v4, Lcom/apk/wp0$for;->do:Ljava/util/Random;

    iget v8, v4, Lcom/apk/wp0$for;->case:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3dcccccd    # 0.1f

    mul-float v7, v7, v8

    iget-object v9, v4, Lcom/apk/wp0$for;->do:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    mul-float v9, v9, v7

    add-float/2addr v9, v6

    iput v9, v4, Lcom/apk/wp0$for;->if:F

    .line 9
    iget v6, v4, Lcom/apk/wp0$for;->for:F

    iget-object v7, v4, Lcom/apk/wp0$for;->do:Ljava/util/Random;

    iget v9, v4, Lcom/apk/wp0$for;->case:I

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v8

    iget-object v8, v4, Lcom/apk/wp0$for;->do:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v8, v10

    mul-float v8, v8, v7

    add-float/2addr v8, v6

    iput v8, v4, Lcom/apk/wp0$for;->for:F

    .line 10
    iget v6, v4, Lcom/apk/wp0$for;->if:F

    iget v7, v4, Lcom/apk/wp0$for;->new:F

    mul-float v5, v5, v7

    sub-float/2addr v7, v5

    iget-object v4, v4, Lcom/apk/wp0$for;->else:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 12
    iget-boolean v0, p0, Lcom/apk/xp0;->break:Z

    invoke-virtual {p0, v0}, Lcom/apk/xp0;->break(Z)V

    .line 13
    iget-object v0, p0, Lcom/apk/xp0;->abstract:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apk/xp0;->do:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/apk/xp0;->continue:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/apk/xp0;->continue:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    iget v1, p0, Lcom/apk/xp0;->if:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 18
    invoke-direct {p0}, Lcom/apk/xp0;->getBadgeCircleRadius()F

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/apk/xp0;->switch:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    .line 20
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 21
    iget-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 23
    :goto_2
    iget v2, p0, Lcom/apk/xp0;->catch:I

    const/high16 v3, 0x40000000    # 2.0f

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    .line 24
    :sswitch_0
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->finally:I

    int-to-float v4, v4

    iget v5, p0, Lcom/apk/xp0;->class:F

    iget v6, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 25
    iget v1, p0, Lcom/apk/xp0;->package:I

    int-to-float v1, v1

    iget v4, p0, Lcom/apk/xp0;->const:F

    add-float/2addr v4, v6

    iget-object v5, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 26
    :sswitch_1
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->class:F

    iget v5, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    .line 27
    iget v1, p0, Lcom/apk/xp0;->package:I

    int-to-float v1, v1

    iget v4, p0, Lcom/apk/xp0;->const:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 28
    :sswitch_2
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->finally:I

    int-to-float v4, v4

    iget v5, p0, Lcom/apk/xp0;->class:F

    iget v6, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 29
    iget v1, p0, Lcom/apk/xp0;->const:F

    add-float/2addr v1, v6

    iget-object v4, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 30
    :sswitch_3
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->class:F

    iget v5, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    .line 31
    iget v1, p0, Lcom/apk/xp0;->const:F

    add-float/2addr v1, v5

    iget-object v4, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 32
    :sswitch_4
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->finally:I

    int-to-float v4, v4

    iget v5, p0, Lcom/apk/xp0;->class:F

    iget v6, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 33
    iget v1, p0, Lcom/apk/xp0;->package:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 34
    :sswitch_5
    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v4, p0, Lcom/apk/xp0;->class:F

    iget v5, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    .line 35
    iget v1, p0, Lcom/apk/xp0;->package:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 36
    :sswitch_6
    iget-object v1, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v2, p0, Lcom/apk/xp0;->finally:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 37
    iget v2, p0, Lcom/apk/xp0;->package:I

    int-to-float v2, v2

    iget v4, p0, Lcom/apk/xp0;->const:F

    iget v5, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 38
    :sswitch_7
    iget-object v1, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v2, p0, Lcom/apk/xp0;->finally:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 39
    iget v2, p0, Lcom/apk/xp0;->const:F

    iget v4, p0, Lcom/apk/xp0;->case:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/apk/xp0;->while:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 40
    :sswitch_8
    iget-object v1, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v2, p0, Lcom/apk/xp0;->finally:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 41
    iget v2, p0, Lcom/apk/xp0;->package:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 42
    :goto_3
    invoke-virtual {p0}, Lcom/apk/xp0;->try()V

    .line 43
    iget-object v1, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v1, v0}, Lcom/apk/xp0;->for(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_8
        0x31 -> :sswitch_7
        0x51 -> :sswitch_6
        0x800013 -> :sswitch_5
        0x800015 -> :sswitch_4
        0x800033 -> :sswitch_3
        0x800035 -> :sswitch_2
        0x800053 -> :sswitch_1
        0x800055 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/apk/xp0;->finally:I

    .line 3
    iput p2, p0, Lcom/apk/xp0;->package:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/apk/xp0;->this:Z

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 4
    iget-object v0, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/apk/xp0;->this:Z

    if-eqz v0, :cond_6

    .line 7
    iput-boolean v1, p0, Lcom/apk/xp0;->this:Z

    .line 8
    iget-boolean v0, p0, Lcom/apk/xp0;->throw:Z

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/apk/xp0;->static:Landroid/graphics/PointF;

    .line 10
    iget-object v3, p0, Lcom/apk/xp0;->goto:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/apk/xp0;->strictfp:Lcom/apk/wp0;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_6

    .line 12
    :cond_3
    invoke-virtual {p0, v2}, Lcom/apk/xp0;->else(Z)V

    .line 13
    new-instance v3, Lcom/apk/wp0;

    .line 14
    iget-object v4, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/apk/xp0;->import:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 17
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0}, Lcom/apk/xp0;->getBadgeCircleRadius()F

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/apk/xp0;->for(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    .line 19
    invoke-direct {v3, v4, v0, p0}, Lcom/apk/wp0;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/apk/xp0;)V

    iput-object v3, p0, Lcom/apk/xp0;->strictfp:Lcom/apk/wp0;

    .line 20
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/apk/xp0;->case()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 25
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/apk/xp0;->this:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public this(FFZ)Lcom/apk/vp0;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    iput p1, p0, Lcom/apk/xp0;->class:F

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p1

    :cond_1
    iput p2, p0, Lcom/apk/xp0;->const:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public final try()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    iget-object v1, p0, Lcom/apk/xp0;->switch:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/apk/xp0;->return:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 3
    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method
