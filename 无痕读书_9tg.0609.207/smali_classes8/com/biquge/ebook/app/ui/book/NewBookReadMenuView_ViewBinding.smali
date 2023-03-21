.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;
.super Ljava/lang/Object;
.source "NewBookReadMenuView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Landroid/view/View;

.field public abstract:Landroid/view/View;

.field public b:Landroid/view/View;

.field public break:Landroid/view/View;

.field public c:Landroid/view/View;

.field public case:Landroid/view/View;

.field public catch:Landroid/view/View;

.field public class:Landroid/view/View;

.field public const:Landroid/view/View;

.field public continue:Landroid/view/View;

.field public d:Landroid/view/View;

.field public default:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

.field public e:Landroid/view/View;

.field public else:Landroid/view/View;

.field public extends:Landroid/view/View;

.field public f:Landroid/view/View;

.field public final:Landroid/view/View;

.field public finally:Landroid/view/View;

.field public for:Landroid/view/View;

.field public g:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public if:Landroid/view/View;

.field public implements:Landroid/view/View;

.field public import:Landroid/view/View;

.field public instanceof:Landroid/view/View;

.field public interface:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public native:Landroid/view/View;

.field public new:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public package:Landroid/view/View;

.field public private:Landroid/view/View;

.field public protected:Landroid/view/View;

.field public public:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public return:Landroid/view/View;

.field public s:Landroid/view/View;

.field public static:Landroid/view/View;

.field public strictfp:Landroid/view/View;

.field public super:Landroid/view/View;

.field public switch:Landroid/view/View;

.field public synchronized:Landroid/view/View;

.field public t:Landroid/view/View;

.field public this:Landroid/view/View;

.field public throw:Landroid/view/View;

.field public throws:Landroid/view/View;

.field public transient:Landroid/view/View;

.field public try:Landroid/view/View;

.field public volatile:Landroid/view/View;

