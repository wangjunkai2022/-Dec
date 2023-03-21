.class public Lcom/chad/library/adapter/base/DraggableController;
.super Ljava/lang/Object;
.source "DraggableController.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/IDraggableListener;


# static fields
.field public static final NO_TOGGLE_VIEW:I


# instance fields
.field public itemDragEnabled:Z

.field public itemSwipeEnabled:Z

.field public mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public mDragOnLongPress:Z

.field public mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

.field public mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

.field public mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

.field public mToggleViewId:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mToggleViewId:I

    .line 3
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mDragOnLongPress:Z

    .line 6
    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-void
.end method

.method public static synthetic access$000(Lcom/chad/library/adapter/base/DraggableController;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chad/library/adapter/base/DraggableController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/chad/library/adapter/base/DraggableController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/chad/library/adapter/base/DraggableController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/chad/library/adapter/base/DraggableController;->mDragOnLongPress:Z

    return p0
.end method

.method private inRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

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
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public disableSwipeItem()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

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
    invoke-virtual {p0, p1, v0, v1}, Lcom/chad/library/adapter/base/DraggableController;->enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

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
    invoke-virtual {p0, p1, p2, v0}, Lcom/chad/library/adapter/base/DraggableController;->enableDragItem(Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V

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
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    .line 4
    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 5
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/DraggableController;->setToggleViewId(I)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/DraggableController;->setToggleDragOnLongPress(Z)V

    return-void
.end method

.method public enableSwipeItem()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    return-void
.end method

.method public getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public hasToggleView()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mToggleViewId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initView(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/DraggableController;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x222

    if-eq v0, v1, :cond_1

    const/16 v1, 0x111

    if-eq v0, v1, :cond_1

    const/16 v1, 0x555

    if-eq v0, v1, :cond_1

    const/16 v1, 0x333

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/DraggableController;->hasToggleView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mToggleViewId:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    sget v1, Lcom/codelibrary/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mDragOnLongPress:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isItemDraggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    return v0
.end method

.method public isItemSwipeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    return v0
.end method

.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/DraggableController;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/DraggableController;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v2, p1, v0, p2, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemDragEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/DraggableController;->getViewHolderPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/DraggableController;->inRange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chad/library/adapter/base/DraggableController;->itemSwipeEnabled:Z

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
    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-void
.end method

.method public setToggleDragOnLongPress(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mDragOnLongPress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 3
    new-instance p1, Lcom/chad/library/adapter/base/DraggableController$1;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/DraggableController$1;-><init>(Lcom/chad/library/adapter/base/DraggableController;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/chad/library/adapter/base/DraggableController$2;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/DraggableController$2;-><init>(Lcom/chad/library/adapter/base/DraggableController;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 5
    iput-object v0, p0, Lcom/chad/library/adapter/base/DraggableController;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public setToggleViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/chad/library/adapter/base/DraggableController;->mToggleViewId:I

    return-void
.end method
