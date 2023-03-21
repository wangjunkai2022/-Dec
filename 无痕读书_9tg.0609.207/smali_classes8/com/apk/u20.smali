.class public Lcom/apk/u20;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecycleViewScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/u20$for;,
        Lcom/apk/u20$do;,
        Lcom/apk/u20$if;
    }
.end annotation


# instance fields
.field public break:I

.field public case:Z

.field public catch:I

.field public class:Z

.field public const:I

.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public else:I

.field public final:Z

.field public for:Lcom/apk/u20$if;

.field public goto:I

.field public if:Lcom/apk/u20$do;

.field public new:Lcom/apk/u20$for;

.field public super:I

.field public this:I

.field public throw:I

.field public try:Z


# direct methods
.method public constructor <init>(Lcom/apk/u20$if;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/u20;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iput-object v0, p0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    .line 4
    iput-object v0, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/apk/u20;->try:Z

    .line 6
    iput-boolean v0, p0, Lcom/apk/u20;->case:Z

    .line 7
    iput v0, p0, Lcom/apk/u20;->else:I

    .line 8
    iput v0, p0, Lcom/apk/u20;->goto:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/apk/u20;->this:I

    .line 10
    iput v0, p0, Lcom/apk/u20;->break:I

    .line 11
    iput v0, p0, Lcom/apk/u20;->catch:I

    .line 12
    iput-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    return-void
.end method


# virtual methods
.method public final do(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    if-ne p2, p3, :cond_4

    .line 1
    iget-boolean p2, p0, Lcom/apk/u20;->try:Z

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/apk/u20;->goto:I

    add-int/2addr v2, v3

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iget v3, p0, Lcom/apk/u20;->else:I

    add-int/2addr p1, v3

    if-gt p2, v2, :cond_1

    if-ge p3, p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 10
    iget-boolean p2, p1, Lcom/manhua/ui/widget/PageRecyclerView;->try:Z

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->if()V

    :cond_0
    return v0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->for(ZZ)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 14
    iget-boolean p2, p1, Lcom/manhua/ui/widget/PageRecyclerView;->try:Z

    if-nez p2, :cond_3

    iget-object p1, p1, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->if()V

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final if(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1
    iget-boolean p2, p0, Lcom/apk/u20;->case:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int/2addr p2, v1

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/apk/u20;->else:I

    sub-int/2addr v3, v4

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v4, p1

    iget p1, p0, Lcom/apk/u20;->goto:I

    sub-int/2addr v4, p1

    if-lt v2, v3, :cond_1

    if-le p2, v4, :cond_1

    .line 9
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 10
    iget-boolean p2, p1, Lcom/manhua/ui/widget/PageRecyclerView;->new:Z

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->new()V

    :cond_0
    return v1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->for(ZZ)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 14
    iget-boolean p2, p1, Lcom/manhua/ui/widget/PageRecyclerView;->new:Z

    if-nez p2, :cond_3

    iget-object p1, p1, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lcom/manhua/ui/widget/PageRecyclerView$do;->new()V

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 1
    iget-boolean v2, p0, Lcom/apk/u20;->class:Z

    if-eqz v2, :cond_2

    .line 2
    iget v2, p0, Lcom/apk/u20;->const:I

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-gt v2, v4, :cond_1

    sub-int/2addr v2, v3

    if-ltz v2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 8
    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 10
    iput v2, p0, Lcom/apk/u20;->const:I

    .line 11
    iput-boolean v1, p0, Lcom/apk/u20;->class:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    add-int/2addr v3, v2

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    if-lt v3, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 16
    iget-boolean v2, p0, Lcom/apk/u20;->final:Z

    if-nez v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast v2, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 18
    iget-object v2, v2, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz v2, :cond_4

    .line 19
    invoke-interface {v2}, Lcom/manhua/ui/widget/PageRecyclerView$do;->try()V

    .line 20
    :cond_4
    iput-boolean v0, p0, Lcom/apk/u20;->final:Z

    .line 21
    iput v0, p0, Lcom/apk/u20;->throw:I

    .line 22
    iget-object v2, p0, Lcom/apk/u20;->new:Lcom/apk/u20$for;

    if-eqz v2, :cond_6

    .line 23
    invoke-interface {v2}, Lcom/apk/u20$for;->if()V

    goto :goto_2

    :cond_5
    if-ne v1, p2, :cond_6

    .line 24
    iget-object v2, p0, Lcom/apk/u20;->new:Lcom/apk/u20$for;

    if-eqz v2, :cond_6

    .line 25
    invoke-interface {v2}, Lcom/apk/u20$for;->do()V

    .line 26
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 28
    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_c

    .line 29
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 31
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 32
    iget v4, p0, Lcom/apk/u20;->throw:I

    if-ne v4, v1, :cond_8

    .line 33
    invoke-virtual {p0, p1, v3}, Lcom/apk/u20;->if(Landroidx/recyclerview/widget/RecyclerView;I)Z

    goto :goto_3

    :cond_8
    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/apk/u20;->do(Landroidx/recyclerview/widget/RecyclerView;II)Z

    goto :goto_3

    :cond_9
    if-nez p2, :cond_b

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 36
    invoke-virtual {p0, p1, v3}, Lcom/apk/u20;->if(Landroidx/recyclerview/widget/RecyclerView;I)Z

    :cond_a
    const/4 p2, -0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/apk/u20;->do(Landroidx/recyclerview/widget/RecyclerView;II)Z

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v0, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->for(ZZ)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/u20;->final:Z

    if-lez p3, :cond_0

    const/4 v1, 0x2

    .line 2
    iput v1, p0, Lcom/apk/u20;->throw:I

    :cond_0
    if-gez p3, :cond_1

    .line 3
    iput v0, p0, Lcom/apk/u20;->throw:I

    .line 4
    :cond_1
    iget v1, p0, Lcom/apk/u20;->super:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/apk/u20;->super:I

    .line 5
    iget-object v2, p0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    if-eqz v2, :cond_c

    .line 6
    check-cast v2, Lcom/apk/h2;

    .line 7
    iget-boolean v3, v2, Lcom/apk/h2;->extends:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 8
    iput v1, v2, Lcom/apk/h2;->throws:I

    goto :goto_0

    .line 9
    :cond_2
    iput v4, v2, Lcom/apk/h2;->throws:I

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 10
    iget-object p2, p0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    check-cast p2, Lcom/apk/h2;

    if-eqz p2, :cond_3

    goto :goto_5

    .line 11
    :cond_3
    throw v1

    :cond_4
    if-nez p2, :cond_8

    if-lez p3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 12
    :goto_1
    iget v3, p0, Lcom/apk/u20;->catch:I

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eq v2, v0, :cond_c

    .line 13
    iput p2, p0, Lcom/apk/u20;->break:I

    .line 14
    iput p3, p0, Lcom/apk/u20;->catch:I

    .line 15
    iget-object p2, p0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    check-cast p2, Lcom/apk/h2;

    if-eqz p2, :cond_7

    goto :goto_5

    .line 16
    :cond_7
    throw v1

    :cond_8
    if-nez p3, :cond_c

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 17
    :goto_3
    iget v3, p0, Lcom/apk/u20;->break:I

    if-lez v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eq v2, v0, :cond_c

    .line 18
    iput p2, p0, Lcom/apk/u20;->break:I

    .line 19
    iput p3, p0, Lcom/apk/u20;->catch:I

    .line 20
    iget-object p2, p0, Lcom/apk/u20;->if:Lcom/apk/u20$do;

    check-cast p2, Lcom/apk/h2;

    if-eqz p2, :cond_b

    goto :goto_5

    .line 21
    :cond_b
    throw v1

    .line 22
    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    if-eqz p2, :cond_d

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 24
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_d

    .line 25
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 28
    iget p1, p0, Lcom/apk/u20;->this:I

    if-eq p1, p2, :cond_d

    .line 29
    iput p2, p0, Lcom/apk/u20;->this:I

    .line 30
    iget-object p1, p0, Lcom/apk/u20;->for:Lcom/apk/u20$if;

    check-cast p1, Lcom/manhua/ui/widget/PageRecyclerView;

    .line 31
    iget-object p1, p1, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    if-eqz p1, :cond_d

    .line 32
    invoke-interface {p1, p2}, Lcom/manhua/ui/widget/PageRecyclerView$do;->do(I)V

    :cond_d
    return-void
.end method
