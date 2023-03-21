.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;
.super Ljava/lang/Object;
.source "ComicMainCategoryFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 6
    iget v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->for:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 11
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->else:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 13
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->case:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 15
    iget-object v2, v2, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->goto:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 17
    iget v3, v3, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    .line 18
    invoke-static {v0, p1, v1, v2, v3}, Lcom/apk/w;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 20
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->if:Lcom/apk/z2;

    .line 21
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    .line 22
    iget v1, v1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->try:I

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/apk/z2;->public(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment$try;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
