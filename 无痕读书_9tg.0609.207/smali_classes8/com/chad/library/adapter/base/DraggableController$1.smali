.class public Lcom/chad/library/adapter/base/DraggableController$1;
.super Ljava/lang/Object;
.source "DraggableController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/DraggableController;->setToggleDragOnLongPress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/chad/library/adapter/base/DraggableController;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/DraggableController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/DraggableController$1;->this$0:Lcom/chad/library/adapter/base/DraggableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController$1;->this$0:Lcom/chad/library/adapter/base/DraggableController;

    invoke-static {v0}, Lcom/chad/library/adapter/base/DraggableController;->access$000(Lcom/chad/library/adapter/base/DraggableController;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController$1;->this$0:Lcom/chad/library/adapter/base/DraggableController;

    invoke-static {v0}, Lcom/chad/library/adapter/base/DraggableController;->access$100(Lcom/chad/library/adapter/base/DraggableController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/DraggableController$1;->this$0:Lcom/chad/library/adapter/base/DraggableController;

    invoke-static {v0}, Lcom/chad/library/adapter/base/DraggableController;->access$000(Lcom/chad/library/adapter/base/DraggableController;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    sget v1, Lcom/codelibrary/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
