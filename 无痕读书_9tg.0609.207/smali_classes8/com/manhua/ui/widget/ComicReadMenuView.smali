.class public Lcom/manhua/ui/widget/ComicReadMenuView;
.super Landroid/widget/FrameLayout;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/apk/n1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/ComicReadMenuView$case;
    }
.end annotation


# instance fields
.field public break:Lcom/apk/k00;

.field public case:Landroid/view/animation/Animation;

.field public catch:Lcom/apk/f00;

.field public class:Lcom/manhua/data/bean/ComicBean;

.field public const:Lcom/manhua/data/bean/ComicCollectBean;

.field public do:Landroid/app/Activity;

.field public else:Landroid/view/animation/Animation;

.field public final:Z

.field public for:Lcom/manhua/ui/widget/ComicReadMenuView$case;

.field public goto:Landroid/view/animation/Animation;

.field public if:Lcom/apk/hg;

.field public import:Landroid/view/Window;

.field public mBarrageSendView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045e
    .end annotation
.end field

.field public mBarrageSwitchView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090445
    .end annotation
.end field

.field public mBrightnessSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field public mChapterSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field

.field public mDayNightTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fe
    .end annotation
.end field

.field public mDefuaultLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field public mMoreView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045a
    .end annotation
.end field

.field public mPageLandTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ff
    .end annotation
.end field

.field public mPageTypeLeft:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090600
    .end annotation
.end field

.field public mPageTypeRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090602
    .end annotation
.end field

.field public mPageTypeUpDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090604
    .end annotation
.end field

.field public mScreenTView:Ljava/util/List;
    .annotation runtime Lbutterknife/BindViews;
        value = {
            0x7f090447,
            0x7f090446
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public mSetLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010a
    .end annotation
.end field

.field public mSwitchButton:Lcom/biquge/ebook/app/widget/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090452
    .end annotation
.end field

.field public mSystemBrightTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ee
    .end annotation
.end field

.field public mTitleTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090454
    .end annotation
.end field

.field public mTopLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010f
    .end annotation
.end field

.field public mVolumeFlipCB:Lcom/biquge/ebook/app/widget/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013e
    .end annotation
.end field

.field public final native:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

.field public new:Landroid/view/animation/Animation;

.field public final public:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

.field public return:Landroid/view/View;

.field public final static:Lcom/apk/bg;

.field public super:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;"
        }
    .end annotation
.end field

.field public this:Landroid/view/animation/Animation;

.field public throw:Z

.field public try:Landroid/view/animation/Animation;

