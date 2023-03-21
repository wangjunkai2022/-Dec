.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.super Lcom/apk/b7;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/l2;
.implements Lcom/apk/m1;
.implements Lcom/apk/f1;


# static fields
.field public static final A:Landroid/os/Handler;


# instance fields
.field public a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

.field public abstract:Z

.field public b:Z

.field public break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

.field public c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

.field public catch:Lcom/apk/h2;

.field public class:Lcom/biquge/ebook/app/bean/Book;

.field public const:Lcom/biquge/ebook/app/bean/CollectBook;

.field public continue:Z

.field public d:Landroid/view/View;

.field public default:Z

.field public e:Landroid/widget/TextView;

.field public extends:Lcom/apk/og;

.field public final f:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

.field public final:Ljava/lang/String;

.field public final finally:Ljava/lang/Runnable;

.field public g:I

.field public h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

.field public i:Ljava/io/File;

.field public final implements:Landroid/view/View$OnTouchListener;

.field public import:Lcom/apk/g0;

.field public final instanceof:Lcom/apk/bg;

.field public interface:Ljava/lang/String;

.field public j:Lcom/biquge/ebook/app/widget/AppCheckBox;

.field public k:Z

.field public final l:Lcom/apk/e1;

.field public m:Ljava/lang/String;

.field public mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field public mBookPageTextView:Lcom/biquge/ebook/app/widget/BookPageTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090110
    .end annotation
.end field

.field public mBookTitleTextView:Lcom/biquge/ebook/app/widget/BookTitleTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e0
    .end annotation
.end field

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field public mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090443
    .end annotation
.end field

.field public mNightView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dc
    .end annotation
.end field

.field public mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044a
    .end annotation
.end field

.field public mRecyclerLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044c
    .end annotation
.end field

.field public mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044b
    .end annotation
.end field

.field public mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044d
    .end annotation
.end field

.field public n:Landroid/content/Intent;

.field public native:Ljava/lang/String;

.field public o:Landroid/media/AudioManager;

.field public p:Z

.field public package:Z

.field public private:Z

.field public final protected:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public public:Z

.field public q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final r:Ljava/lang/Runnable;

.field public return:I

.field public final s:Ljava/lang/Runnable;

.field public static:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strictfp:Ljava/lang/String;

.field public super:Z

.field public switch:J

.field public synchronized:I

.field public t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

.field public this:Lcom/apk/l30;

.field public throw:Z

.field public throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

.field public u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

.field public v:I

.field public volatile:Z

.field public w:Lcom/apk/jf;

.field public while:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/apk/b7;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super:Z

    .line 3
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throws;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->finally:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->package:Z

    .line 5
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->private:Z

    .line 6
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->abstract:Z

    .line 7
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->continue:Z

    .line 8
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->protected:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$new;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->implements:Landroid/view/View$OnTouchListener;

    .line 10
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->instanceof:Lcom/apk/bg;

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I

    .line 12
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    .line 13
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->l:Lcom/apk/e1;

    .line 14
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    .line 15
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$const;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 16
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$final;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$final;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$super;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$super;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s:Ljava/lang/Runnable;

    .line 18
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x:Z

    return-void
.end method

