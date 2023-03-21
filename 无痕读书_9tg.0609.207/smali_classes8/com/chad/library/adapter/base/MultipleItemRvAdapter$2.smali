.class public Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;
.super Ljava/lang/Object;
.source "MultipleItemRvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->bindClick(Lcom/chad/library/adapter/base/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

.field public final synthetic val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

    invoke-static {v1}, Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->access$000(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 5
    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

    iget-object v2, v2, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onClick(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V

    return-void
.end method
