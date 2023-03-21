.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;
.super Ljava/lang/Object;
.source "BookStoreRankChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 3
    iput p3, p1, Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;->do:I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->if:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 7
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object p3

    .line 9
    iput-object p3, p2, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->case:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, p2, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->else:Ljava/lang/String;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->k(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
