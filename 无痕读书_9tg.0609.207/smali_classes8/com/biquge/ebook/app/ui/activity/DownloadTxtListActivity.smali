.class public Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;
.super Lcom/apk/f6;
.source "DownloadTxtListActivity.java"


# static fields
.field public static final case:[Ljava/lang/String;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

.field public for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

.field public mDelBt:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field public mEditLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ed
    .end annotation
.end field

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09006c
    .end annotation
.end field

.field public mMoreTagView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09006d
    .end annotation
.end field

.field public new:Z

.field public final try:Lcom/apk/g1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f100399

    .line 1
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10039a

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f10039b

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->case:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->try:Lcom/apk/g1;

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c003f

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0002

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "1"

    .line 2
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->h(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    const-string v1, "2"

    .line 3
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->h(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    const-string v1, "3"

    .line 4
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->h(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->try:Lcom/apk/g1;

    .line 6
    iput-object v3, v2, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    .line 7
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    .line 8
    iput-object v3, v4, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    .line 9
    iput-object v3, v1, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->do:Lcom/apk/g1;

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 14
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 15
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->case:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f09006b

    const v1, 0x7f100137

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mIndicator:Lcom/apk/b40;

    const/16 v1, 0x23

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    .line 4
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->new:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v1}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->l(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mEditLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCanScroll(Z)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->l(Z)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    const v0, 0x7f100192

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final l(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->f(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->f(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->f(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->new:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901ec,
            0x7f0901e9
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901e9

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f0901ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->k()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->k()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->k()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->for:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    goto :goto_0

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->if:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    goto :goto_0

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->do:Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/DownloadTxtListFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    :cond_8
    :goto_0
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

    const-string v0, "REFRESH_DOWNLOAD_TXT_LIST_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->try:Lcom/apk/g1;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mMoreTagView:Landroid/view/View;

    .line 3
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iput-object v3, v2, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 6
    iput-object p1, v2, Lcom/apk/lv;->else:Landroid/view/View;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const v3, 0x7f100397

    .line 7
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    const v3, 0x7f100398

    .line 8
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    const v3, 0x7f100396

    .line 9
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, p1, v4

    const v3, 0x7f10039c

    .line 10
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, p1, v4

    const/4 v3, 0x0

    .line 11
    new-instance v4, Lcom/apk/p7;

    invoke-direct {v4, p0}, Lcom/apk/p7;-><init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V

    .line 12
    sget-boolean v5, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v5, v2, Lcom/apk/lv;->continue:Z

    .line 14
    new-instance v5, Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-direct {v5, p0, v0, v0}, Lcom/lxj/xpopup/impl/AttachListPopupView;-><init>(Landroid/content/Context;II)V

    .line 15
    iput-object p1, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->super:[Ljava/lang/String;

    .line 16
    iput-object v3, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->throw:[I

    .line 17
    iput-object v4, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->while:Lcom/apk/xv;

    .line 18
    iput-object v2, v5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 19
    invoke-virtual {v5}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    .line 20
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :sswitch_2
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->new:Z

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->k(Z)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f090093 -> :sswitch_1
        0x7f090094 -> :sswitch_0
    .end sparse-switch
.end method
