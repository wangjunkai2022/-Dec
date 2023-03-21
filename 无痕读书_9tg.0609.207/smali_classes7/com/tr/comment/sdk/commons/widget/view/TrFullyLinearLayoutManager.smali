.class public Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "TrFullyLinearLayoutManager.java"


# instance fields
.field public do:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;->do:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;->do:[I

    return-void
.end method


# virtual methods
.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 6
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 7
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v12, v1, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;->do:[I

    .line 8
    :try_start_0
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 9
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v17

    add-int v13, v16, v17

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    invoke-static {v10, v13, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v13

    add-int/2addr v10, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    invoke-static {v11, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 14
    invoke-virtual {v14, v6, v10}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v10

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v10

    const/4 v10, 0x0

    aput v6, v12, v10

    .line 16
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v10

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v10

    const/4 v10, 0x1

    aput v6, v12, v10

    .line 17
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    throw v0

    .line 19
    :catch_0
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    if-nez v6, :cond_1

    .line 20
    iget-object v6, v1, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;->do:[I

    const/4 v10, 0x0

    aget v11, v6, v10

    add-int/2addr v9, v11

    if-nez v7, :cond_2

    const/4 v11, 0x1

    .line 21
    aget v8, v6, v11

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 22
    iget-object v6, v1, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;->do:[I

    aget v11, v6, v11

    add-int/2addr v8, v11

    if-nez v7, :cond_2

    .line 23
    aget v9, v6, v10

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_4

    move v4, v9

    :cond_4
    if-eq v3, v0, :cond_5

    move v5, v8

    .line 24
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method
