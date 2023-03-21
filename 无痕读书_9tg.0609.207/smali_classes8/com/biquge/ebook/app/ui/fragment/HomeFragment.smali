.class public Lcom/biquge/ebook/app/ui/fragment/HomeFragment;
.super Lcom/apk/g6;
.source "HomeFragment.java"


# instance fields
.field public case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

.field public do:Lcom/apk/b;

.field public else:Lcom/manhua/ui/fragment/ComicShelfFragment;

.field public for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

.field public goto:Lcom/apk/xp0;

.field public if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

.field public mEditFinishTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090113
    .end annotation
.end field

.field public mShelfMoreIView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field

.field public mShelfSearchIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090226
    .end annotation
.end field

.field public mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090563
    .end annotation
.end field

.field public mTopAdLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ac
    .end annotation
.end field

.field public mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028c
    .end annotation
.end field

.field public mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090228
    .end annotation
.end field

.field public new:Lcom/apk/b40;

.field public try:Lcom/apk/e40;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/apk/da;->this()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->q(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->q(I)V

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;I)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 1
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    const v3, 0x7f100254

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p0

    invoke-static {p0}, Lcom/biquge/ebook/app/ui/activity/ExternalSearchActivity;->i(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object p1

    const v3, 0x7f100134

    if-ne p1, v2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz p1, :cond_a

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 14
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 15
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->goto:Lcom/apk/t4;

    if-eqz p0, :cond_a

    .line 16
    iget-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/apk/r4;

    invoke-direct {v2, p0}, Lcom/apk/r4;-><init>(Lcom/apk/t4;)V

    invoke-static {p1, v1, v2, v0, v4}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v1, :cond_a

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz p1, :cond_a

    .line 18
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 19
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 20
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-eqz p0, :cond_a

    .line 21
    iget-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/apk/n3;

    invoke-direct {v2, p0}, Lcom/apk/n3;-><init>(Lcom/apk/p3;)V

    const/4 p0, 0x0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto/16 :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/apk/eg;->private(Landroid/content/Context;Lcom/apk/et;)V

    goto/16 :goto_0

    .line 23
    :pswitch_4
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object p1

    const v0, 0x7f1003b4

    if-ne p1, v2, :cond_6

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz p1, :cond_a

    .line 29
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 30
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 31
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->goto:Lcom/apk/t4;

    if-eqz p0, :cond_a

    .line 32
    :try_start_0
    invoke-static {}, Lcom/apk/n2;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/apk/t4;->for:Lcom/apk/v5;

    if-eqz p1, :cond_a

    .line 35
    iget-object p1, p0, Lcom/apk/t4;->for:Lcom/apk/v5;

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/v5;->case(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_5
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/q4;

    invoke-direct {v0, p0}, Lcom/apk/q4;-><init>(Lcom/apk/t4;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto/16 :goto_0

    :cond_6
    if-ne p1, v1, :cond_a

    .line 38
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz p1, :cond_a

    .line 39
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 40
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 41
    iget-object p0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-eqz p0, :cond_a

    .line 42
    :try_start_1
    invoke-static {}, Lcom/apk/mu;->synchronized()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 44
    :cond_7
    iget-object p1, p0, Lcom/apk/p3;->for:Lcom/apk/s5;

    if-eqz p1, :cond_a

    .line 45
    iget-object p1, p0, Lcom/apk/p3;->for:Lcom/apk/s5;

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/s5;->try(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_8
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/m3;

    invoke-direct {v0, p0}, Lcom/apk/m3;-><init>(Lcom/apk/p3;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 48
    :cond_9
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/apk/eg;->private(Landroid/content/Context;Lcom/apk/et;)V

    goto :goto_0

    .line 49
    :pswitch_5
    new-instance v1, Lcom/apk/zu$do;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/apk/q0;->if:[Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/apk/da;->break()I

    move-result v5

    new-instance v6, Lcom/apk/ub;

    invoke-direct {v6, p0}, Lcom/apk/ub;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    const/4 v4, 0x0

    .line 52
    invoke-virtual/range {v1 .. v6}, Lcom/apk/zu$do;->new(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;)Lcom/lxj/xpopup/impl/CenterListPopupView;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    .line 54
    :pswitch_6
    invoke-static {}, Lcom/apk/da;->this()I

    move-result v4

    .line 55
    new-instance v0, Lcom/apk/zu$do;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/q0;->do:[Ljava/lang/String;

    new-instance v5, Lcom/apk/tb;

    invoke-direct {v5, p0, v4}, Lcom/apk/tb;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;I)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/apk/zu$do;->new(Ljava/lang/CharSequence;[Ljava/lang/String;[IILcom/apk/xv;)Lcom/lxj/xpopup/impl/CenterListPopupView;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    :pswitch_7
    const/4 p1, -0x1

    .line 58
    invoke-virtual {p0, v4, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->k(ZI)V

    :cond_a
    :goto_0
    return-void

    .line 59
    :cond_b
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public f(Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/MarqueeBean;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c01cb

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f09028d

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->do:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    const/16 v2, 0x3e80

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    const v1, 0x7f09028e

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    const v1, 0x7f09028b

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->for:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p2, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->for:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "SP_TOP_MSG_RED_TAG_KEY"

    .line 11
    invoke-static {p2, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/TopMsgView;->if(Z)V

    .line 13
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/MarqueeBean;

    .line 15
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MarqueeBean;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/MarqueeBean;->getLandingtype()Ljava/lang/String;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<u>"

    const-string v5, "</u>"

    .line 17
    invoke-static {v1, v4, v5}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    :cond_2
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    iget-object p3, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->do:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    .line 20
    iget v1, p3, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->case:I

    iget v4, p3, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->else:I

    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p3, p2}, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->setNotices(Ljava/util/List;)V

    .line 23
    new-instance p2, Lcom/apk/zh;

    invoke-direct {p2, p3, v1, v4}, Lcom/apk/zh;-><init>(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;II)V

    invoke-virtual {p3, p2}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 24
    :goto_3
    iget-object p2, v0, Lcom/biquge/ebook/app/widget/TopMsgView;->do:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    new-instance p3, Lcom/apk/ch;

    invoke-direct {p3, v0, p1}, Lcom/apk/ch;-><init>(Lcom/biquge/ebook/app/widget/TopMsgView;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->setOnItemClickListener(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;)V

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00bc

    return v0
.end method

.method public final h()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/b;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    const v1, 0x800003

    .line 2
    invoke-virtual {v0, v1}, Lcom/apk/b;->setTxtGravity(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    .line 6
    new-instance v3, Lcom/apk/qb;

    invoke-direct {v3, p0}, Lcom/apk/qb;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, v0, Lcom/apk/b;->try:Landroid/app/Activity;

    .line 8
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/synchronized;

    invoke-direct {v4, v0, v2, v3}, Lcom/apk/synchronized;-><init>(Lcom/apk/b;Lorg/json/JSONObject;Lcom/apk/d1;)V

    invoke-virtual {v1, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopAdLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    throw v0
.end method

.method public i(Lcom/apk/hf;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->try:Lcom/apk/e40;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 5
    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 8
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v0

    new-instance v1, Lcom/apk/pb;

    invoke-direct {v1, p0}, Lcom/apk/pb;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    .line 2
    iput-object v1, v0, Lcom/apk/p;->for:Lcom/apk/p$new;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/p;->if(Z)V

    .line 4
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->class()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 8
    iget-object v3, v0, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v0, v0, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    const-string v3, "shelftxtlink"

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->h()V

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 12
    iget-object v3, v0, Lcom/apk/finally;->o:Lorg/json/JSONObject;

    const-string v4, "bannershelf"

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    iget-object v0, v0, Lcom/apk/finally;->o:Lorg/json/JSONObject;

    invoke-static {v0, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 14
    new-instance v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    const/4 v5, 0x0

    .line 15
    invoke-direct {v0, v3, v5}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 17
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->for(Landroid/app/Activity;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopAdLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    :cond_6
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v3

    .line 21
    iget-object v3, v3, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 22
    sget-object v4, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v3, v4, :cond_7

    .line 23
    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {v3}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_7
    sget-object v4, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v3, v4, :cond_8

    .line 26
    new-instance v3, Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {v3}, Lcom/manhua/ui/fragment/ComicShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_8
    sget-object v4, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-ne v3, v4, :cond_9

    .line 29
    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {v3}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v3, Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {v3}, Lcom/manhua/ui/fragment/ComicShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_9
    sget-object v4, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v3, v4, :cond_a

    .line 34
    new-instance v3, Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {v3}, Lcom/manhua/ui/fragment/ComicShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {v3}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;-><init>()V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 39
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    new-instance v4, Lcom/apk/fg;

    invoke-direct {v4}, Lcom/apk/fg;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 40
    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v3

    if-lez v3, :cond_b

    .line 41
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-static {v4, v3}, Lcom/apk/ze;->a0(Landroidx/viewpager/widget/ViewPager;I)V

    .line 42
    :cond_b
    new-instance v3, Lcom/apk/e40;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-direct {v3, v4, v5}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->try:Lcom/apk/e40;

    .line 43
    new-instance v4, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 44
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->try:Lcom/apk/e40;

    const v4, 0x7f100189

    .line 45
    invoke-virtual {v0, v3, v4, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if(Lcom/apk/e40;IZ)V

    .line 46
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 47
    iget-object v3, v0, Lcom/apk/finally;->g:Lorg/json/JSONObject;

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_d

    const v0, 0x7f09023b

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/AdFloatView;

    if-eqz v0, :cond_d

    .line 50
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ad/AdFloatView;->setSourceTag(I)V

    .line 51
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    .line 52
    iget-object v3, v3, Lcom/apk/finally;->g:Lorg/json/JSONObject;

    .line 53
    new-instance v4, Lcom/apk/rb;

    invoke-direct {v4, p0, v0}, Lcom/apk/rb;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;Lcom/biquge/ebook/app/ad/AdFloatView;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/biquge/ebook/app/ad/AdFloatView;->if(Lorg/json/JSONObject;ZLcom/biquge/ebook/app/ad/AdFloatView$for;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :cond_d
    :goto_5
    const-string v0, "WEB_SEARCH_SHELF_RED_TAG_KEY"

    .line 54
    invoke-static {v0, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->m(Z)V

    :cond_e
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getIndicator()Lcom/apk/b40;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setChangeTabListener(Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;)V

    return-void
.end method

.method public final j(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    .line 3
    iput-boolean v1, v0, Lcom/apk/b;->const:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 6
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    .line 9
    iput-boolean v1, v0, Lcom/apk/b;->const:Z

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 12
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 15
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->static:Z

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->x(Z)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 19
    iput-boolean p1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->static:Z

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->u(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public k(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->l(Z)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->import:Lcom/apk/v5;

    invoke-virtual {v0, p1, p2}, Lcom/apk/v5;->new(ZI)V

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v2}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v3}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v3}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->l(Z)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 17
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->native:Lcom/apk/s5;

    invoke-virtual {v0, p1, p2}, Lcom/apk/s5;->for(ZI)V

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v2}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v3}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {p1, v3}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1, v3}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->setEnable(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final l(Z)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfSearchIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfSearchIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mEditFinishTView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final m(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/apk/xp0;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->goto:Lcom/apk/xp0;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfSearchIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const/4 v0, 0x1

    check-cast p1, Lcom/apk/xp0;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1, v1, v0}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    const/4 v0, -0x1

    .line 3
    check-cast p1, Lcom/apk/xp0;

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->goto:Lcom/apk/xp0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 6
    :cond_1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "WEB_SEARCH_SHELF_RED_TAG_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090226,
            0x7f090114,
            0x7f090113
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f090226

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->m(Z)V

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090114

    if-ne v0, v2, :cond_5

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    const/4 v3, 0x5

    if-eqz p1, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    .line 8
    :goto_1
    new-array v4, v4, [Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    .line 9
    :goto_2
    new-array v0, v0, [I

    const v5, 0x7f10019a

    .line 10
    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f0800f0

    .line 11
    aput v5, v0, v1

    const v5, 0x7f10018a

    .line 12
    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f0800f2

    .line 13
    aput v5, v0, v2

    const v2, 0x7f10018b

    .line 14
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const v2, 0x7f0800f4

    .line 15
    aput v2, v0, v5

    const v2, 0x7f10019c

    .line 16
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const v2, 0x7f0800f6

    .line 17
    aput v2, v0, v5

    const v2, 0x7f100198

    .line 18
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    const v2, 0x7f0800ef

    .line 19
    aput v2, v0, v5

    if-eqz p1, :cond_4

    const p1, 0x7f10019d

    .line 20
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const p1, 0x7f0800f7

    .line 21
    aput p1, v0, v3

    const p1, 0x7f100199

    .line 22
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v4, v2

    const p1, 0x7f0800f1

    .line 23
    aput p1, v0, v2

    const p1, 0x7f10019b

    .line 24
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    aput-object p1, v4, v2

    const p1, 0x7f0800f5

    .line 25
    aput p1, v0, v2

    .line 26
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    iput-object v3, v2, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 30
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    .line 31
    iput-object v3, v2, Lcom/apk/lv;->else:Landroid/view/View;

    .line 32
    new-instance v3, Lcom/apk/sb;

    invoke-direct {v3, p0}, Lcom/apk/sb;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    .line 33
    sget-boolean v5, Lcom/apk/zu;->try:Z

    .line 34
    iput-boolean v5, v2, Lcom/apk/lv;->continue:Z

    .line 35
    new-instance v5, Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-direct {v5, p1, v1, v1}, Lcom/lxj/xpopup/impl/AttachListPopupView;-><init>(Landroid/content/Context;II)V

    .line 36
    iput-object v4, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->super:[Ljava/lang/String;

    .line 37
    iput-object v0, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->throw:[I

    .line 38
    iput-object v3, v5, Lcom/lxj/xpopup/impl/AttachListPopupView;->while:Lcom/apk/xv;

    .line 39
    iput-object v2, v5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 40
    invoke-virtual {v5}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090113

    if-ne p1, v0, :cond_6

    const/4 p1, -0x1

    .line 42
    invoke-virtual {p0, v1, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->k(ZI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apk/p;->if(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->do:Lcom/apk/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/b;->for()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->if:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/apk/p;->for:Lcom/apk/p$new;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->j(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/k6;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->j(Z)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->j(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabCurrentItem()I

    move-result p1

    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-static {}, Lcom/apk/w0;->throw()I

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    :cond_0
    return-void
.end method
