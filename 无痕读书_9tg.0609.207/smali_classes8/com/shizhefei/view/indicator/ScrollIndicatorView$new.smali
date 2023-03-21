.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;
.super Lcom/shizhefei/view/indicator/FixedIndicatorView;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field public default:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOpenPaddingBottom(Z)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;->default:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v10

    add-int/2addr v10, v9

    const/4 v9, -0x2

    invoke-static {p1, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v10

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 9
    invoke-virtual {v7, v9, v10}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    move v6, v7

    :cond_0
    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    mul-int v6, v6, v2

    const/4 v2, 0x1

    if-le v6, v1, :cond_3

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 16
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    .line 17
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