.field public while:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Landroid/view/View;)V
    .locals 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010f

    const-string v2, "field \'mTopLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f09010e

    const-string v2, "field \'mTopInternalLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopInternalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010d

    const-string v2, "field \'mTopExternalLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopExternalLayout:Landroid/widget/LinearLayout;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090621

    const-string v2, "field \'mWebSourceTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWebSourceTv:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0900eb

    const-string v2, "field \'mBottomLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0900f1

    const-string v2, "field \'mDefuaultLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mDefuaultLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f09045a

    const-string v1, "field \'mMoreImage\' and method \'menuClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mMoreImage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mMoreImage:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$catch;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$catch;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090456

    const-string v1, "field \'mSwitchNight\' and method \'menuClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mSwitchNight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSwitchNight:Landroid/widget/ImageView;

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->for:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$static;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$static;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090455

    const-string v1, "field \'mComment\' and method \'menuClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mComment\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mComment:Landroid/widget/ImageView;

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->new:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$volatile;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$volatile;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090457

    const-string v1, "field \'mEyeshield\' and method \'menuClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mEyeshield\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mEyeshield:Landroid/widget/ImageView;

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->try:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$e;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-class v0, Lcom/biquge/ebook/app/widget/StatusBarView;

    const v1, 0x7f09010c

    const-string v2, "field \'mBarView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/StatusBarView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarView:Lcom/biquge/ebook/app/widget/StatusBarView;

    .line 26
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900f0

    const-string v2, "field \'mChapterSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f09045c

    const-string v1, "field \'mRefreshTxt\' and method \'menuClick\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mRefreshTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mRefreshTxt:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->case:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$o;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$o;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045d

    const-string v1, "field \'mReportFailedTxt\' and method \'menuClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mReportFailedTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReportFailedTxt:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->else:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$p;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$p;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090453

    const-string v1, "field \'mChangeSourceTxt\' and method \'menuClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mChangeSourceTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChangeSourceTxt:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->goto:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$q;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$q;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090445

    const-string v1, "field \'mBarrageSwitchView\' and method \'menuClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBarrageSwitchView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->this:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$r;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$r;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045e

    const-string v1, "field \'mBarrageSendView\' and method \'menuClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBarrageSendView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->break:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$s;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$s;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090442

    const-string v1, "field \'addNovelShelfBtn\' and method \'menuClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'addNovelShelfBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->addNovelShelfBtn:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->catch:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010a

    const-string v2, "field \'mSetLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    .line 52
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0900ea

    const-string v2, "field \'mBgRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900ed

    const-string v2, "field \'mBrightnessSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0900ee

    const-string v1, "field \'mSystemBrightTxt\' and method \'menuClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSystemBrightTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->class:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09010b

    const-string v1, "field \'mSwitchCouplingTxt\' and method \'menuClick\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 59
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSwitchCouplingTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSwitchCouplingTxt:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->const:Landroid/view/View;

    .line 61
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    const-string v2, "field \'mFontSizeTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mFontSizeTxt:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fa

    const-string v2, "field \'mLinespaceTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mLinespaceTxt:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090101

    const-string v2, "field \'mReadAloudLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReadAloudLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090105

    const-string v1, "field \'mPauseResumeView\' and method \'menuClick\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mPauseResumeView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mPauseResumeView:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->final:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$new;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900e9

    const-string v2, "field \'mBdTtsVoiceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBdTtsVoiceLayout:Landroid/widget/LinearLayout;

    .line 70
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900dd

    const-string v2, "field \'mWifiTtsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWifiTtsLayout:Landroid/widget/LinearLayout;

    .line 71
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090115

    const-string v2, "field \'mWifiTtsTipTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWifiTtsTipTv:Landroid/widget/TextView;

    const v0, 0x7f0900e2

    const-string v1, "field \'mAndroidTtsVioceBtn\' and method \'menuClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900e2

    const-string v3, "field \'mAndroidTtsVioceBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAndroidTtsVioceBtn:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->super:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$try;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900e7

    const-string v2, "field \'mAutoReadLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadLayout:Landroid/widget/LinearLayout;

    .line 77
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900cb

    const-string v2, "field \'mAutoReadSpeedValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadSpeedValue:Landroid/widget/TextView;

    const v0, 0x7f0900ff

    const-string v1, "field \'cateBtn\' and method \'menuClick\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900ff

    const-string v3, "field \'cateBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->cateBtn:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throw:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$case;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e4

    const-string v1, "field \'autoReadBtn\' and method \'menuClick\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900e4

    const-string v3, "field \'autoReadBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->autoReadBtn:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->while:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$else;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$else;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090100

    const-string v1, "field \'ttsBtn\' and method \'menuClick\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090100

    const-string v3, "field \'ttsBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->ttsBtn:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->import:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$goto;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$goto;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ef

    const-string v1, "field \'cacheBtn\' and method \'menuClick\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900ef

    const-string v3, "field \'cacheBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->cacheBtn:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->native:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$this;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$this;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090109

    const-string v1, "field \'setBtn\' and method \'menuClick\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090109

    const-string v3, "field \'setBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setBtn:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->public:Landroid/view/View;

    .line 97
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$break;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$break;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f2

    const-string v1, "field \'exitBtn\' and method \'menuClick\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900f2

    const-string v3, "field \'exitBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->exitBtn:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->return:Landroid/view/View;

    .line 101
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$class;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$class;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045f

    const-string v1, "field \'webCacheBtn\' and method \'menuClick\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09045f

    const-string v3, "field \'webCacheBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->webCacheBtn:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->static:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$const;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$const;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090461

    const-string v1, "field \'dayNightBtn\' and method \'menuClick\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090461

    const-string v3, "field \'dayNightBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->dayNightBtn:Landroid/widget/ImageView;

    .line 108
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->switch:Landroid/view/View;

    .line 109
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$final;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$final;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905af

    const-string v1, "field \'addShelfBtn\' and method \'menuClick\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0905af

    const-string v3, "field \'addShelfBtn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->addShelfBtn:Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throws:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$super;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$super;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090451

    const-string v1, "method \'menuClick\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->default:Landroid/view/View;

    .line 116
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$throw;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$throw;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09061d

    .line 117
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->extends:Landroid/view/View;

    .line 119
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$while;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$while;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045b

    .line 120
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->finally:Landroid/view/View;

    .line 122
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$import;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$import;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f3

    .line 123
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->package:Landroid/view/View;

    .line 125
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$native;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$native;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f4

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->private:Landroid/view/View;

    .line 128
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$public;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$public;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f9

    .line 129
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->abstract:Landroid/view/View;

    .line 131
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$return;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$return;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f8

    .line 132
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->continue:Landroid/view/View;

    .line 134
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$switch;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$switch;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f5

    .line 135
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->strictfp:Landroid/view/View;

    .line 137
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$throws;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$throws;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090603

    .line 138
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->volatile:Landroid/view/View;

    .line 140
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$default;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$default;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090601

    .line 141
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->interface:Landroid/view/View;

    .line 143
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$extends;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$extends;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090604

    .line 144
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->protected:Landroid/view/View;

    .line 146
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$finally;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$finally;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f7

    .line 147
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->transient:Landroid/view/View;

    .line 149
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$package;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$package;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fd

    .line 150
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->implements:Landroid/view/View;

    .line 152
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$private;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$private;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e5

    .line 153
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->instanceof:Landroid/view/View;

    .line 155
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$abstract;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$abstract;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e3

    .line 156
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->synchronized:Landroid/view/View;

    .line 158
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$continue;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$continue;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e8

    .line 159
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->a:Landroid/view/View;

    .line 161
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$strictfp;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$strictfp;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e6

    .line 162
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->b:Landroid/view/View;

    .line 164
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$interface;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$interface;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fb

    .line 165
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->c:Landroid/view/View;

    .line 167
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$protected;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$protected;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090102

    .line 168
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->d:Landroid/view/View;

    .line 170
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$transient;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$transient;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090103

    .line 171
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->e:Landroid/view/View;

    .line 173
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$implements;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$implements;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090107

    .line 174
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->f:Landroid/view/View;

    .line 176
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$instanceof;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$instanceof;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090104

    .line 177
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->g:Landroid/view/View;

    .line 179
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$synchronized;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$synchronized;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090108

    .line 180
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->h:Landroid/view/View;

    .line 182
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$a;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ca

    .line 183
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->i:Landroid/view/View;

    .line 185
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$b;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c9

    .line 186
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->j:Landroid/view/View;

    .line 188
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$c;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090467

    .line 189
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 190
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->k:Landroid/view/View;

    .line 191
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$d;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090469

    .line 192
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->l:Landroid/view/View;

    .line 194
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$f;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090468

    .line 195
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->m:Landroid/view/View;

    .line 197
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$g;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$g;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090466

    .line 198
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->n:Landroid/view/View;

    .line 200
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$h;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$h;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900de

    .line 201
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->o:Landroid/view/View;

    .line 203
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$i;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$i;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900df

    .line 204
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->p:Landroid/view/View;

    .line 206
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$j;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$j;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c8

    .line 207
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->q:Landroid/view/View;

    .line 209
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$k;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$k;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090463

    .line 210
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->r:Landroid/view/View;

    .line 212
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$l;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$l;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090460

    .line 213
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->s:Landroid/view/View;

    .line 215
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$m;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$m;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090462

    .line 216
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->t:Landroid/view/View;

    .line 218
    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$n;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding$n;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    .line 219
    const-class v2, Landroid/widget/TextView;

    const v3, 0x7f090603

    const-string v4, "field \'mPageTypeViews\'"

    .line 220
    invoke-static {p2, v3, v4, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/TextView;

    const v5, 0x7f090601

    .line 221
    invoke-static {p2, v5, v4, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090604

    .line 222
    invoke-static {p2, v6, v4, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 223
    invoke-static {v1}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mPageTypeViews:Ljava/util/List;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    .line 224
    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090103

    const-string v7, "field \'mReadAloudTypeViews\'"

    .line 225
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090107

    .line 226
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090104

    .line 227
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090108

    .line 228
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v0

    .line 229
    invoke-static {v1}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReadAloudTypeViews:Ljava/util/List;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    .line 230
    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090467

    const-string v7, "field \'mTimerViews\'"

    .line 231
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090469

    .line 232
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v5

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090468

    .line 233
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/TextView;

    const v6, 0x7f090466

    .line 234
    invoke-static {p2, v6, v7, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v0

    .line 235
    invoke-static {v1}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTimerViews:Ljava/util/List;

    new-array v0, v0, [Landroid/widget/TextView;

    .line 236
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900e5

    const-string v6, "field \'mAutoReadTypeViews\'"

    .line 237
    invoke-static {p2, v2, v6, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900e3

    .line 238
    invoke-static {p2, v2, v6, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0900e8

    .line 239
    invoke-static {p2, v2, v6, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, v0, v4

    .line 240
    invoke-static {v0}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadTypeViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopInternalLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopExternalLayout:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWebSourceTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mDefuaultLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mMoreImage:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSwitchNight:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mComment:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mEyeshield:Landroid/widget/ImageView;

    .line 13
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarView:Lcom/biquge/ebook/app/widget/StatusBarView;

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    .line 15
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mRefreshTxt:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReportFailedTxt:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mChangeSourceTxt:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->addNovelShelfBtn:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 24
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSwitchCouplingTxt:Landroid/widget/TextView;

    .line 26
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mFontSizeTxt:Landroid/widget/TextView;

    .line 27
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mLinespaceTxt:Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReadAloudLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mPauseResumeView:Landroid/widget/TextView;

    .line 30
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBdTtsVoiceLayout:Landroid/widget/LinearLayout;

    .line 31
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWifiTtsLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mWifiTtsTipTv:Landroid/widget/TextView;

    .line 33
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAndroidTtsVioceBtn:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadLayout:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadSpeedValue:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->cateBtn:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->autoReadBtn:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->ttsBtn:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->cacheBtn:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setBtn:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->exitBtn:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->webCacheBtn:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->dayNightBtn:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->addShelfBtn:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mPageTypeViews:Ljava/util/List;

    .line 46
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mReadAloudTypeViews:Ljava/util/List;

    .line 47
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTimerViews:Ljava/util/List;

    .line 48
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadTypeViews:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->if:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->for:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->new:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->try:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->case:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->else:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->goto:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->this:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->break:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->break:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->catch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->catch:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->class:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->class:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->const:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->const:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->final:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->final:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->super:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->super:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throw:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throw:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->while:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->while:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->import:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->import:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->native:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->native:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->public:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->public:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->return:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->return:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->static:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->static:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->switch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->switch:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throws:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->throws:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->default:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->default:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->extends:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->extends:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->finally:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->finally:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->package:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->package:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->private:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->private:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->abstract:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->abstract:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->continue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->continue:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->strictfp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->strictfp:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->volatile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->volatile:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->interface:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->interface:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->protected:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->protected:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->transient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->transient:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->implements:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->implements:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->instanceof:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->instanceof:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->synchronized:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->synchronized:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->a:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->b:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->c:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->d:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->e:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->f:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->g:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->h:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->i:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->j:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->k:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->l:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->m:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->n:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->o:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->p:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->q:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->r:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->s:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView_ViewBinding;->t:Landroid/view/View;

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
