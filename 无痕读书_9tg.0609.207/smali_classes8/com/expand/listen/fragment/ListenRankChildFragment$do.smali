.class public Lcom/expand/listen/fragment/ListenRankChildFragment$do;
.super Ljava/lang/Object;
.source "ListenRankChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/listen/fragment/ListenRankChildFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/listen/fragment/ListenRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$do;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$do;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 2
    iget-object p1, p1, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 3
    iput p3, p1, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$do;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    .line 6
    iget-object p1, p1, Lcom/expand/listen/fragment/ListenRankChildFragment;->do:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 7
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RankListBean;

    .line 8
    iget-object p2, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$do;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 9
    :goto_0
    iput-object p1, p2, Lcom/expand/listen/fragment/ListenRankChildFragment;->try:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$do;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Lcom/expand/listen/fragment/ListenRankChildFragment;->l(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
