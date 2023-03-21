.class public Lcom/shizhefei/view/indicator/FixedIndicatorView;
.super Lcom/apk/xr0;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/apk/b40;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/FixedIndicatorView$for;
    }
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public final catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final class:Lcom/apk/b40$do;

.field public final const:Landroid/view/View$OnClickListener;

.field public else:I

.field public final:Lcom/apk/h40;

.field public for:Lcom/apk/b40$new;

.field public goto:Z

.field public if:Lcom/apk/b40$if;

.field public import:[I

.field public native:I

.field public new:Lcom/apk/b40$for;

.field public public:I

.field public return:F

.field public static:Lcom/apk/b40$try;

.field public super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

.field public switch:Landroid/view/View;

.field public this:Z

.field public throw:Landroid/graphics/Matrix;

.field public throws:Landroid/widget/LinearLayout$LayoutParams;

.field public try:I

.field public while:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/apk/xr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case:I

    .line 4
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto:Z

    .line 6
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this:Z

    .line 7
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->class:Lcom/apk/b40$do;

    .line 10
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->const:Landroid/view/View$OnClickListener;

    .line 11
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throw:Landroid/graphics/Matrix;

    .line 12
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->while:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->import:[I

    .line 14
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/apk/xr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case:I

    .line 18
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto:Z

    .line 20
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this:Z

    .line 21
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    .line 22
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 23
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->class:Lcom/apk/b40$do;

    .line 24
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->const:Landroid/view/View$OnClickListener;

    .line 25
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throw:Landroid/graphics/Matrix;

    .line 26
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->while:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 27
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->import:[I

    .line 28
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic for(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method private getTabCountInLayout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public break(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throws:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 7
    :goto_0
    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throws:Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public case(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/apk/b40$if;->do()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final catch(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/apk/b40$if;->do()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 5
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/h40$do;->case:Lcom/apk/h40$do;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->new(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->new(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/xr0;->do()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Lcom/apk/i40;

    :try_start_1
    invoke-virtual {v0}, Lcom/apk/i40;->do()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    invoke-virtual {v0}, Lcom/apk/b40$if;->for()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {v0}, Lcom/apk/h40;->do()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final else(IFZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    invoke-virtual {v2}, Lcom/apk/b40$if;->do()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v2, v2, p3

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_1
    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 9
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {p2, p1}, Lcom/apk/h40;->new(I)I

    move-result p2

    .line 10
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/apk/h40;->for(I)I

    move-result p3

    .line 11
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {p1}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/apk/b40$if;->do()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/apk/b40$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/apk/b40$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->new:Lcom/apk/b40$for;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/apk/b40$new;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->for:Lcom/apk/b40$new;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/apk/b40$try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    return v0
.end method

.method public getScrollBar()Lcom/apk/h40;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case:I

    return v0
.end method

.method public final goto()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 6
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 12
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public if(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 2
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    if-eq v0, p1, :cond_6

    .line 3
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    .line 4
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->do()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    .line 7
    :cond_3
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    if-nez v0, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch(I)V

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    if-ltz p2, :cond_4

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 10
    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    invoke-virtual {p0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 11
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int v3, p2, v1

    .line 12
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    const/16 p2, 0x258

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 14
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    .line 15
    iget-object v0, p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 16
    iget-object p2, p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->new:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 17
    iget-object p2, p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->new:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this(IFI)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    if-nez p2, :cond_6

    .line 20
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public measureChildren(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method public final new(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/apk/b40$if;->do()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 6
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {v1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_6

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/apk/h40;->for(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v4

    goto :goto_2

    .line 9
    :cond_4
    iget-boolean v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto:Z

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    instance-of v1, v1, Lcom/apk/f40;

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    goto :goto_1

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/apk/h40;->for(I)I

    move-result v5

    :goto_1
    sub-int/2addr v1, v5

    :goto_2
    int-to-float v1, v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 13
    :goto_3
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->do()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    .line 14
    iget-object v5, v5, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 15
    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    .line 16
    iget-object v3, v3, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    move-object v8, v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_8

    .line 17
    invoke-virtual {p0, v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v3

    if-gtz v9, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v3, v9

    if-gez v9, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    .line 19
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 20
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v3, v9

    float-to-int v9, v9

    .line 21
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    int-to-float v0, v0

    div-float/2addr v8, v0

    .line 22
    invoke-virtual {p0, v5, v8, v9}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this(IFI)V

    .line 23
    invoke-virtual {p0, v5, v8, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else(IFZ)I

    move-result v0

    goto :goto_6

    .line 24
    :cond_9
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    if-eqz v0, :cond_a

    .line 25
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->native:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v3

    iget v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->return:F

    mul-float v3, v3, v5

    add-float/2addr v3, v0

    .line 28
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->native:I

    iget v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->public:I

    invoke-virtual {p0, v0, v5, v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this(IFI)V

    .line 29
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->native:I

    iget v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->return:F

    invoke-virtual {p0, v0, v5, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else(IFZ)I

    move-result v0

    goto :goto_6

    .line 30
    :cond_a
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    invoke-virtual {p0, v0, v3, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else(IFZ)I

    move-result v0

    .line 31
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    .line 32
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v3, v2

    .line 33
    :goto_6
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {v2}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 34
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {v5}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    .line 35
    div-int/2addr v0, v4

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 39
    iget-object v4, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-eqz v4, :cond_c

    .line 40
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    invoke-virtual {p1, v7, v7, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 42
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    invoke-interface {v1}, Lcom/apk/h40;->if()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 44
    :cond_c
    throw v6

    .line 45
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throws:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else:I

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->native:I

    .line 2
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->return:F

    .line 3
    iput p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->public:I

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this(IFI)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->else(IFZ)I

    return-void
.end method

.method public setAdapter(Lcom/apk/b40$if;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->class:Lcom/apk/b40$do;

    .line 3
    iget-object v0, v0, Lcom/apk/b40$if;->do:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->class:Lcom/apk/b40$do;

    .line 6
    iget-object v1, p1, Lcom/apk/b40$if;->do:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Lcom/apk/b40$if;->for()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/apk/b40$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->new:Lcom/apk/b40$for;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/apk/b40$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->for:Lcom/apk/b40$new;

    return-void
.end method

.method public setOnTransitionListener(Lcom/apk/b40$try;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    .line 2
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch(I)V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    invoke-virtual {v1}, Lcom/apk/b40$if;->do()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object v3, p1

    check-cast v3, Lcom/apk/i40;

    invoke-virtual {v3, v1, v0, v2}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOpenPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto:Z

    return-void
.end method

.method public setScrollBar(Lcom/apk/h40;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/apk/h40;->for(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/apk/h40;->for(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    .line 8
    invoke-interface {p1}, Lcom/apk/h40;->getGravity()Lcom/apk/h40$do;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/apk/h40;->for(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/apk/h40;->for(I)I

    move-result p1

    add-int/2addr v1, p1

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case:I

    .line 2
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final this(IFI)V
    .locals 8

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->final:Lcom/apk/h40;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/h40;->onPageScrolled(IFI)V

    .line 4
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    if-eqz p3, :cond_6

    .line 5
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->import:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    .line 6
    invoke-virtual {p0, v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    check-cast v7, Lcom/apk/i40;

    invoke-virtual {v7, v6, v5, v4}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->import:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 9
    aput v0, p3, v1

    .line 10
    iget p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    invoke-virtual {p0, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    check-cast v1, Lcom/apk/i40;

    invoke-virtual {v1, p3, v2, v4}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    .line 12
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 13
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    check-cast v1, Lcom/apk/i40;

    invoke-virtual {v1, p3, p1, v2}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    .line 14
    :cond_5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->case(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    check-cast p3, Lcom/apk/i40;

    invoke-virtual {p3, p1, v0, p2}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final try(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
