.class public Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;
.super Lcom/apk/f6;
.source "UploadBookActivity.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public if:Lcom/apk/b40;

.field public mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905e7
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0058

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 4
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {v3}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 7
    invoke-static {v4}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v1, v2, :cond_2

    .line 9
    invoke-static {v3}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v4}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v1

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v1, v2, :cond_3

    .line 13
    invoke-static {v4}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v3}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 16
    :goto_1
    new-instance v2, Lcom/apk/e40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->if:Lcom/apk/b40;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v2, v3, v5}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 17
    new-instance v3, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v3, 0x7f1002f3

    invoke-virtual {v0, v2, v3, v4}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 20
    invoke-virtual {v0, v1, v4}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {p0, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/HeaderView;->getTitleIndicatorView()Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->if:Lcom/apk/b40;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    return-void
.end method
