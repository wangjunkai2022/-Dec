.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;
.super Lcom/apk/g6;
.source "BookMyListFragment.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

.field public for:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007b
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b1

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "my_release"

    .line 2
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->a(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->do:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "my_draftBox"

    .line 4
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->a(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "my_collect"

    .line 6
    invoke-static {v1}, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->a(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->for:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {}, Lcom/apk/q0;->do()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListFragment;->mIndicator:Lcom/apk/b40;

    const/16 v2, 0x32

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    return-void
.end method
