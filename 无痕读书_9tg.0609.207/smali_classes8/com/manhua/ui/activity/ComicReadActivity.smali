.class public Lcom/manhua/ui/activity/ComicReadActivity;
.super Lcom/apk/b7;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/k00;
.implements Lcom/apk/m1;
.implements Lcom/apk/f1;


# static fields
.field public static final protected:Landroid/os/Handler;


# instance fields
.field public abstract:Z

.field public break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

.field public catch:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

.field public class:Landroidx/recyclerview/widget/LinearSmoothScroller;

.field public const:Lcom/apk/f00;

.field public continue:Landroid/view/View;

.field public default:Z

.field public extends:Z

.field public final:Lcom/manhua/data/bean/ComicBean;

.field public final finally:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public import:Z

.field public interface:Lcom/apk/jf;

.field public mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09037f
    .end annotation
.end field

.field public mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090443
    .end annotation
.end field

.field public mNightView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090182
    .end annotation
.end field

.field public mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field

.field public mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090448
    .end annotation
.end field

.field public mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044d
    .end annotation
.end field

.field public native:Lcom/manhua/ui/view/ComicReadDirPopView;

.field public final package:Landroid/view/View$OnTouchListener;

.field public private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

.field public public:Lcom/apk/og;

.field public final return:Ljava/lang/Runnable;

.field public final static:Lcom/manhua/ui/widget/PageRecyclerView$do;

.field public strictfp:Landroid/widget/TextView;

.field public super:Lcom/manhua/data/bean/ComicCollectBean;

.field public switch:Z

.field public this:Lcom/apk/l30;

.field public throw:Z

.field public throws:Z

.field public volatile:Z