.field public while:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$for;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/ComicReadMenuView$for;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->native:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    .line 3
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$new;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/ComicReadMenuView$new;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->public:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

    .line 4
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$try;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/ComicReadMenuView$try;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->static:Lcom/apk/bg;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c008c

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public static case(Lcom/manhua/ui/widget/ComicReadMenuView;Landroid/app/Activity;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->class(Landroid/app/Activity;Z)V

    .line 2
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/u0;->if()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    iget-object p0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p0

    .line 5
    invoke-static {p1, p0, v1, v0}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/manhua/ui/widget/ComicReadMenuView;->class(Landroid/app/Activity;Z)V

    .line 8
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apk/u0;->if()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    invoke-static {p1, v1, v1, v0}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic else(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookImage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBarrageInputHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBookAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getBookImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getBookName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static goto(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 5
    new-instance v1, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    iget-object p0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->public:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

    invoke-direct {v1, v2, p0}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;-><init>(Landroid/app/Activity;Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;)V

    .line 6
    instance-of p0, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p0, :cond_0

    .line 7
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 9
    :cond_0
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    .line 11
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 12
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public static synthetic if(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookAuthor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic try(Lcom/manhua/ui/widget/ComicReadMenuView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBarrageInputHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final break()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/apk/k00;->abstract()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public catch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->for:Lcom/manhua/ui/widget/ComicReadMenuView$case;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public class(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->import:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->import:Landroid/view/Window;

    :cond_0
    const/16 p1, 0x800

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->import:Landroid/view/Window;

    invoke-virtual {p2, p1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->import:Landroid/view/Window;

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->import:Landroid/view/Window;

    invoke-virtual {p2, p1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public const()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->throw:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->else:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->this:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method

.method public do()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->this()V

    return-void
.end method

.method public final(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 4
    :cond_0
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/p20;

    invoke-direct {v0, p0}, Lcom/apk/p20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public import()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageLandTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageLandTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 15
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v3, :cond_4

    .line 17
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v3

    .line 19
    iget v3, v3, Lcom/apk/u0;->if:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 21
    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v3, :cond_3

    .line 22
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v1

    .line 24
    iget v1, v1, Lcom/apk/u0;->if:I

    goto :goto_2

    :cond_2
    move v1, v0

    .line 25
    :goto_2
    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void

    .line 26
    :cond_3
    throw v1

    .line 27
    :cond_4
    throw v1

    .line 28
    :cond_5
    throw v1
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090451,
            0x7f09045d,
            0x7f09045a,
            0x7f0900ff,
            0x7f0900ef,
            0x7f09045e,
            0x7f0900fe,
            0x7f090109,
            0x7f090604,
            0x7f090600,
            0x7f090602,
            0x7f0900f7,
            0x7f0900fd,
            0x7f090455,
            0x7f090447,
            0x7f090446,
            0x7f0900ee,
            0x7f090445
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "SP_READ_SCREEN_LAND_PORT_KEY"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const p1, 0x7f10028c

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/manhua/ui/widget/ComicReadMenuView;->switch(I)V

    .line 4
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto/16 :goto_0

    :sswitch_1
    const p1, 0x7f10028b

    .line 5
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/manhua/ui/widget/ComicReadMenuView;->switch(I)V

    .line 7
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto/16 :goto_0

    :sswitch_2
    const p1, 0x7f100289

    .line 8
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 9
    invoke-virtual {p0, v4}, Lcom/manhua/ui/widget/ComicReadMenuView;->switch(I)V

    .line 10
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto/16 :goto_0

    .line 11
    :sswitch_3
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 12
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$do;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/ComicReadMenuView$do;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 13
    :sswitch_4
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->break()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->while:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const p1, 0x7f100319

    .line 15
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_2

    .line 17
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    iget-object v1, p1, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/j00;

    invoke-direct {v1, p1, v4, v4}, Lcom/apk/j00;-><init>(Lcom/apk/f00;ZZ)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 18
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->while:J

    goto/16 :goto_0

    .line 19
    :sswitch_5
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->break()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->for:Lcom/manhua/ui/widget/ComicReadMenuView$case;

    if-nez p1, :cond_4

    .line 21
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$case;

    invoke-direct {p1, p0, v3}, Lcom/manhua/ui/widget/ComicReadMenuView$case;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;Lcom/apk/j20;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->for:Lcom/manhua/ui/widget/ComicReadMenuView$case;

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->for:Lcom/manhua/ui/widget/ComicReadMenuView$case;

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_0

    .line 23
    :sswitch_6
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 24
    new-instance p1, Lcom/manhua/ui/widget/ComicReadMenuView$if;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/ComicReadMenuView$if;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    const-wide/16 v0, 0x104

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 25
    :sswitch_7
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    invoke-interface {p1, v4, v4}, Lcom/apk/k00;->return(ZZ)V

    goto/16 :goto_0

    .line 26
    :sswitch_8
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_6

    .line 28
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v0, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/16 v0, 0xdc

    invoke-interface {p1, v4, v0}, Lcom/apk/k00;->throws(ZI)V

    goto/16 :goto_0

    .line 30
    :cond_6
    throw v3

    .line 31
    :sswitch_9
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 32
    :cond_7
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_8

    .line 33
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/16 v0, 0x104

    invoke-interface {p1, v2, v0}, Lcom/apk/k00;->throws(ZI)V

    goto/16 :goto_0

    .line 35
    :cond_8
    throw v3

    .line 36
    :sswitch_a
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v1, :cond_a

    .line 37
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v1

    .line 38
    invoke-direct {p1, v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;-><init>(Landroid/app/Activity;Z)V

    .line 39
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 40
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->native:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->setOnBarrageConfigListener(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;)V

    .line 41
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_9

    .line 42
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-nez p1, :cond_12

    .line 43
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto/16 :goto_0

    .line 44
    :cond_9
    throw v3

    .line 45
    :cond_a
    throw v3

    .line 46
    :sswitch_b
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->goto:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_b

    .line 49
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-nez p1, :cond_12

    .line 50
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_12

    .line 51
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->try:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 52
    :cond_b
    throw v3

    .line 53
    :sswitch_c
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->break()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 54
    :cond_c
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 55
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    .line 56
    :cond_d
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->catch()V

    goto/16 :goto_0

    .line 57
    :sswitch_d
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz p1, :cond_e

    .line 58
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 59
    invoke-static {p1}, Lcom/apk/da;->switch(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->super()V

    goto :goto_0

    .line 61
    :cond_e
    throw v3

    .line 62
    :sswitch_e
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->break()Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    .line 63
    :cond_f
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->final()V

    goto :goto_0

    .line 64
    :sswitch_f
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->break()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 65
    :cond_10
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    invoke-interface {p1}, Lcom/apk/k00;->class()V

    goto :goto_0

    .line 66
    :sswitch_10
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/mu;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 67
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apk/mu;->goto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f1000c7

    .line 68
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f1000c6

    .line 69
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 70
    new-instance v1, Lcom/apk/zu$do;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/apk/i20;

    invoke-direct {v2, p0, p1}, Lcom/apk/i20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;Z)V

    .line 71
    invoke-virtual {v1, v3, v0, v2}, Lcom/apk/zu$do;->do(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/apk/xv;)Lcom/lxj/xpopup/impl/BottomListPopupView;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_0

    .line 73
    :sswitch_11
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    invoke-virtual {p1}, Lcom/apk/hg;->if()Z

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/apk/hg;->case(Z)V

    .line 75
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    invoke-virtual {p1}, Lcom/apk/hg;->try()V

    .line 76
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->this()V

    :cond_12
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900ee -> :sswitch_11
        0x7f0900ef -> :sswitch_10
        0x7f0900f7 -> :sswitch_f
        0x7f0900fd -> :sswitch_e
        0x7f0900fe -> :sswitch_d
        0x7f0900ff -> :sswitch_c
        0x7f090109 -> :sswitch_b
        0x7f090445 -> :sswitch_a
        0x7f090446 -> :sswitch_9
        0x7f090447 -> :sswitch_8
        0x7f090451 -> :sswitch_7
        0x7f090455 -> :sswitch_6
        0x7f09045a -> :sswitch_5
        0x7f09045d -> :sswitch_4
        0x7f09045e -> :sswitch_3
        0x7f090600 -> :sswitch_2
        0x7f090602 -> :sswitch_1
        0x7f090604 -> :sswitch_0
    .end sparse-switch
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public public()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/h20;

    invoke-direct {v1, p0}, Lcom/apk/h20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 4
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;

    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;-><init>(Landroid/content/Context;)V

    .line 7
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_0

    .line 8
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_0
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_1

    .line 11
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_1
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_2

    .line 14
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_2
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_3

    .line 17
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_3
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 20
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 21
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 22
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public return(Lcom/manhua/data/bean/ComicBean;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    .line 2
    iput-object p2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTitleTView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBarrageSendViewVisible(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 2
    iget-boolean v0, v0, Lcom/apk/f00;->strictfp:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->throw:Z

    .line 5
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->new:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->case:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const-string v1, "SP_READ_SHOW_BARRAGE_GUIDE_KEY"

    .line 11
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    new-instance v0, Lcom/apk/g20;

    invoke-direct {v0, p0}, Lcom/apk/g20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    const-wide/16 v1, 0x104

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/apk/k00;->else(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    const-string v2, "#D81E06"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0802b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/apk/k00;->else(Z)V

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0802af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .line 11
    :cond_1
    throw v1
.end method

.method public final switch(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2, v2, v1}, Lcom/apk/k00;->super(IZZZ)V

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->while()V

    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    invoke-virtual {v0}, Lcom/apk/hg;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public throw()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    const v2, 0x7f1000db

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/da;->super(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/n20;

    invoke-direct {v2, p0}, Lcom/apk/n20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    :cond_1
    new-instance v0, Lcom/apk/hg;

    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/apk/hg;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    .line 9
    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2, p0}, Lcom/apk/hg;->do(Landroid/widget/SeekBar;Lcom/apk/n1;)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->if:Lcom/apk/hg;

    invoke-virtual {v0}, Lcom/apk/hg;->try()V

    .line 11
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->this()V

    .line 12
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->super()V

    .line 13
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->import()V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "SP_COMIC_READ_SHOW_PAGE_TITLE_KEY"

    .line 15
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSwitchButton:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 17
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    invoke-interface {v1, v0}, Lcom/apk/k00;->strictfp(Z)V

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSwitchButton:Lcom/biquge/ebook/app/widget/SwitchButton;

    new-instance v1, Lcom/apk/q20;

    invoke-direct {v1, p0}, Lcom/apk/q20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mVolumeFlipCB:Lcom/biquge/ebook/app/widget/SwitchButton;

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v1, :cond_4

    .line 20
    invoke-static {}, Lcom/apk/da;->return()Z

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mVolumeFlipCB:Lcom/biquge/ebook/app/widget/SwitchButton;

    new-instance v1, Lcom/apk/r20;

    invoke-direct {v1, p0}, Lcom/apk/r20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    .line 23
    invoke-virtual {p0}, Lcom/manhua/ui/widget/ComicReadMenuView;->while()V

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/apk/o20;

    invoke-direct {v1, p0}, Lcom/apk/o20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 25
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 26
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    invoke-virtual {v1}, Lcom/apk/f00;->default()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 27
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->setBarrageSendViewVisible(Z)V

    goto :goto_0

    .line 30
    :cond_2
    throw v2

    :cond_3
    :goto_0
    return-void

    .line 31
    :cond_4
    throw v2

    .line 32
    :cond_5
    throw v2
.end method

.method public final while()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method
