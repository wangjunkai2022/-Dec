.class public Lcom/manhua/ui/widget/PageRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PageRecyclerView.java"

# interfaces
.implements Lcom/apk/u20$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/PageRecyclerView$do;
    }
.end annotation


# instance fields
.field public case:Z

.field public do:Z

.field public else:I

.field public for:Lcom/manhua/ui/widget/PageRecyclerView$do;

.field public if:Lcom/apk/u20;

.field public new:Z

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->do:Z

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 4
    new-instance p2, Lcom/apk/u20;

    invoke-direct {p2, p0}, Lcom/apk/u20;-><init>(Lcom/apk/u20$if;)V

    iput-object p2, p0, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    .line 5
    iput-boolean p1, p2, Lcom/apk/u20;->try:Z

    .line 6
    iput-boolean p1, p2, Lcom/apk/u20;->case:Z

    const/16 p1, 0x64

    .line 7
    iput p1, p2, Lcom/apk/u20;->else:I

    .line 8
    iput p1, p2, Lcom/apk/u20;->goto:I

    .line 9
    iget-object p1, p2, Lcom/apk/u20;->do:Landroidx/recyclerview/widget/RecyclerView;

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 11
    :cond_0
    iput v0, p2, Lcom/apk/u20;->break:I

    .line 12
    iput v0, p2, Lcom/apk/u20;->catch:I

    .line 13
    iput-object p0, p2, Lcom/apk/u20;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public for(ZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->case()V

    :cond_0
    return-void
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->case:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->else:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    .line 4
    iget v0, v0, Lcom/apk/u20;->this:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFirstItem()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLastItem()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public if(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    if-ge p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-gt p1, v3, :cond_1

    sub-int/2addr p1, v2

    if-ltz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 7
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    iput p1, v0, Lcom/apk/u20;->const:I

    .line 10
    iput-boolean v4, v0, Lcom/apk/u20;->class:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    iget-boolean v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->case:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->else:I

    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->else:I

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    invoke-interface {v0, p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->for(I)V

    :cond_0
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->try:Z

    return-void
.end method

.method public setLoadUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->new:Z

    return-void
.end method

.method public setOnScrollStateListener(Lcom/apk/u20$for;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/apk/u20;->new:Lcom/apk/u20$for;

    :cond_0
    return-void
.end method

.method public setScrollDirectionChangedListener(Lcom/apk/u20$do;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    :cond_0
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->do:Z

    return-void
.end method

.method public setTtsVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->case:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/manhua/ui/widget/PageRecyclerView;->else:I

    :cond_0
    return-void
.end method
