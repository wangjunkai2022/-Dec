.class public Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;
.super Landroid/widget/ListView;
.source "SectionPinListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public case:I

.field public do:Landroid/widget/AbsListView$OnScrollListener;

.field public else:Lcom/apk/g1;

.field public for:Z

.field public if:Landroid/view/View;

.field public new:F

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1100ef

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->do:Landroid/widget/AbsListView$OnScrollListener;

    .line 3
    iput-object v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->for:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->new:F

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->try:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    iput v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->case:I

    .line 8
    sget-object v1, Lcom/biquge/ebook/app/R$styleable;->SectionPinListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->for:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/apk/bi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->for:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->new:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->case:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->do:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/apk/bi;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_e

    iget-boolean p4, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->for:Z

    if-eqz p4, :cond_e

    if-ge p2, p1, :cond_2

    goto/16 :goto_7

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4}, Landroid/widget/ListAdapter;->getCount()I

    move-result p4

    if-gtz p4, :cond_3

    return-void

    :cond_3
    sub-int/2addr p2, p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/apk/bi;

    if-nez p1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/apk/bi;

    move p4, p2

    :goto_0
    if-ltz p4, :cond_6

    .line 9
    invoke-virtual {p1, p4}, Lcom/apk/bi;->do(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    const/4 p4, -0x1

    :goto_2
    if-eq p4, v2, :cond_9

    .line 10
    iget p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->try:I

    if-eq p1, p4, :cond_9

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p4, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 13
    :goto_3
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result p1

    iget p4, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->case:I

    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 17
    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p4, :cond_8

    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    goto :goto_4

    .line 19
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 20
    :goto_4
    invoke-virtual {v1, p1, p4}, Landroid/view/View;->measure(II)V

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {v1, v3, v3, p1, p4}, Landroid/view/View;->layout(IIII)V

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    if-nez p1, :cond_a

    return-void

    .line 23
    :cond_a
    iput v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->new:F

    const/4 p1, 0x0

    :goto_5
    if-ge p1, p3, :cond_d

    add-int p4, p1, p2

    .line 24
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/apk/bi;

    .line 25
    invoke-virtual {v0, p4}, Lcom/apk/bi;->do(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 27
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 29
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    if-ge v0, v1, :cond_b

    if-lez v0, :cond_b

    sub-int/2addr v0, v1

    int-to-float p4, v0

    .line 30
    iput p4, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->new:F

    goto :goto_6

    :cond_b
    if-gtz v0, :cond_c

    const/4 v0, 0x4

    .line 31
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 32
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void

    .line 33
    :cond_e
    :goto_7
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->if:Landroid/view/View;

    .line 34
    iput v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->new:F

    .line 35
    iput v2, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->try:I

    const/4 p1, 0x0

    :goto_8
    if-ge p1, p3, :cond_10

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 37
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_10
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->do:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->else:Lcom/apk/g1;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnDataCallBackListener(Lcom/apk/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->else:Lcom/apk/g1;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->do:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setSectionPinEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->for:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setTranslationY(F)V

    return-void
.end method
