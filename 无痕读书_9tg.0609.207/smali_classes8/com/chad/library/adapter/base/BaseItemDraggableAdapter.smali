.class public abstract Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseItemDraggableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field public static final ERROR_NOT_SAME_ITEMTOUCHHELPER:Ljava/lang/String; = "Item drag and item swipe should pass the same ItemTouchHelper"

.field public static final NO_TOGGLE_VIEW:I


# instance fields
.field public itemDragEnabled:Z

.field public itemSwipeEnabled:Z

.field public mDragOnLongPress:Z

.field public mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

.field public mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

.field public mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

.field public mToggleViewId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 8
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 9
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 3
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 4
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    return-void
.end method

.method private inRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public disableDragItem()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public disableSwipeItem()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return-void
.end method

.method public enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

    return-void
.end method

.method public enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

    return-void
.end method

.method public enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ItemTouchHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 4
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 5
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleViewId(I)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleDragOnLongPress(Z)V

    return-void
.end method

.method public enableSwipeItem()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return-void
.end method

.method public getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public hasToggleView()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItemDraggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    return v0
.end method

.method public isItemSwipeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x222

    if-eq p2, v0, :cond_1

    const/16 v0, 0x111

    if-eq p2, v0, :cond_1

    const/16 v0, 0x555

    if-eq p2, v0, :cond_1

    const/16 v0, 0x333

    if-eq p2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->hasToggleView()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget p2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    sget v0, Lcom/codelibrary/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v2, p1, v0, p2, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1, p1, v0}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeMoving(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    :cond_0
    return-void
.end method

.method public setOnItemDragListener(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-void
.end method

.method public setToggleDragOnLongPress(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 3
    new-instance p1, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 5
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public setToggleViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    return-void
.end method
