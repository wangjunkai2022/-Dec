.class public Lcom/apk/ss;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ss$for;,
        Lcom/apk/ss$if;
    }
.end annotation


# static fields
.field public static extends:Z = false

.field public static finally:I = 0x1


# instance fields
.field public break:Landroid/view/View;

.field public case:I

.field public catch:Lcom/apk/vs;

.field public class:Lcom/apk/ts;

.field public const:Lcom/apk/ss$for;

.field public default:Ljava/lang/Runnable;

.field public do:B

.field public else:I

.field public final:I

.field public for:Landroid/view/View;

.field public goto:Z

.field public final if:Ljava/lang/String;

.field public import:Z

.field public native:Landroid/view/MotionEvent;

.field public new:I

.field public public:Lcom/apk/ws;

.field public return:I

.field public static:J

.field public super:I

.field public switch:Lcom/apk/xs;

.field public this:Z

.field public throw:Z

.field public throws:Z

.field public try:I

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 3
    iput-byte p3, p0, Lcom/apk/ss;->do:B

    const-string v0, "ptr-frame-"

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/apk/ss;->finally:I

    add-int/2addr v1, p3

    sput v1, Lcom/apk/ss;->finally:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ss;->if:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/apk/ss;->new:I

    .line 6
    iput v0, p0, Lcom/apk/ss;->try:I

    const/16 v1, 0xc8

    .line 7
    iput v1, p0, Lcom/apk/ss;->case:I

    const/16 v1, 0x3e8

    .line 8
    iput v1, p0, Lcom/apk/ss;->else:I

    .line 9
    iput-boolean p3, p0, Lcom/apk/ss;->goto:Z

    .line 10
    iput-boolean v0, p0, Lcom/apk/ss;->this:Z

    .line 11
    new-instance v1, Lcom/apk/vs;

    invoke-direct {v1}, Lcom/apk/vs;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    .line 13
    iput-boolean v0, p0, Lcom/apk/ss;->throw:Z

    .line 14
    iput v0, p0, Lcom/apk/ss;->while:I

    .line 15
    iput-boolean v0, p0, Lcom/apk/ss;->import:Z

    const/16 v1, 0x1f4

    .line 16
    iput v1, p0, Lcom/apk/ss;->return:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/apk/ss;->static:J

    .line 18
    iput-boolean v0, p0, Lcom/apk/ss;->throws:Z

    .line 19
    new-instance v1, Lcom/apk/ss$do;

    invoke-direct {v1, p0}, Lcom/apk/ss$do;-><init>(Lcom/apk/ss;)V

    iput-object v1, p0, Lcom/apk/ss;->default:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lcom/apk/xs;

    invoke-direct {v1}, Lcom/apk/xs;-><init>()V

    iput-object v1, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 21
    sget-object v1, Lcom/biquge/ebook/app/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 22
    iget v2, p0, Lcom/apk/ss;->new:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/ss;->new:I

    .line 23
    iget v1, p0, Lcom/apk/ss;->try:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/apk/ss;->try:I

    .line 24
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    const/4 v1, 0x7

    .line 25
    iget v2, v0, Lcom/apk/xs;->break:F

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 27
    iput v1, v0, Lcom/apk/xs;->break:F

    .line 28
    iget v0, p0, Lcom/apk/ss;->case:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/apk/ss;->case:I

    .line 29
    iget p3, p0, Lcom/apk/ss;->else:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/apk/ss;->else:I

    .line 30
    iget-object p3, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 31
    iget p3, p3, Lcom/apk/xs;->this:F

    const/4 v0, 0x6

    .line 32
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 33
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 34
    iput p3, v0, Lcom/apk/xs;->this:F

    .line 35
    iget v1, v0, Lcom/apk/xs;->else:I

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int p3, v1

    iput p3, v0, Lcom/apk/xs;->do:I

    const/4 p3, 0x4

    .line 36
    iget-boolean v0, p0, Lcom/apk/ss;->goto:Z

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/apk/ss;->goto:Z

    const/4 p3, 0x5

    .line 37
    iget-boolean v0, p0, Lcom/apk/ss;->this:Z

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/apk/ss;->this:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    :cond_0
    new-instance p1, Lcom/apk/ss$for;

    invoke-direct {p1, p0}, Lcom/apk/ss$for;-><init>(Lcom/apk/ss;)V

    iput-object p1, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/apk/ss;->final:I

    return-void
.end method

