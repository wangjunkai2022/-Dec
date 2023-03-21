.class public Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;
.super Lcom/apk/g6;
.source "BookDetailDirFragment.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/bean/Book;

.field public for:Lcom/apk/v3;

.field public if:Lcom/apk/k;

.field public mDirCountTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ee
    .end annotation
.end field

.field public mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090183
    .end annotation
.end field

.field public mDirSortView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ec
    .end annotation
.end field

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090439
    .end annotation
.end field

.field public new:Lcom/apk/c60;

.field public final try:Lcom/apk/u5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->try:Lcom/apk/u5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00ad

    return v0
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->try:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->for:Lcom/apk/v3;

    .line 5
    new-instance v0, Lcom/apk/k;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    new-instance v1, Lcom/apk/va;

    invoke-direct {v1, p0}, Lcom/apk/va;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->for:Lcom/apk/v3;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->do:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apk/v3;->static(Ljava/lang/String;Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->switch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Lcom/apk/c60;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    new-instance v2, Lcom/apk/ua;

    const-string v3, "dir_insert"

    invoke-direct {v2, p0, v3}, Lcom/apk/ua;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/c60;-><init>(Landroid/app/Activity;Lcom/apk/v60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->new:Lcom/apk/c60;

    .line 12
    invoke-virtual {v0}, Lcom/apk/c60;->try()V

    .line 13
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 14
    throw v0

    .line 15
    :cond_4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->throws()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 17
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 18
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 19
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 22
    iput-object v1, v0, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 23
    new-instance v1, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;

    .line 24
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;-><init>(Landroid/app/Activity;)V

    .line 25
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 26
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 27
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 28
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_5
    :goto_1
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public synchronized(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->if:Lcom/apk/k;

    invoke-virtual {p1}, Lcom/apk/k;->getCount()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
