.class public Lcom/apk/v10;
.super Lcom/apk/c1;
.source "ComicNewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/HomenavmenuBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Z

.field public final synthetic new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->isSc_hide_nav()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/v10;->if:Z

    .line 4
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 5
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getTopTabsIndex()I

    move-result v1

    .line 7
    iput v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->super:I

    .line 8
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getTopTabsStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/v10;->do:Z

    .line 11
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 12
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getMoreapi()Ljava/lang/String;

    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->class:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 16
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getHomenavmenu()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/v10;->for:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 19
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 20
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getBanner()Ljava/util/List;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->this:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 23
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 24
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getTopTabs()Ljava/util/List;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->break:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 27
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/ComicStoreBean;

    .line 28
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ComicStoreBean;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->j(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 31
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->synchronized(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    .line 3
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    iget-boolean v0, p0, Lcom/apk/v10;->if:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const v2, 0x7f090518

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0902bf

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0902bb

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0902bc

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0902be

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f0902bd

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    if-eqz v0, :cond_1

    .line 12
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->break:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 15
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    const/16 p1, 0xc

    .line 16
    invoke-virtual {v1, p1}, Lcom/manhua/data/bean/ComicBean;->setItemType(I)V

    .line 17
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 18
    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    .line 19
    iget-boolean v4, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->try:Z

    .line 20
    iget-boolean v5, p0, Lcom/apk/v10;->do:Z

    .line 21
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->break:Ljava/util/List;

    .line 22
    iput-boolean v0, v2, Lcom/manhua/adapter/ComicNewStoreAdapter;->this:Z

    .line 23
    iput-boolean v4, v2, Lcom/manhua/adapter/ComicNewStoreAdapter;->case:Z

    .line 24
    iput-boolean v5, v2, Lcom/manhua/adapter/ComicNewStoreAdapter;->else:Z

    .line 25
    iput-object p1, v2, Lcom/manhua/adapter/ComicNewStoreAdapter;->goto:Ljava/util/List;

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 27
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->class:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 30
    iput v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->const:I

    .line 31
    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    new-instance v4, Lcom/apk/w10;

    invoke-direct {v4, p1}, Lcom/apk/w10;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 33
    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    if-eqz v2, :cond_7

    .line 34
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 35
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 36
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 37
    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 38
    iget-object v4, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    if-nez v4, :cond_4

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 40
    :cond_4
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->catch:Ljava/util/List;

    .line 41
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_6

    .line 42
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 43
    iget v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->final:I

    .line 44
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le v2, p1, :cond_5

    .line 46
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 47
    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 49
    iput v2, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->final:I

    .line 50
    :cond_5
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 51
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->do:Ljava/util/List;

    .line 52
    iget p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->final:I

    .line 53
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 55
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->if:Lcom/manhua/adapter/ComicNewStoreAdapter;

    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    :cond_7
    iget-object p1, p0, Lcom/apk/v10;->for:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 59
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v0, 0x7f090510

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/v10;->for:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/apk/ze;->w(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/apk/v10;->new:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_9

    .line 65
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_9
    return-void

    .line 66
    :cond_a
    throw v1
.end method
