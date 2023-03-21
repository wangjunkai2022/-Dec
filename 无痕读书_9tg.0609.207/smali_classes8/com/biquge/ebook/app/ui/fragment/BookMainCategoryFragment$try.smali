.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;
.super Ljava/lang/Object;
.source "BookMainCategoryFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    const/4 v0, 0x1

    .line 4
    iput v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 8
    iget v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->for:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->else:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 13
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->case:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 15
    iget v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    .line 16
    invoke-static {v0, p1, v1, v2}, Lcom/apk/w;->switch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 18
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->if:Lcom/apk/v3;

    .line 19
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 20
    iget v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->try:I

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->dataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
