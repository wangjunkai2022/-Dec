.class public Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;
.super Lcom/apk/f6;
.source "WebHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;
    }
.end annotation


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/xd;

    invoke-direct {v1, p0}, Lcom/apk/xd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "type = ?"

    .line 1
    const-class v1, Lcom/biquge/ebook/app/bean/TxtCollect;

    const-string v2, "SP_WEBVIEW_WEBSITE_HISTORY_KEY"

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url = ? and type = ?"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    new-instance v3, Lcom/biquge/ebook/app/bean/TxtCollect;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/TxtCollect;-><init>()V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v3, p0}, Lcom/biquge/ebook/app/bean/TxtCollect;->setTitle(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, p1}, Lcom/biquge/ebook/app/bean/TxtCollect;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/TxtCollect;->setType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lorg/litepal/crud/LitePalSupport;->save()Z

    .line 7
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/litepal/FluentQuery;->count(Ljava/lang/Class;)I

    move-result p0

    const/16 p1, 0x1e

    if-le p0, p1, :cond_1

    .line 8
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/TxtCollect;

    .line 9
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005d

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/xd;

    invoke-direct {v1, p0}, Lcom/apk/xd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    new-instance v1, Lcom/apk/wd;

    invoke-direct {v1, p0}, Lcom/apk/wd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    const v0, 0x7f100402

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090626

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$for;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_0

    const p1, 0x7f1003ff

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$do;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V

    invoke-virtual {p0, p0, p1, v0}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    :cond_0
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

    const v2, 0x7f100314

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
