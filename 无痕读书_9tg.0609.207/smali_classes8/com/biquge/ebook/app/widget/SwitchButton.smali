.class public Lcom/biquge/ebook/app/widget/SwitchButton;
.super Lcom/apk/os0;
.source "SwitchButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/SwitchButton$try;,
        Lcom/biquge/ebook/app/widget/SwitchButton$new;
    }
.end annotation


# static fields
.field public static final k:I

.field public static final l:I


# instance fields
.field public a:Z

.field public abstract:Landroid/graphics/Paint;

.field public b:Z

.field public break:F

.field public c:Z

.field public case:F

.field public catch:F

.field public class:F

.field public const:F

.field public continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

.field public d:Z

.field public default:F

.field public e:Z

.field public else:F

.field public extends:F

.field public f:Lcom/biquge/ebook/app/widget/SwitchButton$new;

.field public final:I

.field public finally:F

.field public for:I

.field public g:J

.field public goto:F

.field public h:Ljava/lang/Runnable;

.field public i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public if:Z

.field public final implements:Landroid/animation/ArgbEvaluator;

.field public import:I

.field public instanceof:Z

.field public interface:Landroid/graphics/RectF;

.field public j:Landroid/animation/Animator$AnimatorListener;

.field public native:I

.field public new:I

.field public package:F

.field public private:Landroid/graphics/Paint;

.field public protected:I

.field public public:F

.field public return:I

.field public static:I

.field public strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

.field public super:I

.field public switch:F

.field public synchronized:Z

.field public this:F

.field public throw:I

.field public throws:F

.field public transient:Landroid/animation/ValueAnimator;

.field public try:I

.field public volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

