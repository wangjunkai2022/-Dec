.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;
.super Lcom/apk/f6;
.source "BookDetailActivity.java"


# instance fields
.field public case:Z

.field public do:Landroid/view/View;

.field public else:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

.field public for:Lcom/biquge/ebook/app/bean/Book;

.field public goto:Z

.field public if:Lcom/apk/v3;

.field public mAddOrDelShelfBT:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004e
    .end annotation
.end field

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field public mAuthorTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004f
    .end annotation
.end field

.field public mBlurBgIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field public mIconIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field public mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090171
    .end annotation
.end field

.field public mMajorTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090053
    .end annotation
.end field

.field public mNameTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090054
    .end annotation
.end field

.field public mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090052
    .end annotation
.end field

.field public mToolbarAddShelfBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d9
    .end annotation
.end field

.field public mToolbarBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cf
    .end annotation
.end field

.field public mToolbarLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field public mToolbarShareBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d6
    .end annotation
.end field

.field public mToolbarTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d7
    .end annotation
.end field

.field public mUploadAuthorTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090172
    .end annotation
.end field

.field public new:Z

.field public final this:Lcom/apk/u5;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->this:Lcom/apk/u5;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->goto:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->goto:Z

    .line 3
    invoke-super {p0, p1}, Lcom/apk/f6;->setImmersionBar(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->k(Z)V

    return-void
.end method

.method public static n(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static p(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static q(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static r(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static s(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static u(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002c

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/w0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09019d

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090609

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u300a"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->w()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f100315

    .line 7
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f100053

    .line 8
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 11
    new-instance v5, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    invoke-direct {v5}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;-><init>()V

    .line 12
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    iput-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->else:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 18
    new-instance v5, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    invoke-direct {v5}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;-><init>()V

    .line 19
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 20
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 21
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 24
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v4, Lcom/apk/nz;

    .line 25
    invoke-direct {v4, p0, v0, v3}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v1, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 27
    new-instance v1, Lcom/apk/e40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v3, v4}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 28
    new-instance v3, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$do;

    sget-object v2, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    const v3, 0x7f080232

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Landroid/content/Context;ILcom/apk/h40$do;)V

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setScrollBar(Lcom/apk/h40;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/apk/i40;

    invoke-direct {v1}, Lcom/apk/i40;-><init>()V

    const v2, 0x7f060064

    const v3, 0x7f060073

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/apk/i40;->for(II)Lcom/apk/i40;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41800000    # 16.0f

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/apk/i40;->new(FF)Lcom/apk/i40;

    .line 5
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/apk/b40$try;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    const v1, 0x7f1003a2

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    const v1, 0x7f100389

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 8
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->m()Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09004e,
            0x7f090057,
            0x7f090050,
            0x7f0900cf,
            0x7f0900d9,
            0x7f0900d6
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10006c

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3e9

    const-string v1, "type"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto/16 :goto_3

    .line 7
    :sswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->do:Landroid/view/View;

    if-nez p1, :cond_1

    const p1, 0x7f0903db

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->do:Landroid/view/View;

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 13
    new-instance v0, Lcom/manhua/ui/view/DetailSharePopupView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->do:Landroid/view/View;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v0, p0, v1, v2}, Lcom/manhua/ui/view/DetailSharePopupView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;)V

    .line 14
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_2

    .line 15
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 17
    :cond_2
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 19
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 20
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto/16 :goto_3

    .line 21
    :sswitch_2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_3

    .line 22
    :sswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_3

    return-void

    .line 23
    :cond_3
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->try:Z

    if-nez p1, :cond_4

    .line 24
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 25
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->v()V

    return-void

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b0(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 27
    :sswitch_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_5

    return-void

    .line 28
    :cond_5
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->try:Z

    if-nez p1, :cond_6

    .line 29
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 30
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->v()V

    return-void

    .line 31
    :cond_6
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    if-nez p1, :cond_7

    .line 32
    invoke-static {p0}, Lcom/apk/n2;->else(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 33
    :cond_7
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->m()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;

    invoke-direct {v6, p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$try;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/apk/o0;->do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V

    goto :goto_3

    .line 34
    :sswitch_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_8

    return-void

    .line 35
    :cond_8
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->new:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object p1

    .line 37
    :try_start_0
    const-class v0, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "collectId = ?"

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/o0;->break(Ljava/lang/String;)V

    const p1, 0x7f1002bc

    .line 40
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_9
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->try:Z

    if-nez p1, :cond_a

    .line 43
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 44
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->v()V

    return-void

    .line 45
    :cond_a
    invoke-static {p0, v1}, Lcom/apk/n2;->try(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-static {p1, v2}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 47
    :goto_2
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->k(Z)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004e -> :sswitch_5
        0x7f090050 -> :sswitch_4
        0x7f090057 -> :sswitch_3
        0x7f0900cf -> :sswitch_2
        0x7f0900d6 -> :sswitch_1
        0x7f0900d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->k(Z)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->if:Lcom/apk/v3;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/apk/v3;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->this:Lcom/apk/u5;

    invoke-direct {p1, p0, v0}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->if:Lcom/apk/v3;

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/apk/w;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/u3;

    invoke-direct {v2, p1}, Lcom/apk/u3;-><init>(Lcom/apk/v3;)V

    const-wide/32 v3, 0x2bf20

    invoke-static {v0, v3, v4, v1, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->case:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->case:Z

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->if:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->l()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/apk/w;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/u3;

    invoke-direct {v3, v0}, Lcom/apk/u3;-><init>(Lcom/apk/v3;)V

    const-wide/32 v4, 0x2bf20

    invoke-static {v1, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIconIv:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/apk/u;->while(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mNameTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    const v3, 0x7f10042d

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getUpUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    const v3, 0x7f100073

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/Book;->getUpUser()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getMajorCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mMajorTv:Landroid/widget/TextView;

    const v3, 0x7f100074

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/Book;->getMajorCharacters()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mMajorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getTagJson()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 16
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "#"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 21
    aget-object v5, v4, v1

    .line 22
    aget-object v4, v4, v2

    const v6, 0x7f0c00fb

    const/4 v7, 0x0

    .line 23
    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09034b

    .line 24
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v8, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;

    invoke-direct {v8, p0, v4, v5}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 28
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->else:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->else:Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 32
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->try:Lcom/biquge/ebook/app/bean/Book;

    .line 33
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDataFragment;->synchronized()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    return-void
.end method