.method public static synthetic do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/ss;->this()V

    return-void
.end method


# virtual methods
.method public final break()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/ss;->return:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/apk/ss;->static:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-gtz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/ss;->this()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->default:Ljava/lang/Runnable;

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public case()V
    .locals 0

    return-void
.end method

.method public final catch()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->native:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lcom/apk/ss$if;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final class()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget-boolean v0, v0, Lcom/apk/xs;->catch:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    const/4 v1, 0x0

    iget v2, p0, Lcom/apk/ss;->else:I

    invoke-virtual {v0, v1, v2}, Lcom/apk/ss$for;->if(II)V

    :cond_0
    return-void
.end method

.method public final const()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v0}, Lcom/apk/xs;->for()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v0}, Lcom/apk/vs;->case()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1, p0}, Lcom/apk/us;->do(Lcom/apk/ss;)V

    .line 6
    :cond_2
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 8
    iput-byte v0, p0, Lcom/apk/ss;->do:B

    .line 9
    iget v1, p0, Lcom/apk/ss;->while:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/apk/ss;->while:I

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    goto/16 :goto_0

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/apk/ss;->native:Landroid/view/MotionEvent;

    .line 4
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/apk/xs;->if:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float v6, v3, v6

    .line 6
    iget v7, v5, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v7

    .line 7
    iget v8, v0, Lcom/apk/xs;->break:F

    div-float/2addr v7, v8

    .line 8
    iput v6, v0, Lcom/apk/xs;->for:F

    .line 9
    iput v7, v0, Lcom/apk/xs;->new:F

    .line 10
    invoke-virtual {v5, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 11
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 12
    iget v3, v0, Lcom/apk/xs;->for:F

    .line 13
    iget v0, v0, Lcom/apk/xs;->new:F

    .line 14
    iget-boolean v4, p0, Lcom/apk/ss;->throw:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/apk/ss;->import:Z

    if-nez v4, :cond_2

    .line 15
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/apk/ss;->final:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 17
    iget-object v3, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v3}, Lcom/apk/xs;->for()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    iput-boolean v2, p0, Lcom/apk/ss;->import:Z

    .line 19
    :cond_2
    iget-boolean v3, p0, Lcom/apk/ss;->import:Z

    if-eqz v3, :cond_3

    .line 20
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    .line 21
    iget-object v4, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v4}, Lcom/apk/xs;->if()Z

    move-result v4

    if-eqz v1, :cond_5

    .line 22
    iget-object v5, p0, Lcom/apk/ss;->class:Lcom/apk/ts;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/apk/ss;->for:Landroid/view/View;

    iget-object v7, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-interface {v5, p0, v6, v7}, Lcom/apk/ts;->if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 23
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    if-eqz v3, :cond_6

    if-nez v4, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    .line 24
    :cond_7
    invoke-virtual {p0, v0}, Lcom/apk/ss;->new(F)V

    return v2

    .line 25
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 27
    iput-boolean v1, v0, Lcom/apk/xs;->catch:Z

    .line 28
    invoke-virtual {v0}, Lcom/apk/xs;->if()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {p0, v1}, Lcom/apk/ss;->else(Z)V

    .line 30
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 31
    iget v3, v0, Lcom/apk/xs;->try:I

    iget v0, v0, Lcom/apk/xs;->goto:I

    if-eq v3, v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    .line 32
    invoke-virtual {p0}, Lcom/apk/ss;->catch()V

    return v2

    .line 33
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 34
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 35
    :cond_d
    iput-boolean v1, p0, Lcom/apk/ss;->throws:Z

    .line 36
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 37
    iput-boolean v2, v0, Lcom/apk/xs;->catch:Z

    .line 38
    iget v5, v0, Lcom/apk/xs;->try:I

    iput v5, v0, Lcom/apk/xs;->goto:I

    .line 39
    iget-object v0, v0, Lcom/apk/xs;->if:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    iget-object v0, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    .line 41
    iget-boolean v3, v0, Lcom/apk/ss$for;->for:Z

    if-eqz v3, :cond_10

    .line 42
    iget-object v3, v0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    .line 43
    iget-object v3, v0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v3, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 44
    :cond_e
    iget-object v3, v0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    .line 45
    iget-object v4, v3, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v4}, Lcom/apk/xs;->if()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/apk/ss;->for()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 46
    invoke-virtual {v3, v2}, Lcom/apk/ss;->else(Z)V

    .line 47
    :cond_f
    invoke-virtual {v0}, Lcom/apk/ss$for;->do()V

    .line 48
    :cond_10
    iput-boolean v1, p0, Lcom/apk/ss;->import:Z

    .line 49
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 50
    :cond_11
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final else(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/ss;->final()Z

    .line 2
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/apk/ss;->goto:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 5
    iget v2, v0, Lcom/apk/xs;->try:I

    invoke-virtual {v0}, Lcom/apk/xs;->do()I

    move-result v0

    if-le v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v0}, Lcom/apk/xs;->do()I

    move-result v0

    iget v1, p0, Lcom/apk/ss;->case:I

    invoke-virtual {p1, v0, v1}, Lcom/apk/ss$for;->if(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/apk/ss;->class()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne v0, p1, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lcom/apk/ss;->try(Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/apk/ss;->class()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final final()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 3
    iget v2, v0, Lcom/apk/xs;->try:I

    invoke-virtual {v0}, Lcom/apk/xs;->do()I

    move-result v0

    const/4 v3, 0x1

    if-le v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/apk/ss;->for()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 5
    iget v2, v0, Lcom/apk/xs;->try:I

    .line 6
    iget v0, v0, Lcom/apk/xs;->do:I

    if-lt v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    :cond_4
    const/4 v0, 0x3

    .line 7
    iput-byte v0, p0, Lcom/apk/ss;->do:B

    .line 8
    invoke-virtual {p0}, Lcom/apk/ss;->goto()V

    :cond_5
    return v1
.end method

.method public for()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/ss;->while:I

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ss$if;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apk/ss$if;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/apk/ss$if;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apk/ss$if;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/ss$if;

    invoke-direct {v0, p1}, Lcom/apk/ss$if;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/ss;->case:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ss;->else:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/ss;->super:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v0}, Lcom/apk/xs;->do()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget v0, v0, Lcom/apk/xs;->do:I

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget v0, v0, Lcom/apk/xs;->this:F

    return v0
.end method

.method public getResistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget v0, v0, Lcom/apk/xs;->break:F

    return v0
.end method

.method public final goto()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/ss;->static:J

    .line 2
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v0}, Lcom/apk/vs;->case()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p0}, Lcom/apk/us;->try(Lcom/apk/ss;)V

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/apk/ss;->class:Lcom/apk/ts;

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0, p0}, Lcom/apk/ts;->do(Lcom/apk/ss;)V

    :cond_4
    return-void
