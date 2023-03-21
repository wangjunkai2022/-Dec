.class public Lcom/manhua/ui/activity/ComicDetailActivity;
.super Lcom/apk/f6;
.source "ComicDetailActivity.java"


# instance fields
.field public final break:Lcom/apk/r5;

.field public case:Z

.field public do:Landroid/view/View;

.field public else:Z

.field public for:Lcom/manhua/data/bean/ComicBean;

.field public goto:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

.field public if:Lcom/apk/z2;

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

.field public mNameTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090054
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
        value = 0x7f0900d9
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

.field public new:Ljava/lang/String;

.field public this:Z

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicDetailActivity$for;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicDetailActivity$for;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->break:Lcom/apk/r5;

    return-void
.end method

.method public static i(Lcom/manhua/ui/activity/ComicDetailActivity;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->this:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->this:Z

    .line 3
    invoke-super {p0, p1}, Lcom/apk/f6;->setImmersionBar(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/manhua/ui/activity/ComicDetailActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->k(Z)V

    return-void
.end method

.method public static l(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c006e

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

    check-cast v0, Lcom/manhua/data/bean/ComicBean;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/apk/w0;->native(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09019d

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090609

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u300a"

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u300b"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicDetailActivity;->p()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f100315

    .line 10
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f100053

    .line 11
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    .line 14
    new-instance v4, Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    invoke-direct {v4}, Lcom/manhua/ui/fragment/ComicDetailDataFragment;-><init>()V

    .line 15
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "comicBean"

    .line 16
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 18
    iput-object v4, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->goto:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    .line 21
    new-instance v4, Lcom/manhua/ui/fragment/ComicDetailDirFragment;

    invoke-direct {v4}, Lcom/manhua/ui/fragment/ComicDetailDirFragment;-><init>()V

    .line 22
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 27
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v4, Lcom/apk/nz;

    .line 28
    invoke-direct {v4, p0, v0, v2}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v3, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 30
    new-instance v2, Lcom/apk/e40;

    iget-object v3, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v2, v3, v4}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 31
    new-instance v3, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/manhua/ui/activity/ComicDetailActivity$do;

    sget-object v2, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    const v3, 0x7f080232

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/manhua/ui/activity/ComicDetailActivity$do;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity;Landroid/content/Context;ILcom/apk/h40$do;)V

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setScrollBar(Lcom/apk/h40;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

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
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/manhua/ui/activity/ComicDetailActivity$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicDetailActivity$if;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    const v1, 0x7f1003a2

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    const v1, 0x7f100389

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 10
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09004e,
            0x7f090057,
            0x7f090050,
            0x7f0900cf,
            0x7f0900d9
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900cf

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900d9

    if-ne v0, v1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->do:Landroid/view/View;

    if-nez p1, :cond_2

    const p1, 0x7f0903db

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->do:Landroid/view/View;

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_2
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 10
    new-instance v0, Lcom/manhua/ui/view/DetailSharePopupView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->do:Landroid/view/View;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0, p0, v1, v2}, Lcom/manhua/ui/view/DetailSharePopupView;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V

    .line 11
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_3

    .line 12
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 14
    :cond_3
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 16
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 17
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto/16 :goto_3

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09004e

    const v2, 0x7f10006c

    if-ne v0, v1, :cond_9

    .line 19
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_5

    return-void

    .line 20
    :cond_5
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 22
    :try_start_0
    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "collectId = ?"

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/o0;->catch(Ljava/lang/String;)V

    const p1, 0x7f1002bc

    .line 25
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_6
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->case:Z

    if-nez p1, :cond_7

    .line 28
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 29
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicDetailActivity;->o()V

    return-void

    .line 30
    :cond_7
    invoke-static {p0, v0}, Lcom/apk/mu;->case(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-static {p1, v1}, Lcom/apk/mu;->w(Lcom/manhua/data/bean/ComicBean;Z)V

    .line 32
    :goto_2
    invoke-virtual {p0, v1}, Lcom/manhua/ui/activity/ComicDetailActivity;->k(Z)V

    goto :goto_3

    .line 33
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090057

    if-ne v0, v1, :cond_c

    .line 34
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_a

    return-void

    .line 35
    :cond_a
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->case:Z

    if-nez p1, :cond_b

    .line 36
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 37
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicDetailActivity;->o()V

    return-void

    .line 38
    :cond_b
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->J(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090050

    if-ne p1, v0, :cond_10

    .line 41
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_d

    return-void

    .line 42
    :cond_d
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->case:Z

    if-nez p1, :cond_e

    .line 43
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 44
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicDetailActivity;->o()V

    return-void

    .line 45
    :cond_e
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->try:Z

    if-nez p1, :cond_f

    .line 46
    invoke-static {p0}, Lcom/apk/mu;->goto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    .line 47
    :cond_f
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/manhua/ui/activity/ComicDetailActivity$new;

    invoke-direct {v5, p0}, Lcom/manhua/ui/activity/ComicDetailActivity$new;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apk/o0;->for(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    :cond_10
    :goto_3
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->else:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->else:Z

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->if:Lcom/apk/z2;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/apk/w;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/g3;

    const-string v4, "SP_HOST_INFO_DEX_MH_KEY"

    invoke-direct {v3, v0, v4}, Lcom/apk/g3;-><init>(Lcom/apk/z2;Ljava/lang/String;)V

    const-wide/32 v4, 0x2bf20

    invoke-static {v1, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->k(Z)V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->if:Lcom/apk/z2;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/apk/z2;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->break:Lcom/apk/r5;

    invoke-direct {p1, p0, v0}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->if:Lcom/apk/z2;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->new:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/apk/w;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v2, Lcom/apk/g3;

    const-string v3, "SP_HOST_INFO_DEX_MH_KEY"

    invoke-direct {v2, p1, v3}, Lcom/apk/g3;-><init>(Lcom/apk/z2;Ljava/lang/String;)V

    const-wide/32 v3, 0x2bf20

    invoke-static {v0, v3, v4, v1, v2}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIconIv:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f080269

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lcom/apk/rm;

    sget-object v4, Lcom/apk/u;->try:Lcom/apk/sm;

    invoke-direct {v2, v0, v4}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 7
    sget-object v4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 8
    invoke-static {v4}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v2}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v3}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object v2

    check-cast v2, Lcom/apk/pi;

    new-instance v3, Lcom/apk/gc0;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v4}, Lcom/apk/gc0;-><init>(II)V

    .line 12
    invoke-static {v3}, Lcom/apk/dr;->continue(Lcom/apk/qj;)Lcom/apk/dr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v2

    new-instance v3, Lcom/apk/vr;

    invoke-direct {v3, v0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, v3}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    .line 14
    invoke-virtual {v0, v1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mNameTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    const v3, 0x7f10042d

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v5}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getUpUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    const v3, 0x7f100073

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicBean;->getUpUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->goto:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    if-eqz v0, :cond_3

    .line 23
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    .line 24
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->do:Lcom/manhua/data/bean/ComicBean;

    .line 25
    invoke-virtual {v0}, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->synchronized()V

    :cond_3
    return-void
.end method
