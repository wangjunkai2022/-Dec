.class public Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;
.super Lcom/apk/f6;
.source "ChangeSourceActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;"
        }
    .end annotation
.end field

.field public case:Ljava/lang/String;

.field public catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

.field public do:Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public if:Ljava/lang/String;

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09043a
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090149
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public this:I

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->j()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0035

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bookId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->do:Ljava/lang/String;

    const-string v0, "bookName"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    const-string v0, "author"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->for:Ljava/lang/String;

    const-string v0, "chapterName"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->new:Ljava/lang/String;

    const-string v0, "lastChapterName"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->try:Ljava/lang/String;

    const-string v0, "lastChapterTime"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->case:Ljava/lang/String;

    const-string v0, "readChapterId"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->else:Ljava/lang/String;

    const-string v0, "webSiteBean"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->goto:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;)V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->j()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->if:Ljava/lang/String;

    const v1, 0x7f090147

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "SP_READ_CLOSE_REPEAT_BOOK"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->catch:Lcom/biquge/ebook/app/adapter/ChapterSourceAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DEFAULT"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {p2}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getBookId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/bean/CollectBook;->setCollectId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->else:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance p2, Lcom/apk/lv;

    invoke-direct {p2}, Lcom/apk/lv;-><init>()V

    .line 8
    new-instance p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setNovelId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setAuthor(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setImg(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setDesc(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getFirsturl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setSearchBook(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getLatestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getLatestTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterTime(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getChapters()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->new:Ljava/lang/String;

    invoke-direct {p3, p0, v0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;)V

    .line 26
    instance-of p1, p3, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p1, :cond_2

    .line 27
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 28
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 29
    :cond_2
    instance-of p1, p3, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p1, :cond_3

    .line 30
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 31
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 32
    :cond_3
    instance-of p1, p3, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p1, :cond_4

    .line 33
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 34
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 35
    :cond_4
    instance-of p1, p3, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p1, :cond_5

    .line 36
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 37
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 38
    :cond_5
    instance-of p1, p3, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz p1, :cond_6

    .line 39
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 40
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    .line 41
    :cond_6
    :goto_0
    iput-object p2, p3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 42
    invoke-virtual {p3}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_7
    :goto_1
    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->this:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->break:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/ChangeSourceActivity;->j()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f090084

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900d8

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f10021e

    .line 3
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