.method public static synthetic A(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->J(J)V

    return-void
.end method

.method public static synthetic B(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->goto()V

    return-void
.end method

.method public static synthetic C(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static Z(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$import;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$import;-><init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;

    invoke-direct {v0, p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;-><init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static b0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$static;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$static;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;-><init>(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g0()V

    return-void
.end method

.method public static q(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e0(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/z8;

    invoke-direct {v1, p0, p1}, Lcom/apk/z8;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    .line 4
    iget-object p0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic r(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e0(Z)V

    return-void
.end method

.method public static synthetic s(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->O()V

    return-void
.end method

.method public static synthetic t(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V

    return-void
.end method

.method public static u(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    const v1, 0x7f100391

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p0, v2, v1}, Lcom/apk/b1;->for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/g9;

    invoke-direct {v1, p0}, Lcom/apk/g9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 5
    invoke-static {}, Lcom/apk/ze;->V()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static v(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->goto()V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/apk/h2;->y:Z

    .line 7
    iput-boolean v1, v0, Lcom/apk/h2;->e:Z

    .line 8
    iget-object v2, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v2, :cond_2

    .line 9
    iput-boolean v1, v2, Lcom/apk/import;->import:Z

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setTtsVoice(Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->y()V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->x()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->transient()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1, v0}, Lcom/apk/h2;->final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V

    .line 20
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d0()V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->do(ZZ)V

    .line 22
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i0()V

    .line 23
    iput v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return:I

    :goto_0
    return-void
.end method

.method public static w(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->do(ZZ)V

    return-void
.end method

.method public static x(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    :cond_0
    return-void
.end method

.method public static y(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/apk/i9;

    invoke-direct {v0, p0}, Lcom/apk/i9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_1

    .line 6
    monitor-exit p0

    goto :goto_0

    .line 7
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    invoke-virtual {v0}, Lcom/apk/g0;->try()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static z(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/g0;->if()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case()V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for()V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->transient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->switch()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/apk/h2;->s(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->const()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 11
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-static {v3}, Lcom/apk/ze;->o0(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setImage(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    .line 15
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 16
    invoke-virtual {v1, v2}, Lcom/apk/h2;->p(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static(Z)V

    .line 20
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1, v0}, Lcom/apk/h2;->D(Z)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->m:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "LOAD_FAILED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/apk/n2;->i(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "1"

    .line 8
    invoke-static {p1, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0x400

    const/4 v1, 0x0

    if-le p2, v0, :cond_9

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit16 p2, p2, 0x1f4

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1f4

    if-eqz v0, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 12
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_8

    mul-int/lit16 v3, v2, 0x1f4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v4, v2, 0x1f4

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_6

    move-object v3, v1

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_7

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_8
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    .line 19
    :cond_9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    new-instance v3, Lcom/baidu/tts/client/SpeechSynthesizeBag;

    invoke-direct {v3}, Lcom/baidu/tts/client/SpeechSynthesizeBag;-><init>()V

    .line 23
    invoke-virtual {v3, v2}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->setText(Ljava/lang/String;)I

    .line 24
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_a
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v1, :cond_c

    .line 26
    invoke-virtual {v1, p1, p2}, Lcom/apk/g0;->new(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    .line 29
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 30
    iput-boolean v0, p1, Lcom/apk/r0;->abstract:Z

    goto :goto_3

    .line 31
    :cond_b
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz p2, :cond_c

    .line 32
    invoke-virtual {p2, p1, v1}, Lcom/apk/g0;->new(Ljava/lang/String;Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    .line 35
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 36
    iput-boolean v0, p1, Lcom/apk/r0;->abstract:Z

    :cond_c
    :goto_3
    return-void

    :cond_d
    :goto_4
    const p1, 0x7f10009a

    .line 37
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 38
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->K()V

    return-void
.end method

.method public F(ZZ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-nez v0, :cond_1

    const v0, 0x7f090444

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 6
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do(Lcom/apk/hf;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;

    invoke-direct {v1, p0, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$case;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->setOnRewardBtnCallback(Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p2, v1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p2, v0}, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if(Z)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    .line 16
    :cond_4
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V

    const p1, 0x7f100047

    .line 18
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    :cond_7
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 24
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_9

    .line 25
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 26
    iput-boolean v1, p1, Lcom/apk/n0;->extends:Z

    .line 27
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz p1, :cond_8

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    return-void
.end method

.method public final G()V
    .locals 8

    const-string v0, "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/apk/zu$do;

    invoke-direct {v2, p0}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iget-object v3, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v1, v3, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 6
    iput-object v1, v3, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 8
    iget-object v3, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v1, v3, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v1, 0x7f10032b

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f100395

    .line 10
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$goto;

    invoke-direct {v5, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$goto;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    new-instance v6, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$this;

    invoke-direct {v6, p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$this;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    const v7, 0x7f0c00a1

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/apk/zu$do;->else(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;I)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/da;->const()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v1

    .line 3
    iget-boolean v1, v1, Lcom/apk/u0;->for:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v1

    .line 5
    iget v1, v1, Lcom/apk/u0;->do:I

    .line 6
    iput v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    iput v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v1

    .line 9
    iget v1, v1, Lcom/apk/u0;->do:I

    .line 10
    iput v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    if-eqz v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    iget v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v3

    .line 16
    iget-boolean v3, v3, Lcom/apk/u0;->for:Z

    if-eqz v3, :cond_3

    .line 17
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v3

    .line 18
    iget v3, v3, Lcom/apk/u0;->do:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 19
    :goto_1
    iget v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 20
    throw v0

    .line 21
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    .line 22
    iput v2, v1, Lcom/apk/h2;->r:I

    .line 23
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    .line 24
    iget v2, v0, Lcom/apk/u0;->do:I

    .line 25
    :cond_6
    iget-object v0, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarView:Lcom/biquge/ebook/app/widget/StatusBarView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 26
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarView:Lcom/biquge/ebook/app/widget/StatusBarView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final I()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->finally:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final J(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/c9;

    invoke-direct {v1, p0}, Lcom/apk/c9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/apk/g0;->do()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget v1, v0, Lcom/apk/g0;->for:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/apk/c0;->case()V

    .line 6
    iget-object v0, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 9
    iget-object v1, v1, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->release()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    .line 13
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    .line 14
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v1

    .line 15
    iput-boolean v0, v1, Lcom/apk/r0;->abstract:Z

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final()V

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->strictfp()V

    .line 18
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 19
    iput-boolean v0, v1, Lcom/apk/h2;->y:Z

    .line 20
    iput-boolean v0, v1, Lcom/apk/h2;->e:Z

    .line 21
    iget-object v2, v1, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v2, :cond_2

    .line 22
    iput-boolean v0, v2, Lcom/apk/import;->import:Z

    .line 23
    :cond_2
    iget-object v1, v1, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setTtsVoice(Z)V

    .line 24
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->o:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 25
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->m:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->transient()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    new-instance v1, Lcom/apk/a9;

    invoke-direct {v1, p0}, Lcom/apk/a9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v1, :cond_4

    .line 30
    sget-object v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 31
    new-instance v2, Lcom/apk/v8;

    invoke-direct {v2, p0}, Lcom/apk/v8;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    if-eqz v1, :cond_5

    .line 33
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_5
    :goto_3
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v1

    .line 36
    iput-boolean v0, v1, Lcom/apk/s0;->new:Z

    return-void
.end method

.method public final L()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final N()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setBgImage(Ljava/io/File;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    iget v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setBgColor(I)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apk/h2;->s(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final O()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i:Ljava/io/File;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/g2;->class()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/apk/da;->import()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/g2;->goto()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v4, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setNightMode(Z)V

    .line 8
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v4, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setEyeMode(Z)V

    .line 9
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    if-nez v3, :cond_2

    .line 10
    invoke-static {}, Lcom/apk/g2;->super()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v3

    iput-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object v4

    .line 15
    iput v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    .line 16
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/apk/ca;->try(I)V

    .line 17
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/a6;->try()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/apk/rt;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i:Ljava/io/File;

    .line 18
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-static {v4, v3}, Lcom/apk/u;->static(Ljava/io/File;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const-string v4, "6"

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object v4

    .line 22
    iput v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    .line 23
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/apk/ca;->try(I)V

    .line 24
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i:Ljava/io/File;

    .line 25
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-static {v4, v3}, Lcom/apk/u;->static(Ljava/io/File;Landroid/view/View;)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgColor()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h:Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getfColor()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    .line 29
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 30
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    iget v5, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    invoke-virtual {v3, v5}, Lcom/manhua/ui/widget/PublicLoadingView;->setBgColor(I)V

    .line 31
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/apk/ca;->try(I)V

    .line 32
    :goto_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->N()V

    .line 33
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v3, :cond_6

    .line 34
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->setThemeDayNight(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method public final P()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->w:Lcom/apk/jf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/jf;

    invoke-direct {v0, p0}, Lcom/apk/jf;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->w:Lcom/apk/jf;

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/da;->const()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->w:Lcom/apk/jf;

    invoke-virtual {v4}, Lcom/apk/jf;->do()V

    .line 6
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->w:Lcom/apk/jf;

    if-eqz v4, :cond_4

    .line 8
    :try_start_0
    iget-object v5, v4, Lcom/apk/jf;->do:Landroid/app/Activity;

    if-eqz v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2

    .line 9
    iget-object v5, v4, Lcom/apk/jf;->do:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v5, :cond_2

    .line 10
    :try_start_1
    iget-object v6, v4, Lcom/apk/jf;->do:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 11
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 12
    iget-object v4, v4, Lcom/apk/jf;->do:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x404

    .line 14
    invoke-virtual {v5, v4}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 15
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 16
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/16 v4, 0x800

    .line 19
    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x106000c

    .line 20
    invoke-virtual {p0, p0, v1}, Lcom/apk/f6;->setWindowStatusBarColor(Landroid/app/Activity;I)V

    .line 21
    :goto_1
    invoke-static {}, Lcom/apk/da;->throw()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-static {p0, v3, v3, v0}, Lcom/apk/u0;->for(Landroid/app/Activity;ZZZ)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 23
    throw v0
.end method

.method public synthetic Q(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->goto()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->l0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic R()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void
.end method

.method public synthetic S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apk/h2;->s(I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/h2;->K()V

    :cond_0
    return-void
.end method

.method public synthetic V(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super:Z

    .line 3
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :goto_0
    return-void
.end method

.method public W(Z)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v0, 0x0

    const-string v1, "SP_SHOW_CHAPTER_CHANGE_SOURCE_POPUP_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 4
    iput-object v1, p1, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 5
    new-instance v1, Lcom/apk/l9;

    invoke-direct {v1, p0}, Lcom/apk/l9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 6
    iput-object v1, p1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 7
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebChangeSourcePopupView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v1, p0, v0}, Lcom/biquge/ebook/app/ui/view/WebChangeSourcePopupView;-><init>(Landroid/content/Context;Z)V

    .line 8
    instance-of v0, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v0, :cond_1

    .line 9
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v0, :cond_2

    .line 12
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v0, :cond_3

    .line 15
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v0, :cond_4

    .line 18
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 20
    :cond_4
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v0, p1, Lcom/apk/lv;->continue:Z

    .line 22
    :goto_0
    iput-object p1, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g0()V

    :goto_1
    return-void
.end method

.method public synthetic Y()V
    .locals 2

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScrollSpeed(I)V

    return-void
.end method

.method public break()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/apk/da;->class()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->this()V

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->u()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-nez v0, :cond_1

    const v0, 0x7f090464

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/apk/aa;

    iget v2, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do:I

    iget v3, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->if:I

    iget-object v4, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/apk/aa;-><init>(IILandroid/view/ViewGroup;Lcom/apk/y9$if;)V

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 7
    iput-object v1, v0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setBookReadPresenter(Lcom/apk/h2;)V

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->N()V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setTouchListener(Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->setOnDrawMoveListener(Lcom/apk/i1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public case(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f090449

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d:Landroid/view/View;

    .line 4
    iget v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d:Landroid/view/View;

    const v1, 0x7f09030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e:Landroid/widget/TextView;

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d:Landroid/view/View;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/apk/h2;->break(Landroid/widget/TextView;)V

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 5
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    if-nez v3, :cond_1

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    new-instance v3, Lcom/apk/j9;

    invoke-direct {v3, p0}, Lcom/apk/j9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Lcom/apk/h1;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v3, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new(Ljava/lang/String;)V

    .line 9
    iget-object v0, v3, Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;->this:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 10
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for(I)V

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->u:Lcom/biquge/ebook/app/ui/webread/view/WebBookReadDirPopView;

    .line 13
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_3

    .line 14
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 16
    :cond_3
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_4

    .line 17
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 19
    :cond_4
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_5

    .line 20
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 22
    :cond_5
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_6

    .line 23
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 25
    :cond_6
    instance-of v2, v1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v2, :cond_7

    .line 26
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 27
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 28
    :cond_7
    :goto_1
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 29
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_2

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v3, :cond_9

    .line 31
    iget-object v2, v3, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 32
    :cond_9
    invoke-virtual {p0, v0, v2, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f0(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public class()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/h2;->z()V

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/apk/h2;->g:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lcom/apk/h2;->goto:I

    .line 10
    invoke-virtual {v0}, Lcom/apk/h2;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public const(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/b9;

    invoke-direct {v0, p1}, Lcom/apk/b9;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->transient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->o:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->o:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->o:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public default(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e0(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/apk/g0;->do()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, v0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    goto :goto_2

    .line 7
    :cond_1
    iget v1, v0, Lcom/apk/g0;->for:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/apk/c0;->case()V

    .line 10
    iget-object v0, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, v1, Lcom/apk/f0;->new:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v2, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    .line 16
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/apk/f6;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/apk/f6;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public do(ZZ)V
    .locals 0

    .line 1
    new-instance p2, Lcom/apk/w8;

    invoke-direct {p2, p0, p1}, Lcom/apk/w8;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1, v0}, Lcom/apk/h2;->final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V

    :cond_0
    return-void
.end method

.method public final e0(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    invoke-virtual {p1}, Lcom/apk/g0;->for()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setPauseOrResumeVoice(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    invoke-virtual {p1}, Lcom/apk/g0;->if()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setPauseOrResumeVoice(Z)V

    .line 7
    :goto_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->i0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public else(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mNightView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mNightView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mNightView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mNightView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mNightView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public extends()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->w()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->transient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apk/h2;->s(I)V

    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->this:Lcom/apk/l30;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lcom/apk/l30;->for:I

    .line 3
    iput p2, v0, Lcom/apk/l30;->new:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_6

    .line 5
    iget-object v0, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 6
    :try_start_0
    iget v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    sub-int/2addr p2, v0

    .line 7
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->while:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/apk/finally;->case()I

    move-result v1

    :cond_2
    sub-int/2addr p2, v1

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/apk/u0;->for:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/apk/u0;->do:I

    sub-int/2addr p1, v0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/apk/h2;->J(FF)V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->catch()V

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->I()V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->for()V

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->O()V

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->new()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 23
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->M()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    invoke-direct {v6, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 3
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v7

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/h1;Z)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/apk/h2;->case:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 6
    :goto_0
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result p2

    .line 7
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    .line 9
    :cond_2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    if-eq v1, p2, :cond_3

    .line 10
    iput-boolean p2, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch()V

    .line 12
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final()V

    .line 13
    iget-object p2, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    if-eqz p2, :cond_4

    .line 14
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    invoke-virtual {p2, p1, v1}, Lcom/apk/k;->new(Ljava/lang/String;Z)V

    :cond_4
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw(Z)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class(Z)V

    .line 17
    :goto_1
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 18
    new-instance p2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;

    invoke-direct {p2, p0, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$while;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V

    .line 19
    iput-object p2, p1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 20
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 21
    instance-of p3, p2, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p3, :cond_5

    .line 22
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 23
    iput-boolean p3, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 24
    :cond_5
    instance-of p3, p2, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p3, :cond_6

    .line 25
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 26
    iput-boolean p3, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 27
    :cond_6
    instance-of p3, p2, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p3, :cond_7

    .line 28
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 29
    iput-boolean p3, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 30
    :cond_7
    instance-of p3, p2, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p3, :cond_8

    .line 31
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 32
    iput-boolean p3, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 33
    :cond_8
    instance-of p3, p2, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz p3, :cond_9

    .line 34
    sget-boolean p3, Lcom/apk/zu;->try:Z

    .line 35
    iput-boolean p3, p1, Lcom/apk/lv;->continue:Z

    .line 36
    :cond_9
    :goto_2
    iput-object p1, p2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 37
    invoke-virtual {p2}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public final()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/h2;->z()V

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/apk/h2;->g:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v2, Lcom/apk/l2;

    invoke-interface {v2}, Lcom/apk/l2;->import()V

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iput-object v2, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 11
    iput v1, v0, Lcom/apk/h2;->goto:I

    .line 12
    invoke-virtual {v0}, Lcom/apk/h2;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public finally()V
    .locals 4

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/d9;

    invoke-direct {v1, p0}, Lcom/apk/d9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_SHOW_CHAPTER_RELOAD_POPUP_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {v1, p0, v2}, Lcom/biquge/ebook/app/ui/view/WebReloadPopupView;-><init>(Landroid/content/Context;Z)V

    .line 6
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_1

    .line 7
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 9
    :cond_1
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_2

    .line 10
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 11
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 12
    :cond_2
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_3

    .line 13
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 14
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 15
    :cond_3
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_4

    .line 16
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 17
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 18
    :cond_4
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 20
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 21
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002e

    return v0
.end method

.method public final goto()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->do(ZZ)V

    return-void
.end method

.method public final h0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {}, Lcom/apk/da;->goto()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-wide/32 v0, 0x1b7740

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-wide/32 v0, 0x36ee80

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 6
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 7
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    .line 8
    :cond_6
    :goto_0
    sget-object v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v2, :cond_7

    .line 9
    sget-object v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_7
    sget-object v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 11
    sget-object v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    new-instance v3, Lcom/apk/y8;

    invoke-direct {v3, p0}, Lcom/apk/y8;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final i0()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/app/BaiDuVoiceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    const-string v1, "bookName"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 5
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CollectBook;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    const-string v1, "isPauseReadAloud"

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->n:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public if(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    return-void
.end method

.method public implements()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v2, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100050

    .line 3
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 5
    invoke-virtual {v2}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2}, Lcom/apk/h2;->package(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v3}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apk/h2;->final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "LOAD_FAILED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v2, 0x7f100046

    .line 9
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    if-nez v2, :cond_5

    const v2, 0x7f090487

    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 13
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/ScrollPaintView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 14
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->f:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setScrollPaintCompleteListener(Lcom/biquge/ebook/app/widget/ScrollPaintView$do;)V

    .line 15
    :cond_5
    iget v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 16
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->default()I

    move-result v2

    iput v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->const()I

    move-result v2

    if-nez v2, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->D()V

    goto :goto_1

    :cond_7
    if-ne v2, v1, :cond_8

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 20
    iput-boolean v1, v2, Lcom/apk/h2;->w:Z

    .line 21
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super(IZZZ)V

    goto :goto_1

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 23
    iput-boolean v1, v0, Lcom/apk/h2;->w:Z

    .line 24
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super(IZZZ)V

    :goto_1
    return-void
.end method

.method public import()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v1

    const-string v2, "isNight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/apk/da;->import()Z

    move-result v1

    const-string v2, "isEye"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/apk/h2;

    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, p0}, Lcom/apk/h2;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/apk/l2;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->implements:Landroid/view/View$OnTouchListener;

    .line 4
    iput-object v0, p1, Lcom/apk/h2;->m:Landroid/view/View$OnTouchListener;

    .line 5
    iget-object v1, p1, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 6
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->goto:Landroid/view/View$OnTouchListener;

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p1, Lcom/apk/h2;->m:Landroid/view/View$OnTouchListener;

    .line 9
    iput-object p1, v0, Lcom/apk/v9;->while:Landroid/view/View$OnTouchListener;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->P()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->initData()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/Book;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    const-string v1, "collectBook"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    const-string v1, "chapterId"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->final:Ljava/lang/String;

    const-string v1, "EXTRA_WEB_BEAN_KEY"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 7
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/k9;

    invoke-direct {v1, p0}, Lcom/apk/k9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k0(I)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/w0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09019d

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090609

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->O()V

    .line 15
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 16
    iget-object v1, v0, Lcom/apk/finally;->protected:Lorg/json/JSONObject;

    const-string v2, "bannerbottom"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v0, v0, Lcom/apk/finally;->protected:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 18
    :try_start_1
    iput-boolean v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->while:Z

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->setThemeDayNight(Z)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0, p0, v2}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->for(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    if-nez v0, :cond_3

    .line 23
    new-instance v0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/receiver/BatteryReceiver;-><init>(Lcom/apk/f1;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->switch:J

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SP_READ_CLOSE_REPEAT_BOOK"

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->setOnSizeChangedListener(Lcom/apk/m1;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 5
    iput-object p0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const v1, 0x7f010011

    .line 6
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final:Landroid/view/animation/Animation;

    .line 7
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const v2, 0x7f010012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->super:Landroid/view/animation/Animation;

    .line 8
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const v2, 0x7f01000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw:Landroid/view/animation/Animation;

    .line 9
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const v3, 0x7f010010

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->while:Landroid/view/animation/Animation;

    .line 10
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->import:Landroid/view/animation/Animation;

    .line 11
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native:Landroid/view/animation/Animation;

    .line 12
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->return:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 14
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->super:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->switch:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->while:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throws:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string v1, "SP_READ_SOURCE_TIPS_KEY"

    const-string v2, ""

    .line 16
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f100091

    .line 18
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f090465

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 22
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 23
    iput-object p0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case:Lcom/apk/l2;

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->protected:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/ReadLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/ReadLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 29
    iput-object v1, v0, Lcom/manhua/ui/widget/PageRecyclerView;->for:Lcom/manhua/ui/widget/PageRecyclerView$do;

    .line 30
    new-instance v0, Lcom/apk/l30;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 31
    iget-object v1, v1, Lcom/apk/h2;->n:Lcom/apk/pz;

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/apk/l30;-><init>(Landroid/app/Activity;Lcom/apk/pz;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->this:Lcom/apk/l30;

    .line 33
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->implements:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->implements:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->instanceof:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setCallBackListener(Lcom/apk/bg;)V

    .line 36
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->H()V

    return-void
.end method

.method public interface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BookPageTextView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/BookPageTextView;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/apk/h2;->super:Lcom/biquge/ebook/app/widget/BookPageTextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1, v0}, Lcom/apk/h2;->D(Z)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class()V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case()V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for()V

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static(Z)V

    .line 8
    iget v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 10
    iput-boolean v3, v0, Lcom/apk/h2;->x:Z

    .line 11
    iget v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->super(IZZZ)V

    const/4 v0, 0x1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->transient()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v3}, Lcom/apk/h2;->switch()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/apk/h2;->s(I)V

    :cond_1
    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d()V

    .line 15
    :cond_2
    iput v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->synchronized:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final k0(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setPageType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final l0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/apk/g0;->do()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, v0, Lcom/apk/g0;->if:Lcom/apk/yb0;

    goto :goto_2

    .line 7
    :cond_1
    iget v1, v0, Lcom/apk/g0;->for:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/apk/c0;->case()V

    .line 10
    iget-object v0, v0, Lcom/apk/g0;->do:Lcom/apk/c0;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    invoke-virtual {v1, p1}, Lcom/apk/f0;->do(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p1

    .line 15
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "SOURCE_NOVEL_VALUE"

    return-object v0
.end method

.method public native(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

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
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    return-void
.end method

.method public o(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return(ZZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x27e5

    if-ne p1, v4, :cond_1

    if-ne p2, v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v3, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    .line 3
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/r0;->class()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/apk/eg;->h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    .line 4
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 5
    iget-object p2, p2, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2, v3}, Lcom/apk/r0;->throw(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x27e7

    if-ne p1, v4, :cond_3

    if-ne p2, v2, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {p0, v3, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    .line 10
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/r0;->class()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/apk/eg;->h(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    .line 11
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 12
    iget-object p2, p2, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2, v1}, Lcom/apk/r0;->throw(Ljava/lang/String;Z)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x3ff

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_5

    .line 16
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-static {p0, p1}, Lcom/apk/eg;->import(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 19
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 20
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->finally:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->setCotomImage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x288

    if-ne p1, p2, :cond_5

    .line 23
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz p1, :cond_5

    .line 24
    invoke-static {}, Lcom/apk/da;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->l0(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->return(ZZ)V

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
    :try_start_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->default:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->H()V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/apk/h2;->k:Z

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw()V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setBarrageSendViewVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->default:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->I()V

    .line 4
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->protected:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->break:Lcom/biquge/ebook/app/receiver/BatteryReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->default()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->q()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->new()V

    .line 14
    :cond_3
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->A:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    :cond_4
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v0

    .line 17
    iget-object v2, v0, Lcom/apk/da;->do:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 19
    iput-object v1, v0, Lcom/apk/da;->do:Ljava/util/HashMap;

    .line 20
    :cond_5
    iget-object v2, v0, Lcom/apk/da;->for:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 22
    iput-object v1, v0, Lcom/apk/da;->for:Ljava/util/HashMap;

    .line 23
    :cond_6
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->onDestroy()V

    .line 24
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, v0, Lcom/apk/r0;->continue:Z

    .line 26
    iput-boolean v2, v0, Lcom/apk/n0;->break:Z

    .line 27
    iget-object v2, v0, Lcom/apk/n0;->default:Ljava/util/Timer;

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 29
    :cond_7
    sput-object v1, Lcom/apk/r0;->strictfp:Lcom/apk/r0;

    .line 30
    iget v0, v0, Lcom/apk/n0;->return:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CACHE_NOVEL_AD_KEY"

    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 32
    invoke-virtual {v0}, Lcom/apk/d;->try()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "backgorund_view_id"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->O()V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 5
    iget-object v0, p1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/apk/v1;

    invoke-direct {v1, p1}, Lcom/apk/v1;-><init>(Lcom/apk/h2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->transient()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz p1, :cond_18

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->if()V

    goto/16 :goto_2

    :cond_1
    const-string v1, "interval_view_action"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result p1

    if-nez p1, :cond_18

    .line 12
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/ca;->new()V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    goto/16 :goto_2

    :cond_2
    const-string v1, "refresh_read_font"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 16
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 17
    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    .line 18
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/ca;->for(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->catch()V

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    goto/16 :goto_2

    :cond_3
    const-string v1, "SEND_IMPORT_MESSAGE_ACTION"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "1"

    if-eqz v1, :cond_6

    .line 22
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_18

    .line 23
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "2"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const v0, 0x7f100166

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "3"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 30
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    const v0, 0x7f10025c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "BOOKREAD_IMMERSION_READ"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->P()V

    .line 33
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/u0;->if()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw()V

    .line 37
    :cond_8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->H()V

    .line 38
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    if-eqz p1, :cond_18

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/apk/ea;

    invoke-direct {v1, p1}, Lcom/apk/ea;-><init>(Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    const-string v1, "CHANGE_SOURCE_KEY"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_18

    .line 43
    iget-object v0, p1, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 44
    iget-object p1, p1, Lcom/apk/h2;->this:Lcom/apk/g2;

    .line 45
    iget-object p1, p1, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz p1, :cond_a

    .line 46
    invoke-static {v3, v0}, Lcom/apk/g2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->G()V

    .line 48
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 49
    iput v2, p1, Lcom/apk/h2;->goto:I

    .line 50
    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    goto/16 :goto_2

    :cond_b
    const-string v1, "SWITCH_FOREGROUND_KEY"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    .line 52
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 53
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 54
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p1, :cond_18

    .line 55
    :try_start_1
    invoke-virtual {p1}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 56
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p1

    xor-int/2addr p1, v3

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_d

    .line 57
    invoke-static {v0}, Lcom/apk/h2;->private(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_e

    :cond_d
    const/4 v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_1
    if-eqz v2, :cond_18

    .line 59
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->catch()V

    .line 60
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    goto/16 :goto_2

    :cond_f
    const-string v1, "BOOKRE_CHAPTER_PAGE_AD_TYPE"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 62
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    goto/16 :goto_2

    .line 64
    :cond_10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->default()I

    move-result p1

    if-ne p1, v0, :cond_11

    .line 65
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->L()Z

    goto :goto_2

    .line 66
    :cond_11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1, v3}, Lcom/apk/h2;->p(Z)V

    goto :goto_2

    .line 67
    :cond_12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 68
    iput-boolean v2, p1, Lcom/apk/h2;->g:Z

    .line 69
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v3}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 70
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v3}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    goto :goto_2

    .line 71
    :cond_13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v2}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    .line 72
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v2}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    goto :goto_2

    :cond_14
    const-string v1, "REFRESH_CHANGE_VOICE_KEY"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 74
    invoke-virtual {p0, v3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->e0(Z)V

    goto :goto_2

    :cond_15
    const-string v1, "SP_TTS_SHOW_REWARD_DIALOG_KEY"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 76
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apk/s0;->this(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->K()V

    goto :goto_2

    :cond_16
    const-string v1, "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 79
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->G()V

    goto :goto_2

    :cond_17
    const-string v1, "SP_READ_CLOSE_REPEAT_BOOK"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 81
    iget-wide v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->switch:J

    .line 82
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 83
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_18

    .line 84
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_18
    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-nez v0, :cond_8

    const/16 v0, 0x19

    if-ne p1, v0, :cond_8

    .line 2
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 3
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 7
    iget-object p1, p1, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p1, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 10
    invoke-static {}, Lcom/apk/da;->return()Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->transient()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->L()Z

    goto :goto_1

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 14
    invoke-virtual {p1, v1}, Lcom/apk/h2;->p(Z)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    :cond_7
    return v2

    .line 17
    :cond_8
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-nez v0, :cond_11

    const/16 v0, 0x18

    if-ne p1, v0, :cond_11

    .line 18
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    .line 19
    iget-boolean p1, p1, Lcom/apk/n0;->extends:Z

    if-eqz p1, :cond_9

    return v1

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    return v1

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    return v2

    .line 22
    :cond_b
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 23
    iget-object p1, p1, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz p1, :cond_c

    .line 24
    iget-object p1, p1, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_d

    return v2

    .line 25
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_10

    .line 26
    invoke-static {}, Lcom/apk/da;->return()Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    .line 27
    :cond_e
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->transient()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->M()Z

    goto :goto_3

    .line 29
    :cond_f
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {p1}, Lcom/apk/h2;->u()V

    .line 30
    :goto_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 31
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    :cond_10
    return v2

    .line 32
    :cond_11
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

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 4
    invoke-virtual {v0}, Lcom/apk/h2;->protected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/h2;->N(I)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v1

    .line 8
    iget-boolean v3, v1, Lcom/apk/n0;->this:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v2, v1, Lcom/apk/r0;->continue:Z

    .line 10
    :goto_0
    iget-boolean v1, v0, Lcom/apk/h2;->static:Z

    if-nez v1, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/w1;

    invoke-direct {v2, v0}, Lcom/apk/w1;-><init>(Lcom/apk/h2;)V

    .line 12
    iget-object v1, v1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget v1, v0, Lcom/apk/h2;->throws:I

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/apk/h2;->throws:I

    .line 17
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v2

    new-instance v3, Lcom/apk/f2;

    invoke-direct {v3, v1, v0}, Lcom/apk/f2;-><init>(Ljava/lang/String;I)V

    .line 18
    iget-object v0, v2, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 4
    invoke-virtual {v0}, Lcom/apk/h2;->protected()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/h2;->N(I)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    .line 8
    iput-boolean v2, v0, Lcom/apk/r0;->continue:Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/hg;->new()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/apk/hg;->try()V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->static:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class()V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static(Z)V

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->h0()V

    .line 19
    :cond_6
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_8

    .line 20
    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/apk/g0;->for()V

    .line 23
    :cond_7
    iput-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->p:Z

    .line 24
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->d0()V

    :cond_8
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/b7;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mAdViewBanner:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->this:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/hg;->goto()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->catch:Lcom/apk/hg;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/apk/hg;->for()V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static(Z)V

    :cond_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_7

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x:Z

    if-eq v0, p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->P()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 7
    iget-boolean v0, v0, Lcom/apk/cu;->catch:Z

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->setImmersionBar(Z)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->y:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->y:Z

    const-string v1, "SP_BOOK_READ_FIRST_GUIDE_KEY"

    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    .line 13
    sget-object v2, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 14
    iput-object v2, v1, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 15
    iput-boolean v0, v1, Lcom/apk/lv;->finally:Z

    .line 16
    new-instance v2, Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;-><init>(Landroid/content/Context;)V

    .line 17
    instance-of v3, v2, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v3, :cond_2

    .line 18
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 20
    :cond_2
    instance-of v3, v2, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v3, :cond_3

    .line 21
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 22
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 23
    :cond_3
    instance-of v3, v2, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v3, :cond_4

    .line 24
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 25
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 26
    :cond_4
    instance-of v3, v2, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v3, :cond_5

    .line 27
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 28
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 29
    :cond_5
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 30
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    .line 31
    :goto_0
    iput-object v1, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 32
    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 33
    :cond_6
    new-instance v1, Lcom/apk/v3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    .line 34
    invoke-static {}, Lcom/apk/w;->catch()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/y3;

    const-string v5, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v4, v1, v5}, Lcom/apk/y3;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    const-wide/32 v5, 0x240c8400

    invoke-static {v2, v5, v6, v3, v4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 35
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/apk/b7;->k(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->G()V

    .line 37
    :cond_7
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x:Z

    return-void
.end method

.method public package()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->D()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/apk/h2;->w:Z

    return-void
.end method

.method public private(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->private()V

    .line 3
    new-instance v0, Lcom/apk/x8;

    invoke-direct {v0, p0, p1}, Lcom/apk/x8;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public protected(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->default:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public public(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/og;

    invoke-direct {v0, p0}, Lcom/apk/og;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 6
    iget v2, v0, Lcom/apk/og;->for:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->extends:Lcom/apk/og;

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
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/w0;->public(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->J(J)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->K()V

    const p1, 0x7f1000b2

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V

    const p1, 0x7f100047

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    .line 11
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 12
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    return-void

    :cond_5
    if-eqz p2, :cond_7

    .line 14
    iget-wide v4, p0, Lcom/apk/b7;->do:J

    cmp-long p2, v4, v1

    if-eqz p2, :cond_7

    const-string p2, "SP_XSTG2_READ_TIME_KEY"

    const-string v4, "SP_XSTG2_SHELF_SHOW_DIALOG_KEY"

    .line 15
    :try_start_0
    invoke-static {v4, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 16
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    .line 17
    iget-object v5, v5, Lcom/apk/continue;->break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v5, :cond_7

    .line 18
    invoke-static {p2, v1, v2}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/apk/b7;->do:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    add-long/2addr v6, v1

    .line 20
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getRead()I

    move-result v1

    const v2, 0xea60

    mul-int v1, v1, v2

    int-to-long v1, v1

    cmp-long v5, v6, v1

    if-ltz v5, :cond_6

    .line 21
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, v4, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "SP_XSTG2_SHOW_DATE_KEY"

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 24
    :cond_6
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p2, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    if-nez p1, :cond_9

    .line 26
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/u0;->if()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/apk/da;->throw()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    return-void

    .line 29
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    const/16 v3, 0xdc

    :cond_a
    int-to-long p1, v3

    .line 31
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f10039f

    .line 32
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;

    invoke-direct {v4, p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$native;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;J)V

    new-instance v5, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$public;

    invoke-direct {v5, p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$public;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;J)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto :goto_3

    .line 33
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->J(J)V

    :goto_3
    return-void
.end method

.method public setImmersionBar(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->setImmersionBar(Z)V

    return-void
.end method

.method public super(IZZZ)V
    .locals 10

    if-eqz p2, :cond_d

    .line 1
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    .line 2
    iput v0, p2, Lcom/apk/h2;->interface:I

    if-eqz p3, :cond_2

    .line 3
    sget-object p3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "read_page_animation"

    invoke-virtual {p3, v1, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p3, p2, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz p3, :cond_0

    .line 5
    iput p1, p3, Lcom/apk/v9;->case:I

    .line 6
    :cond_0
    iget-object p3, p2, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz p3, :cond_1

    .line 7
    iput p1, p3, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->if:I

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/apk/h2;->z()V

    :cond_2
    const/4 p3, 0x1

    if-eqz p4, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/apk/h2;->catch()V

    .line 10
    iget p4, p2, Lcom/apk/h2;->goto:I

    .line 11
    invoke-virtual {p2, p4, p3}, Lcom/apk/h2;->B(IZ)V

    goto/16 :goto_2

    .line 12
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p2, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 14
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p2, v3}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {p2, v3}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v3

    .line 17
    invoke-virtual {p2, v3, v0}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v3

    .line 18
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {p2, v2, v0}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, p2, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-virtual {v3}, Lcom/apk/import;->for()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 23
    iget v3, p2, Lcom/apk/h2;->goto:I

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    .line 24
    :cond_5
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-ge v3, v6, :cond_7

    .line 25
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 26
    iget v8, p2, Lcom/apk/h2;->interface:I

    add-int/2addr v8, p3

    iput v8, p2, Lcom/apk/h2;->interface:I

    if-eqz v8, :cond_6

    .line 27
    iget-object v9, p2, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 28
    iget v9, v9, Lcom/apk/import;->goto:I

    .line 29
    rem-int/2addr v8, v9

    if-nez v8, :cond_6

    .line 30
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v8, v7}, Lcom/apk/h2;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 35
    invoke-virtual {p2, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    .line 36
    invoke-virtual {p2, v0, p3}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v0

    .line 37
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_8
    iget v0, p2, Lcom/apk/h2;->goto:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    :cond_9
    add-int/2addr v4, v0

    if-ne p1, p3, :cond_b

    .line 40
    iget-object p3, p2, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p4, :cond_a

    .line 41
    iget-object p3, p2, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object p4, p2, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    :cond_a
    iget-object p2, p2, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p2, v4}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_2

    .line 43
    :cond_b
    iget-object p3, p2, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 44
    iget-object p3, p3, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 45
    iget-object p3, p2, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 46
    iget-object p3, p3, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object p3, p2, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object p4, p2, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p3, p4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 48
    iget-object p3, p2, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p3, v4}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 49
    invoke-virtual {p2}, Lcom/apk/h2;->default()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_c

    .line 50
    iget-object p3, p2, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p3, Lcom/apk/l2;

    invoke-interface {p3}, Lcom/apk/l2;->c()V

    .line 51
    invoke-virtual {p2, v4}, Lcom/apk/h2;->s(I)V

    .line 52
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->finally()V

    .line 53
    :cond_d
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->k0(I)V

    return-void
.end method

.method public synchronized()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v:I

    sub-int/2addr v1, v2

    .line 3
    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->while:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/apk/finally;->case()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v2, :cond_5

    .line 5
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v2

    .line 7
    iget-boolean v2, v2, Lcom/apk/u0;->for:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v2

    .line 9
    iget v2, v2, Lcom/apk/u0;->do:I

    sub-int/2addr v0, v2

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/apk/h2;->J(FF)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mBookTitleTextView:Lcom/biquge/ebook/app/widget/BookTitleTextView;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mBookPageTextView:Lcom/biquge/ebook/app/widget/BookPageTextView;

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->class:Lcom/biquge/ebook/app/bean/Book;

    iget-object v6, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->const:Lcom/biquge/ebook/app/bean/CollectBook;

    iget-object v7, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throws:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v8, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->final:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 13
    iput-object v2, v0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 14
    iput-object v5, v0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    .line 15
    iput-object v6, v0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 16
    iput-object v7, v0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 17
    new-instance v1, Lcom/apk/v9;

    iget-object v2, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v5

    iget-object v6, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-direct {v1, v2, v5, v6}, Lcom/apk/v9;-><init>(Landroid/app/Activity;ILcom/apk/import;)V

    iput-object v1, v0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 18
    iget-object v2, v0, Lcom/apk/h2;->c:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v2, v1, Lcom/apk/v9;->import:Landroid/view/View$OnClickListener;

    .line 20
    iget-object v2, v0, Lcom/apk/h2;->m:Landroid/view/View$OnTouchListener;

    .line 21
    iput-object v2, v1, Lcom/apk/v9;->while:Landroid/view/View$OnTouchListener;

    .line 22
    iget-object v2, v0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 23
    new-instance v1, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    iget-object v2, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v5

    iget-object v6, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-direct {v1, v2, v5, v6}, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;-><init>(Landroid/app/Activity;ILcom/apk/import;)V

    iput-object v1, v0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    .line 24
    iget-object v2, v0, Lcom/apk/h2;->c:Landroid/view/View$OnClickListener;

    .line 25
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->this:Landroid/view/View$OnClickListener;

    .line 26
    iget-object v2, v0, Lcom/apk/h2;->m:Landroid/view/View$OnTouchListener;

    .line 27
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->goto:Landroid/view/View$OnTouchListener;

    .line 28
    iget-object v2, v0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    iput-object v3, v0, Lcom/apk/h2;->final:Lcom/biquge/ebook/app/widget/BookTitleTextView;

    .line 30
    iput-object v4, v0, Lcom/apk/h2;->super:Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 31
    invoke-virtual {v0}, Lcom/apk/h2;->I()V

    .line 32
    iget-object v1, v0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollDirectionChangedListener(Lcom/apk/u20$do;)V

    .line 33
    iget-object v1, v0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v1, :cond_2

    .line 34
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v2

    .line 35
    iput-boolean v2, v1, Lcom/apk/v9;->else:Z

    .line 36
    :cond_2
    iget-object v1, v0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v1, :cond_3

    .line 37
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v2

    .line 38
    iput-boolean v2, v1, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->for:Z

    .line 39
    :cond_3
    iget-object v1, v0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setOnScrollStateListener(Lcom/apk/u20$for;)V

    .line 40
    invoke-virtual {v0}, Lcom/apk/h2;->strictfp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/apk/h2;->j:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setOnBarrageListener(Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;)V

    .line 42
    :cond_4
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/i2;

    invoke-direct {v2, v0, v8}, Lcom/apk/i2;-><init>(Lcom/apk/h2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 43
    throw v0
.end method

.method public this()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->default()I

    move-result v0

    if-ne v0, v2, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 8
    invoke-virtual {v0, v1}, Lcom/apk/h2;->p(Z)V

    return-void
.end method

.method public throw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->private()V

    :cond_1
    :goto_0
    return-void
.end method

.method public transient()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->while:Z

    return v0
.end method

.method public try(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/apk/h2;->goto:I

    .line 4
    invoke-virtual {v0}, Lcom/apk/h2;->w()V

    .line 5
    invoke-virtual {v0}, Lcom/apk/h2;->z()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->native()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->const()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->I()V

    return-void
.end method

.method public volatile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/g0;->do()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public while(Z)V
    .locals 0

    return-void
.end method