.field public while:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/apk/b7;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->throw:Z

    .line 3
    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$const;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$const;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->return:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$do;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->static:Lcom/manhua/ui/widget/PageRecyclerView$do;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->switch:Z

    .line 6
    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->throws:Z

    .line 7
    iput-boolean v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->default:Z

    .line 8
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->extends:Z

    .line 9
    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$if;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$if;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->finally:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 10
    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$for;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$for;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->package:Landroid/view/View$OnTouchListener;

    .line 11
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->volatile:Z

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static G(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/manhua/ui/activity/ComicReadActivity$case;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/manhua/ui/activity/ComicReadActivity$case;-><init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static H(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p3, Lcom/manhua/ui/activity/ComicReadActivity$case;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/manhua/ui/activity/ComicReadActivity$case;-><init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, p3, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static I(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/manhua/ui/activity/ComicReadActivity$else;

    invoke-direct {v0, p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity$else;-><init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static J(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/manhua/ui/activity/ComicReadActivity$goto;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/ComicReadActivity$goto;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/manhua/ui/activity/ComicReadActivity;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity;->v(J)V

    return-void
.end method

.method public static synthetic q(Lcom/manhua/ui/activity/ComicReadActivity;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    return-void
.end method

.method public static r(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void
.end method

.method public synthetic B()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->super(IZZZ)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v1}, Lcom/apk/f00;->switch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/ComicReadMenuView;->setBarrageSendViewVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public C(ZZ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->throw:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->throw:Z

    .line 8
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->t()V

    :cond_4
    return-void
.end method

.method public synthetic D(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/manhua/ui/widget/ComicPageTitleView;->for(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic F(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->native:Lcom/manhua/ui/view/ComicReadDirPopView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/manhua/ui/view/ComicReadDirPopView;

    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->x()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/apk/h10;

    invoke-direct {v6, p0}, Lcom/apk/h10;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/manhua/ui/view/ComicReadDirPopView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/oz;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->native:Lcom/manhua/ui/view/ComicReadDirPopView;

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/apk/f00;->try:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcom/manhua/ui/view/ComicReadDirPopView;->setReadChapterId(Ljava/lang/String;)V

    .line 6
    :goto_1
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->native:Lcom/manhua/ui/view/ComicReadDirPopView;

    .line 8
    instance-of v0, p2, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v0, :cond_2

    .line 9
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 11
    :cond_2
    instance-of v0, p2, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v0, :cond_3

    .line 12
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 14
    :cond_3
    instance-of v0, p2, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v0, :cond_4

    .line 15
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 17
    :cond_4
    instance-of v0, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v0, :cond_5

    .line 18
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 20
    :cond_5
    instance-of v0, p2, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v0, :cond_6

    .line 21
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 22
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    .line 23
    :cond_6
    :goto_2
    iput-object p1, p2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 24
    invoke-virtual {p2}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public abstract()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->abstract:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    return-void
.end method

.method public break()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->abstract()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->g()V

    return-void
.end method

.method public case(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->continue:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f090449

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->continue:Landroid/view/View;

    const v1, 0x7f0600d6

    .line 4
    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->continue:Landroid/view/View;

    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->strictfp:Landroid/widget/TextView;

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->continue:Landroid/view/View;

    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f10029e

    .line 7
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 11
    iget-object v3, v3, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 15
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 16
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 17
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->continue:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->strictfp:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/apk/f00;->this(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public catch()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/apk/f00;->try:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->K(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public class()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f00;->private:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iput-object v1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/apk/f00;->else:I

    .line 8
    invoke-virtual {v0}, Lcom/apk/f00;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/r00;

    invoke-direct {v1, p1}, Lcom/apk/r00;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public do(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/w00;

    invoke-direct {v1, p0, p2, p1}, Lcom/apk/w00;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public else(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mNightView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->this:Lcom/apk/l30;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lcom/apk/l30;->for:I

    .line 3
    iput p2, v0, Lcom/apk/l30;->new:I

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->import:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p1, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {p1}, Lcom/apk/f00;->import()I

    move-result v0

    invoke-virtual {p1, v0, p2, p2}, Lcom/apk/f00;->o(IZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f00;->private:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->static(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v2, Lcom/apk/k00;

    invoke-interface {v2}, Lcom/apk/k00;->import()V

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iput-object v2, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 9
    iput v1, v0, Lcom/apk/f00;->else:I

    .line 10
    invoke-virtual {v0}, Lcom/apk/f00;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->class:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/v20;

    invoke-direct {v0, p0}, Lcom/apk/v20;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->class:Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->class:Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->catch:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->class:Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0072

    return v0
.end method

.method public if(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    return-void
.end method

.method public import()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicReadEndActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
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
    new-instance p1, Lcom/apk/f00;

    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, p0}, Lcom/apk/f00;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/apk/k00;)V

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->z()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->initData()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/manhua/ui/activity/ComicReadActivity;->y(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->super(IZZZ)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/w0;->native(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09019d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090609

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u300b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/receiver/BatteryReceiver;-><init>(Lcom/apk/f1;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_TICK"

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    :cond_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 16
    iget-object v2, v0, Lcom/apk/finally;->interface:Lorg/json/JSONObject;

    const-string v3, "bannerbottom_mh2"

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v0, v0, Lcom/apk/finally;->interface:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0, p0, v3}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->for(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/apk/b7;->k(Ljava/lang/String;Z)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->while:J

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SP_READ_CLOSE_REPEAT_COMIC"

    invoke-static {v1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 4
    iput-object p0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const v1, 0x7f010011

    .line 5
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->new:Landroid/view/animation/Animation;

    .line 6
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const v2, 0x7f010012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->try:Landroid/view/animation/Animation;

    .line 7
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const v2, 0x7f01000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->case:Landroid/view/animation/Animation;

    .line 8
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const v3, 0x7f010010

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->else:Landroid/view/animation/Animation;

    .line 9
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->goto:Landroid/view/animation/Animation;

    .line 10
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->this:Landroid/view/animation/Animation;

    .line 11
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f090455

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->new:Landroid/view/animation/Animation;

    new-instance v2, Lcom/apk/j20;

    invoke-direct {v2, v0}, Lcom/apk/j20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->case:Landroid/view/animation/Animation;

    new-instance v2, Lcom/apk/k20;

    invoke-direct {v2, v0}, Lcom/apk/k20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->try:Landroid/view/animation/Animation;

    new-instance v2, Lcom/apk/l20;

    invoke-direct {v2, v0}, Lcom/apk/l20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 16
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->else:Landroid/view/animation/Animation;

    new-instance v2, Lcom/apk/m20;

    invoke-direct {v2, v0}, Lcom/apk/m20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string v1, "SP_READ_SOURCE_TIPS_KEY"

    const-string v2, ""

    .line 17
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f100091

    .line 19
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const v2, 0x7f090465

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 23
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 24
    iput-object p0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const v0, 0x7f09044a

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    .line 26
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->setOnSizeChangedListener(Lcom/apk/m1;)V

    .line 27
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->finally:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/ZoomRecyclerView;->setEnableScale(Z)V

    .line 29
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 30
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 31
    new-instance v0, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    invoke-direct {v0, p0}, Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->catch:Lcom/manhua/ui/widget/ScrollSpeedLinearLayoutManger;

    .line 32
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->static:Lcom/manhua/ui/widget/PageRecyclerView$do;

    .line 34
    iput-object v1, v0, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    .line 35
    new-instance v0, Lcom/apk/l30;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 36
    iget-object v1, v1, Lcom/apk/f00;->volatile:Lcom/apk/pz;

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/apk/l30;-><init>(Landroid/app/Activity;Lcom/apk/pz;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->this:Lcom/apk/l30;

    .line 38
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->package:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->package:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$this;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$this;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    return-void
.end method

.method public interface()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicPageTitleView;->if()V

    :cond_0
    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "SOURCE_CARTTON_VALUE"

    return-object v0
.end method

.method public native(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f1000db

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public new(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    return-void
.end method

.method public o(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity;->return(ZZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "&"

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x27e5

    if-ne p1, v4, :cond_1

    if-ne p2, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v3, v3}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    .line 3
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/k30;->class()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/apk/eg;->h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    .line 4
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 5
    iget-object p2, p2, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2, v3}, Lcom/apk/k30;->throw(Ljava/lang/String;Z)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    const/16 v4, 0x27e7

    if-ne p1, v4, :cond_4

    if-ne p2, v1, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {p0, v3, v3}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V

    .line 10
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/k30;->class()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/apk/eg;->h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    .line 11
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 12
    iget-object p2, p2, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2, v2}, Lcom/apk/k30;->throw(Ljava/lang/String;Z)V

    .line 14
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p2, ""

    if-eqz p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 15
    iget-object p1, p1, Lcom/apk/f00;->try:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 16
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SP_LIMIT_CHAPTER_KEY_COMIC"

    .line 17
    invoke-static {v0, p2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/apk/e00;->try(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/manhua/ui/activity/ComicReadActivity;->s(ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->return(ZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->import:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/apk/f00;->continue:Z

    .line 5
    :cond_0
    sget-object p1, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcom/apk/u00;

    invoke-direct {v0, p0}, Lcom/apk/u00;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->import:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onDestroy()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->u()V

    .line 3
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->finally:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 9
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 13
    :cond_2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 15
    :cond_3
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 16
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->e()V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    .line 21
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    .line 22
    :cond_6
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v0

    .line 23
    iget-object v2, v0, Lcom/apk/da;->do:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 25
    iput-object v1, v0, Lcom/apk/da;->do:Ljava/util/HashMap;

    .line 26
    :cond_7
    iget-object v2, v0, Lcom/apk/da;->for:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 28
    iput-object v1, v0, Lcom/apk/da;->for:Ljava/util/HashMap;

    .line 29
    :cond_8
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->onDestroy()V

    .line 30
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    const/4 v2, 0x0

    .line 31
    iput-boolean v2, v0, Lcom/apk/k30;->abstract:Z

    .line 32
    iput-boolean v2, v0, Lcom/apk/n0;->break:Z

    .line 33
    iget-object v2, v0, Lcom/apk/n0;->default:Ljava/util/Timer;

    if-eqz v2, :cond_9

    .line 34
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 35
    :cond_9
    sput-object v1, Lcom/apk/k30;->continue:Lcom/apk/k30;

    .line 36
    iget v0, v0, Lcom/apk/n0;->return:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CACHE_COMIC_AD_KEY"

    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 38
    invoke-virtual {v0}, Lcom/apk/d;->try()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "BOOKRE_CHAPTER_PAGE_AD_TYPE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {p1}, Lcom/apk/f00;->d()V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 7
    iput-boolean v3, p1, Lcom/apk/f00;->private:Z

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v4}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v4}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v3}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 11
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v3}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v1, "REFRESH_CARTOON_DOWNLOAD_KEY"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/apk/b7;->if:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do()V

    goto :goto_0

    :cond_4
    const-string v1, "login_action"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object p1, p1, Lcom/apk/mf;->for:[Ljava/lang/Object;

    .line 18
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 20
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_5

    .line 22
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    iget-object v1, p1, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/j00;

    invoke-direct {v1, p1, v4, v3}, Lcom/apk/j00;-><init>(Lcom/apk/f00;ZZ)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    throw p1

    :cond_6
    const-string v1, "EVENT_PJB_SHOW_UPDATE_KEY"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 26
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {p0, v4}, Lcom/apk/b7;->l(Z)Z

    goto :goto_0

    :cond_7
    const-string v1, "SP_READ_CLOSE_REPEAT_COMIC"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    iget-wide v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->while:J

    .line 31
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 32
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_7

    .line 1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    .line 2
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 6
    iget-object p1, p1, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    return v1

    .line 8
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 9
    invoke-static {}, Lcom/apk/da;->return()Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {p1}, Lcom/apk/f00;->d()V

    .line 11
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    :cond_6
    return v1

    :cond_7
    const/16 v2, 0x18

    if-ne p1, v2, :cond_f

    .line 13
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    .line 14
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_8

    return v0

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    return v0

    .line 16
    :cond_9
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    return v1

    .line 17
    :cond_a
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 18
    iget-object p1, p1, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz p1, :cond_b

    .line 19
    iget-object p1, p1, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_1

    :cond_b
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_c

    return v1

    .line 20
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_e

    .line 21
    invoke-static {}, Lcom/apk/da;->return()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    .line 22
    :cond_d
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {p1}, Lcom/apk/f00;->g()V

    .line 23
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 24
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    :cond_e
    return v1

    .line 25
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->y(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 4
    invoke-virtual {v0}, Lcom/apk/f00;->default()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/f00;->p(I)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v1

    .line 8
    iget-boolean v3, v1, Lcom/apk/n0;->this:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v2, v1, Lcom/apk/k30;->abstract:Z

    .line 10
    :goto_0
    iget-boolean v1, v0, Lcom/apk/f00;->this:Z

    if-nez v1, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/b00;

    invoke-direct {v2, v0}, Lcom/apk/b00;-><init>(Lcom/apk/f00;)V

    .line 12
    iget-object v0, v1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 4
    invoke-virtual {v0}, Lcom/apk/f00;->default()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/f00;->p(I)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    .line 8
    iput-boolean v2, v0, Lcom/apk/k30;->abstract:Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/hg;->new()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/apk/hg;->try()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/hg;->goto()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/apk/hg;->for()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->volatile:Z

    if-eq v0, p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->z()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 7
    iget-boolean v0, v0, Lcom/apk/cu;->catch:Z

    invoke-super {p0, v0}, Lcom/apk/f6;->setImmersionBar(Z)V

    .line 8
    :cond_1
    iput-boolean p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->volatile:Z

    return-void
.end method

.method public public(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/og;

    invoke-direct {v0, p0}, Lcom/apk/og;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget v2, v0, Lcom/apk/og;->for:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    .line 8
    iget-object v1, v0, Lcom/apk/og;->do:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v0, Lcom/apk/og;->if:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public return(ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/w0;->native(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->v(J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 3
    iget-object v4, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 4
    iget-object v4, v4, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 6
    iget-wide v4, p0, Lcom/apk/b7;->do:J

    cmp-long p2, v4, v1

    if-eqz p2, :cond_4

    const-string p2, "SP_MHTG2_READ_TIME_KEY"

    const-string v4, "SP_MHTG2_SHELF_SHOW_DIALOG_KEY"

    .line 7
    :try_start_0
    invoke-static {v4, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 8
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v5, :cond_4

    .line 10
    invoke-static {p2, v1, v2}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/apk/b7;->do:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    add-long/2addr v6, v1

    .line 12
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getRead()I

    move-result v1

    const v2, 0xea60

    mul-int v1, v1, v2

    int-to-long v1, v1

    cmp-long v5, v6, v1

    if-ltz v5, :cond_3

    .line 13
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, v4, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "SP_MHTG2_SHOW_DATE_KEY"

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p2, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    .line 18
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/u0;->if()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    return-void

    .line 21
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    const/16 v3, 0xdc

    :cond_7
    int-to-long p1, v3

    .line 23
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/mu;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f10039f

    .line 24
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/manhua/ui/activity/ComicReadActivity$new;

    invoke-direct {v4, p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity$new;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;J)V

    new-instance v5, Lcom/manhua/ui/activity/ComicReadActivity$try;

    invoke-direct {v5, p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity$try;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;J)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/manhua/ui/activity/ComicReadActivity;->v(J)V

    :goto_3
    return-void
.end method

.method public final s(ZZ)V
    .locals 3

    .line 1
    :try_start_0
    iput-boolean p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->abstract:Z

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-nez v0, :cond_2

    const v0, 0x7f090444

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 11
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do(Lcom/apk/hf;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    new-instance v1, Lcom/apk/g10;

    invoke-direct {v1, p0, p2}, Lcom/apk/g10;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setOnRewardBtnCallback(Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;)V

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p2, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if(Z)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p2, v0}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if(Z)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->private:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    :cond_7
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    .line 26
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_9

    .line 27
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    .line 28
    iput-boolean v1, p1, Lcom/apk/n0;->extends:Z

    .line 29
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    if-eqz p1, :cond_9

    .line 32
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    return-void
.end method

.method public strictfp(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_COMIC_READ_SHOW_PAGE_TITLE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public super(IZZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p3, p4}, Lcom/apk/f00;->o(IZZ)V

    :cond_0
    const/4 p3, 0x2

    const/16 p4, 0x8

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 11
    new-instance p1, Lcom/manhua/ui/activity/ComicReadActivity$class;

    invoke-direct {p1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$class;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public switch(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mTitleTView:Lcom/manhua/ui/widget/ComicPageTitleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/manhua/ui/widget/ComicPageTitleView;->for(Ljava/lang/String;II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/apk/v00;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apk/v00;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synchronized()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 3

    const-string v0, "SP_READ_FIRST_GUIDE_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/apk/lv;->finally:Z

    .line 6
    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$catch;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$catch;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    .line 7
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 8
    new-instance v1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    invoke-direct {v1, p0}, Lcom/manhua/ui/widget/ComicReadGuidePopupView;-><init>(Landroid/content/Context;)V

    .line 9
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_0

    .line 10
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 11
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 12
    :cond_0
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_1

    .line 13
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 14
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 15
    :cond_1
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_2

    .line 16
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 17
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_3

    .line 19
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 20
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 21
    :cond_3
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 22
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 23
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 24
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_4
    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->abstract()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->d()V

    return-void
.end method

.method public throw()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->static()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public throws(ZI)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->import:Z

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->import()V

    .line 6
    :cond_1
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lcom/apk/s00;

    invoke-direct {v1, p0, p1}, Lcom/apk/s00;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;Z)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 2
    iput-object p1, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/apk/f00;->else:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/f00;->h()V

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicReadActivity;->u()V

    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->public:Lcom/apk/og;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->return:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final v(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/manhua/ui/activity/ComicReadActivity;->protected:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/t00;

    invoke-direct {v1, p0}, Lcom/apk/t00;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public while(Z)V
    .locals 0

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final y(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "book"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicBean;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    const-string v0, "collectBook"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    const-string v0, "chapterId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$break;

    invoke-direct {v1, p0, p1}, Lcom/manhua/ui/activity/ComicReadActivity$break;-><init>(Lcom/manhua/ui/activity/ComicReadActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->interface:Lcom/apk/jf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/jf;

    invoke-direct {v0, p0}, Lcom/apk/jf;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity;->interface:Lcom/apk/jf;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity;->interface:Lcom/apk/jf;

    invoke-virtual {v1}, Lcom/apk/jf;->do()V

    const/16 v1, 0x400

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1, v1, v0}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    return-void
.end method