.end method

.method public if()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/ss;->else:I

    .line 2
    iget-byte v1, p0, Lcom/apk/ss;->do:B

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/apk/ss;->while:I

    const/4 v3, 0x2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/apk/ss;->while:I

    .line 4
    iput-byte v3, p0, Lcom/apk/ss;->do:B

    .line 5
    iget-object v1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v1}, Lcom/apk/vs;->case()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v1, p0}, Lcom/apk/vs;->for(Lcom/apk/ss;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    iget-object v2, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 8
    iget v2, v2, Lcom/apk/xs;->do:I

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/apk/ss$for;->if(II)V

    const/4 v0, 0x3

    .line 10
    iput-byte v0, p0, Lcom/apk/ss;->do:B

    .line 11
    invoke-virtual {p0}, Lcom/apk/ss;->goto()V

    :goto_0
    return-void
.end method

.method public final new(F)V
    .locals 14

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v0}, Lcom/apk/xs;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 3
    iget v0, v0, Lcom/apk/xs;->try:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 5
    iget v4, v3, Lcom/apk/xs;->try:I

    iput v4, v3, Lcom/apk/xs;->case:I

    .line 6
    iput v0, v3, Lcom/apk/xs;->try:I

    sub-int v4, v0, v4

    if-nez v4, :cond_3

    goto/16 :goto_b

    .line 7
    :cond_3
    iget-boolean v5, v3, Lcom/apk/xs;->catch:Z

    if-eqz v5, :cond_5

    .line 8
    iget-boolean v6, p0, Lcom/apk/ss;->throws:Z

    if-nez v6, :cond_5

    .line 9
    iget v3, v3, Lcom/apk/xs;->goto:I

    if-eq v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 10
    iput-boolean v1, p0, Lcom/apk/ss;->throws:Z

    .line 11
    invoke-virtual {p0}, Lcom/apk/ss;->catch()V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 13
    iget v3, v0, Lcom/apk/xs;->case:I

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/apk/xs;->if()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 14
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    if-eq v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 15
    iget v6, v0, Lcom/apk/xs;->try:I

    iget v0, v0, Lcom/apk/xs;->const:I

    if-lt v6, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    .line 16
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    const/4 v6, 0x4

    if-ne v0, v6, :cond_b

    .line 17
    iget v0, p0, Lcom/apk/ss;->while:I

    and-int/2addr v0, v6

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 18
    :cond_a
    iput-byte v3, p0, Lcom/apk/ss;->do:B

    .line 19
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v0, p0}, Lcom/apk/vs;->for(Lcom/apk/ss;)V

    .line 20
    :cond_b
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 21
    iget v6, v0, Lcom/apk/xs;->case:I

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lcom/apk/xs;->for()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    .line 22
    invoke-virtual {p0}, Lcom/apk/ss;->const()Z

    if-eqz v5, :cond_d

    .line 23
    iget-object v0, p0, Lcom/apk/ss;->native:Landroid/view/MotionEvent;

    .line 24
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 25
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    :cond_d
    iget-byte v0, p0, Lcom/apk/ss;->do:B

    if-ne v0, v3, :cond_12

    if-eqz v5, :cond_f

    .line 27
    invoke-virtual {p0}, Lcom/apk/ss;->for()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/apk/ss;->this:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 28
    iget v6, v0, Lcom/apk/xs;->case:I

    .line 29
    iget v7, v0, Lcom/apk/xs;->do:I

    if-ge v6, v7, :cond_e

    .line 30
    iget v0, v0, Lcom/apk/xs;->try:I

    if-lt v0, v7, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_f

    .line 31
    invoke-virtual {p0}, Lcom/apk/ss;->final()Z

    .line 32
    :cond_f
    iget v0, p0, Lcom/apk/ss;->while:I

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_12

    .line 33
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 34
    iget v3, v0, Lcom/apk/xs;->case:I

    iget v6, v0, Lcom/apk/xs;->else:I

    if-ge v3, v6, :cond_11

    iget v0, v0, Lcom/apk/xs;->try:I

    if-lt v0, v6, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_12

    .line 35
    invoke-virtual {p0}, Lcom/apk/ss;->final()Z

    .line 36
    :cond_12
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 37
    iget v0, p0, Lcom/apk/ss;->while:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_13

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_14

    .line 38
    iget-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 39
    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 40
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {v0}, Lcom/apk/vs;->case()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 41
    iget-object v0, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    iget-byte v1, p0, Lcom/apk/ss;->do:B

    iget-object v2, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    if-eqz v0, :cond_17

    .line 42
    :cond_15
    iget-object p1, v0, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz p1, :cond_16

    .line 43
    invoke-interface {p1, p0, v5, v1, v2}, Lcom/apk/us;->if(Lcom/apk/ss;ZBLcom/apk/xs;)V

    .line 44
    :cond_16
    iget-object v0, v0, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v0, :cond_15

    goto :goto_a

    .line 45
    :cond_17
    throw p1

    .line 46
    :cond_18
    :goto_a
    invoke-virtual {p0}, Lcom/apk/ss;->case()V

    :goto_b
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss$for;->do()V

    .line 4
    iget-object v1, v0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->default:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_9

    .line 2
    iget v0, p0, Lcom/apk/ss;->new:I

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    .line 4
    :cond_0
    iget v0, p0, Lcom/apk/ss;->try:I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-nez v0, :cond_b

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    instance-of v2, v0, Lcom/apk/us;

    if-eqz v2, :cond_3

    .line 10
    iput-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    .line 11
    iput-object v1, p0, Lcom/apk/ss;->for:Landroid/view/View;

    goto :goto_0

    .line 12
    :cond_3
    instance-of v2, v1, Lcom/apk/us;

    if-eqz v2, :cond_4

    .line 13
    iput-object v1, p0, Lcom/apk/ss;->break:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-nez v2, :cond_5

    .line 16
    iput-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    .line 17
    iput-object v1, p0, Lcom/apk/ss;->for:Landroid/view/View;

    goto :goto_0

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-nez v2, :cond_7

    .line 19
    iget-object v2, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-ne v2, v0, :cond_6

    move-object v0, v1

    :cond_6
    iput-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    goto :goto_0

    :cond_7
    if-ne v2, v0, :cond_8

    move-object v0, v1

    .line 20
    :cond_8
    iput-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    goto :goto_0

    :cond_9
    if-ne v0, v2, :cond_a

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    goto :goto_0

    .line 22
    :cond_a
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, -0x9a00

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iput-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 32
    :cond_c
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget p1, p1, Lcom/apk/xs;->try:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 5
    iget-object p4, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, p2

    .line 8
    iget v0, p0, Lcom/apk/ss;->super:I

    sub-int/2addr v0, p3

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, p4

    sub-int/2addr v0, p1

    neg-int p4, v0

    .line 9
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 10
    iget-object v1, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 11
    iget-object v2, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v2, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 12
    :cond_0
    iget-object p4, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-eqz p4, :cond_3

    .line 13
    iget p4, p0, Lcom/apk/ss;->while:I

    and-int/lit8 p4, p4, 0x8

    const/4 p5, 0x0

    if-lez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_2

    const/4 p1, 0x0

    .line 14
    :cond_2
    iget-object p4, p0, Lcom/apk/ss;->for:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p5

    .line 16
    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    add-int/2addr p3, p1

    .line 17
    iget-object p1, p0, Lcom/apk/ss;->for:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p2

    .line 18
    iget-object p4, p0, Lcom/apk/ss;->for:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    .line 19
    iget-object p5, p0, Lcom/apk/ss;->for:Landroid/view/View;

    invoke-virtual {p5, p2, p3, p1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object v1, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 4
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget-object v1, p0, Lcom/apk/ss;->break:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/apk/ss;->super:I

    .line 6
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 7
    iput v1, v0, Lcom/apk/xs;->else:I

    .line 8
    iget v2, v0, Lcom/apk/xs;->this:F

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/apk/xs;->do:I

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/apk/ss;->for:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 12
    invoke-static {p1, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    invoke-static {p2, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/ss;->case:I

    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/ss;->else:I

    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/apk/ss;->while:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/apk/ss;->while:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/apk/ss;->while:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/apk/ss;->while:I

    :goto_0
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->break:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/apk/ss$if;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/apk/ss$if;-><init>(II)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/apk/ss;->break:Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/ss;->goto:Z

    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/ss;->return:I

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iput p1, v0, Lcom/apk/xs;->class:I

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iget v1, v0, Lcom/apk/xs;->else:I

    div-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/apk/xs;->this:F

    .line 3
    iput p1, v0, Lcom/apk/xs;->do:I

    return-void
.end method

.method public setPinContent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/apk/ss;->while:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/apk/ss;->while:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/apk/ss;->while:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/apk/ss;->while:I

    :goto_0
    return-void
.end method

.method public setPtrHandler(Lcom/apk/ts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ss;->class:Lcom/apk/ts;

    return-void
.end method

.method public setPtrIndicator(Lcom/apk/xs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget v1, v0, Lcom/apk/xs;->try:I

    iput v1, p1, Lcom/apk/xs;->try:I

    .line 3
    iget v1, v0, Lcom/apk/xs;->case:I

    iput v1, p1, Lcom/apk/xs;->case:I

    .line 4
    iget v0, v0, Lcom/apk/xs;->else:I

    iput v0, p1, Lcom/apk/xs;->else:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/ss;->this:Z

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iput p1, v0, Lcom/apk/xs;->this:F

    .line 3
    iget v1, v0, Lcom/apk/xs;->else:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    iput p1, v0, Lcom/apk/xs;->do:I

    return-void
.end method

.method public setRefreshCompleteHook(Lcom/apk/ws;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ss;->public:Lcom/apk/ws;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setResistance(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 2
    iput p1, v0, Lcom/apk/xs;->break:F

    return-void
.end method

.method public final this()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput-byte v0, p0, Lcom/apk/ss;->do:B

    .line 2
    iget-object v0, p0, Lcom/apk/ss;->const:Lcom/apk/ss$for;

    .line 3
    iget-boolean v0, v0, Lcom/apk/ss$for;->for:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/ss;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/ss;->try(Z)V

    return-void
.end method

.method public final try(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v0}, Lcom/apk/xs;->if()Z

    move-result v0

    .line 2
    iget-object p1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    invoke-virtual {p1}, Lcom/apk/vs;->case()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lcom/apk/us;->new(Lcom/apk/ss;)V

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 9
    iget v0, p1, Lcom/apk/xs;->try:I

    iput v0, p1, Lcom/apk/xs;->const:I

    .line 10
    invoke-virtual {p0}, Lcom/apk/ss;->class()V

    .line 11
    invoke-virtual {p0}, Lcom/apk/ss;->const()Z

    return-void
.end method
