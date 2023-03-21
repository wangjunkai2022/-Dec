.class public Lcom/apk/bc;
.super Lcom/apk/c1;
.source "NewStoreFragment.java"


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

.field public final synthetic new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/StoreBean;->isSc_hide_nav()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/bc;->do:Z

    .line 4
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean;->getTopTabsIndex()I

    move-result v1

    .line 7
    iput v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->super:I

    .line 8
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/StoreBean;->getTopTabsStyle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/bc;->if:Z

    .line 11
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 12
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean;->getMoreapi()Ljava/lang/String;

    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->class:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/StoreBean;->getHomenavmenu()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/bc;->for:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 19
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 20
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean;->getBanner()Ljava/util/List;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->this:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 23
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 24
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean;->getTopTabs()Ljava/util/List;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->break:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 27
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->goto:Lcom/biquge/ebook/app/bean/StoreBean;

    .line 28
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->i(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->catch:Ljava/util/List;

    .line 31
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V

    .line 3
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    iget-boolean v0, p0, Lcom/apk/bc;->do:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const v2, 0x7f090518

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f090517

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f09051a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f090519

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v2, 0x7f090509

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->import:Lcom/apk/bg;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    if-eqz v0, :cond_1

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->break:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 14
    new-instance v1, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    const/16 p1, 0xc

    .line 15
    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    .line 16
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 17
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->if:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    .line 18
    iget-boolean v4, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->try:Z

    .line 19
    iget-boolean v5, p0, Lcom/apk/bc;->if:Z

    .line 20
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->break:Ljava/util/List;

    .line 21
    iput-boolean v0, v2, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->this:Z

    .line 22
    iput-boolean v4, v2, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->case:Z

    .line 23
    iput-boolean v5, v2, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->else:Z

    .line 24
    iput-object p1, v2, Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->goto:Ljava/util/List;

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 26
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->class:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 29
    iput v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->const:I

    .line 30
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->if:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    new-instance v4, Lcom/apk/cc;

    invoke-direct {v4, p1}, Lcom/apk/cc;-><init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 32
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->if:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    if-eqz v2, :cond_7

    .line 33
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->do:Ljava/util/List;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 35
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 36
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->do:Ljava/util/List;

    .line 37
    iget-object v4, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->catch:Ljava/util/List;

    if-nez v4, :cond_4

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->catch:Ljava/util/List;

    .line 39
    :cond_4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->catch:Ljava/util/List;

    .line 40
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_6

    .line 41
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 42
    iget v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->final:I

    .line 43
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->do:Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le v2, p1, :cond_5

    .line 45
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 46
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->do:Ljava/util/List;

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 48
    iput v2, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->final:I

    .line 49
    :cond_5
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 50
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->do:Ljava/util/List;

    .line 51
    iget p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->final:I

    .line 52
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 54
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->if:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    :cond_7
    iget-object p1, p0, Lcom/apk/bc;->for:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 57
    :try_start_1
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 58
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->for:Lcom/biquge/ebook/app/widget/ScrollHeaderLayout;

    const v0, 0x7f090510

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/bc;->for:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/apk/ze;->w(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/apk/bc;->new:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_9

    .line 64
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_9
    return-void

    .line 65
    :cond_a
    throw v1
.end method
