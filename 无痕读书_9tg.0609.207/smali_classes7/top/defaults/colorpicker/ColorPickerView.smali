.class public Ltop/defaults/colorpicker/ColorPickerView;
.super Landroid/widget/LinearLayout;
.source "ColorPickerView.java"

# interfaces
.implements Lcom/apk/ts0;


# instance fields
.field public case:I

.field public do:Lcom/apk/zs0;

.field public else:I

.field public for:Lcom/apk/rs0;

.field public goto:I

.field public if:Lcom/apk/ss0;

.field public new:Lcom/apk/ts0;

.field public this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/vs0;",
            ">;"
        }
    .end annotation
.end field

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v1, -0x1000000

    .line 2
    iput v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->case:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    sget-object v2, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget v2, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_enableAlpha:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 7
    sget v3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_enableBrightness:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 8
    sget v3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_onlyUpdateOnTouchEventUp:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->try:Z

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance p2, Lcom/apk/zs0;

    invoke-direct {p2, p1}, Lcom/apk/zs0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float p2, p2, p1

    float-to-int p2, p2

    mul-int/lit8 v0, p2, 0x2

    .line 12
    iput v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 13
    iput p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    .line 14
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0, v1}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledBrightness(Z)V

    .line 17
    invoke-virtual {p0, v2}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledAlpha(Z)V

    .line 18
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v0, p1}, Lcom/apk/ts0;->do(Lcom/apk/vs0;)V

    .line 2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final for()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/vs0;

    .line 3
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v2, v1}, Lcom/apk/ts0;->do(Lcom/apk/vs0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apk/zs0;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 5
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/ws0;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/apk/ws0;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-nez v0, :cond_3

    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    .line 11
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->try:Z

    invoke-virtual {v0, v2}, Lcom/apk/zs0;->setOnlyUpdateOnTouchEventUp(Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz v0, :cond_4

    .line 13
    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    .line 14
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->try:Z

    invoke-virtual {v0, v2}, Lcom/apk/ws0;->setOnlyUpdateOnTouchEventUp(Z)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    .line 16
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->try:Z

    invoke-virtual {v0, v2}, Lcom/apk/ws0;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 17
    :goto_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/vs0;

    .line 19
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v3, v2}, Lcom/apk/ts0;->if(Lcom/apk/vs0;)V

    .line 20
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v3}, Lcom/apk/ts0;->getColor()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/apk/vs0;->do(IZZ)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v0}, Lcom/apk/ts0;->getColor()I

    move-result v0

    return v0
.end method

.method public if(Lcom/apk/vs0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {v0, p1}, Lcom/apk/ts0;->if(Lcom/apk/vs0;)V

    .line 2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 4
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    add-int/2addr v1, v2

    sub-int/2addr v3, v1

    .line 6
    :cond_0
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz v1, :cond_1

    .line 7
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    add-int/2addr v1, v2

    sub-int/2addr v3, v1

    .line 8
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    sub-int v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 10
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-eqz v1, :cond_2

    .line 11
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 12
    :cond_2
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz v1, :cond_3

    .line 13
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 14
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setEnabledAlpha(Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/apk/rs0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apk/rs0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    .line 8
    :cond_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz p1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/apk/ws0;->class:Lcom/apk/vs0;

    invoke-interface {p1, v1}, Lcom/apk/ts0;->if(Lcom/apk/vs0;)V

    .line 10
    invoke-interface {p1}, Lcom/apk/ts0;->getColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/apk/ws0;->case(IZZ)V

    .line 11
    :cond_2
    iput-object p1, v0, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    .line 12
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->for()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz p1, :cond_5

    .line 14
    iget-object v0, p1, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 15
    iget-object v2, p1, Lcom/apk/ws0;->class:Lcom/apk/vs0;

    invoke-interface {v0, v2}, Lcom/apk/ts0;->do(Lcom/apk/vs0;)V

    .line 16
    iput-object v1, p1, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    .line 17
    :cond_4
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 18
    iput-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    .line 19
    :cond_5
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->for()V

    :goto_0
    return-void
.end method

.method public setEnabledBrightness(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/apk/ss0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/apk/ss0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->goto:I

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->else:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    invoke-virtual {p0, v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p1, Lcom/apk/ws0;->class:Lcom/apk/vs0;

    .line 8
    iget-object v3, v1, Lcom/apk/zs0;->this:Lcom/apk/us0;

    invoke-virtual {v3, v2}, Lcom/apk/us0;->if(Lcom/apk/vs0;)V

    .line 9
    invoke-interface {v1}, Lcom/apk/ts0;->getColor()I

    move-result v2

    invoke-virtual {p1, v2, v0, v0}, Lcom/apk/ws0;->case(IZZ)V

    .line 10
    :cond_1
    iput-object v1, p1, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    .line 11
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->for()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    if-eqz p1, :cond_4

    .line 13
    iget-object v1, p1, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 14
    iget-object v3, p1, Lcom/apk/ws0;->class:Lcom/apk/vs0;

    invoke-interface {v1, v3}, Lcom/apk/ts0;->do(Lcom/apk/vs0;)V

    .line 15
    iput-object v2, p1, Lcom/apk/ws0;->const:Lcom/apk/ts0;

    .line 16
    :cond_3
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 17
    iput-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->if:Lcom/apk/ss0;

    .line 18
    :cond_4
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->for()V

    .line 19
    :goto_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->for:Lcom/apk/rs0;

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p0, v0}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledAlpha(Z)V

    :cond_5
    return-void
.end method

.method public setInitialColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->case:I

    .line 2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->do:Lcom/apk/zs0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apk/zs0;->for(IZ)V

    return-void
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->try:Z

    .line 2
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->for()V

    return-void
.end method