.field public while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42700000    # 60.0f

    .line 1
    invoke-static {v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v0

    sput v0, Lcom/biquge/ebook/app/widget/SwitchButton;->k:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    invoke-static {v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v0

    sput v0, Lcom/biquge/ebook/app/widget/SwitchButton;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/os0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->if:Z

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->interface:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 5
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    .line 6
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->c:Z

    .line 7
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->d:Z

    .line 8
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->e:Z

    .line 9
    new-instance v2, Lcom/biquge/ebook/app/widget/SwitchButton$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/SwitchButton$do;-><init>(Lcom/biquge/ebook/app/widget/SwitchButton;)V

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->h:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Lcom/biquge/ebook/app/widget/SwitchButton$if;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/SwitchButton$if;-><init>(Lcom/biquge/ebook/app/widget/SwitchButton;)V

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 11
    new-instance v2, Lcom/biquge/ebook/app/widget/SwitchButton$for;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/SwitchButton$for;-><init>(Lcom/biquge/ebook/app/widget/SwitchButton;)V

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->j:Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 12
    sget-object v3, Lcom/biquge/ebook/app/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/16 p2, 0xa

    .line 13
    invoke-static {p1, p2, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->goto(Landroid/content/res/TypedArray;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->a:Z

    const/16 p2, 0xf

    const v3, -0x555556

    .line 14
    invoke-static {p1, p2, v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->return:I

    const/16 p2, 0x11

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 15
    invoke-static {v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v4

    .line 16
    invoke-static {p1, p2, v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->break(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->static:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 17
    invoke-static {p2}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->switch:F

    const/16 p2, 0x10

    const/high16 v4, 0x40800000    # 4.0f

    .line 18
    invoke-static {v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result v5

    if-nez p1, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 20
    :goto_1
    iput v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throws:F

    .line 21
    invoke-static {v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->default:F

    .line 22
    invoke-static {v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->extends:F

    const/16 p2, 0xc

    const/high16 v4, 0x40200000    # 2.5f

    .line 23
    invoke-static {v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v4

    .line 24
    invoke-static {p1, p2, v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->break(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->for:I

    const/16 p2, 0xb

    .line 25
    invoke-static {v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v3

    .line 26
    invoke-static {p1, p2, v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->break(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->new:I

    const/16 p2, 0x9

    const/high16 v3, 0x33000000

    .line 27
    invoke-static {p1, p2, v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->try:I

    const/16 p2, 0xe

    const v3, -0x222223

    .line 28
    invoke-static {p1, p2, v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    .line 29
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 30
    iget-boolean p2, p2, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    const v3, 0x7f06003c

    if-eqz p2, :cond_2

    .line 31
    invoke-static {v3}, Lcom/apk/ze;->p(I)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v3}, Lcom/apk/tr0;->do(I)I

    move-result v3

    invoke-static {p2, v3}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 33
    invoke-static {p2}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result v3

    .line 34
    invoke-static {p1, v0, v3}, Lcom/biquge/ebook/app/widget/SwitchButton;->break(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->while:I

    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 35
    invoke-static {p1, v3, v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->import:I

    const/4 v3, 0x6

    .line 36
    invoke-static {p2}, Lcom/biquge/ebook/app/widget/SwitchButton;->new(F)I

    move-result p2

    .line 37
    invoke-static {p1, v3, p2}, Lcom/biquge/ebook/app/widget/SwitchButton;->break(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->native:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 38
    invoke-static {p2}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->public:F

    const/4 p2, 0x2

    .line 39
    invoke-static {p1, p2, v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result v3

    const/4 v5, 0x7

    const/16 v6, 0x12c

    if-nez p1, :cond_3

    goto :goto_3

    .line 40
    :cond_3
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    :goto_3
    const/4 v5, 0x3

    .line 41
    invoke-static {p1, v5, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->goto(Landroid/content/res/TypedArray;IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    const/16 v5, 0xd

    .line 42
    invoke-static {p1, v5, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->goto(Landroid/content/res/TypedArray;IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->b:Z

    .line 43
    invoke-static {p1, v1, v4}, Lcom/biquge/ebook/app/widget/SwitchButton;->this(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->final:I

    const/16 v4, 0x8

    .line 44
    invoke-static {p1, v4, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->goto(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->synchronized:Z

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->private:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->a:Z

    if-eqz p1, :cond_5

    .line 50
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->private:Landroid/graphics/Paint;

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->for:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->new:I

    int-to-float v5, v5

    iget v7, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->try:I

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 51
    :cond_5
    new-instance p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p1}, Lcom/biquge/ebook/app/widget/SwitchButton$try;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 52
    new-instance p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p1}, Lcom/biquge/ebook/app/widget/SwitchButton$try;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 53
    new-instance p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p1}, Lcom/biquge/ebook/app/widget/SwitchButton$try;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    new-array p1, p2, [F

    .line 54
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    int-to-long v3, v6

    .line 55
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 57
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->j:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    invoke-super {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 60
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setPadding(IIII)V

    .line 61
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static break(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method public static for(F)F
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static goto(Landroid/content/res/TypedArray;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static new(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->for(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 2
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 3
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->import:I

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    .line 4
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    return-void
.end method

.method private setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 2
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    .line 4
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    return-void
.end method

.method public static this(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final case()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final catch()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->case()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->else()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public final class(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->e:Z

    if-nez v0, :cond_9

    .line 3
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->d:Z

    if-nez v0, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->if()V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->synchronized:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 15
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    .line 16
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    goto :goto_2

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 19
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->if()V

    :cond_8
    return-void

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final else()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->f:Lcom/biquge/ebook/app/widget/SwitchButton$new;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->e:Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton$new;->onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->e:Z

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->while:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->final:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    iget v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    iget v6, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->catch:F

    iget v7, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->class:F

    iget v8, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    iget-object v9, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/biquge/ebook/app/widget/SwitchButton;->try(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    iget v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    iget v6, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->catch:F

    iget v7, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->class:F

    iget v8, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    iget-object v9, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v9}, Lcom/biquge/ebook/app/widget/SwitchButton;->try(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 9
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->b:Z

    if-eqz v0, :cond_0

    .line 10
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->return:I

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->static:I

    int-to-float v1, v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->catch:F

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->switch:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->const:F

    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throws:F

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    .line 11
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v2, v2, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->while:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    add-float v6, v1, v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    add-float v7, v1, v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->catch:F

    sub-float v8, v1, v0

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->class:F

    sub-float v9, v1, v0

    iget v10, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    iget-object v11, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/biquge/ebook/app/widget/SwitchButton;->try(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    iget v6, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    mul-float v2, v0, v3

    add-float v7, v2, v5

    mul-float v0, v0, v3

    add-float v8, v0, v6

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x43340000    # 180.0f

    iget-object v12, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    const/4 v11, 0x1

    move-object v4, p1

    .line 23
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 24
    iget v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    add-float v5, v0, v2

    iget v6, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v7, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    mul-float v2, v2, v3

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->b:Z

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->native:I

    int-to-float v2, v2

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->default:F

    sub-float v6, v3, v4

    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->const:F

    iget v5, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->public:F

    sub-float v7, v4, v5

    iget v8, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->extends:F

    sub-float v8, v3, v8

    add-float v9, v4, v5

    iget-object v10, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    .line 27
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v5, p1

    .line 30
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->const:F

    .line 32
    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->else:F

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->private:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    const v3, -0x222223

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->else:F

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->abstract:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 3
    :cond_0
    sget p1, Lcom/biquge/ebook/app/widget/SwitchButton;->k:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_3

    .line 4
    :cond_2
    sget p2, Lcom/biquge/ebook/app/widget/SwitchButton;->l:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget p3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->for:I

    iget p4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->new:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->while:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float p4, p2, p3

    .line 3
    iput p4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->goto:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    .line 4
    iput p4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    .line 5
    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->while:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->else:F

    .line 6
    iput p3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->this:F

    .line 7
    iput p3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->break:F

    .line 8
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->catch:F

    .line 9
    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->class:F

    add-float/2addr p2, p3

    mul-float p2, p2, v0

    .line 10
    iput p2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->const:F

    add-float/2addr p3, p4

    .line 11
    iput p3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    sub-float/2addr p1, p4

    .line 12
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    .line 13
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->d:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->if:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->c:Z

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->else()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->case()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->catch()V

    goto/16 :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->else()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 11
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    invoke-static {v3, v1, p1, v1}, Lcom/apk/goto;->do(FFFF)F

    move-result p1

    iput p1, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    goto/16 :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->case()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 15
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    invoke-static {v3, v1, p1, v1}, Lcom/apk/goto;->do(FFFF)F

    move-result v1

    iput v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 20
    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_1

    .line 22
    :cond_5
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->c:Z

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->g:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->toggle()V

    goto/16 :goto_1

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->case()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 29
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    const/4 v1, 0x1

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->catch()V

    goto :goto_1

    .line 32
    :cond_8
    iput-boolean v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    .line 33
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    const/4 p1, 0x4

    .line 35
    iput p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 36
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 37
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 38
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setCheckedViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    goto :goto_0

    .line 39
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-direct {p0, p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setUncheckViewState(Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 41
    :cond_b
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->else()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->catch()V

    goto :goto_1

    .line 43
    :cond_c
    iput-boolean v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->c:Z

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->g:J

    .line 45
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->h:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_1
    return v2

    :cond_e
    :goto_2
    return v1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->synchronized:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->class(ZZ)V

    return-void
.end method

.method public setEnableEffect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->synchronized:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->f:Lcom/biquge/ebook/app/widget/SwitchButton$new;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->private:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->for:I

    int-to-float v1, v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->new:I

    int-to-float v2, v2

    iget v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->try:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->private:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton;->if:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->class(ZZ)V

    return-void
.end method

.method public final try(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    .line 1
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
