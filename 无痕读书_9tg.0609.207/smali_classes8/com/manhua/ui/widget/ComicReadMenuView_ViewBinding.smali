.class public Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;
.super Ljava/lang/Object;
.source "ComicReadMenuView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public break:Landroid/view/View;

.field public case:Landroid/view/View;

.field public catch:Landroid/view/View;

.field public class:Landroid/view/View;

.field public const:Landroid/view/View;

.field public do:Lcom/manhua/ui/widget/ComicReadMenuView;

.field public else:Landroid/view/View;

.field public final:Landroid/view/View;

.field public for:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public if:Landroid/view/View;

.field public import:Landroid/view/View;

.field public native:Landroid/view/View;

.field public new:Landroid/view/View;

.field public super:Landroid/view/View;

.field public this:Landroid/view/View;

.field public throw:Landroid/view/View;

.field public try:Landroid/view/View;

.field public while:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010f

    const-string v2, "field \'mTopLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f1

    const-string v2, "field \'mDefuaultLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090454

    const-string v2, "field \'mTitleTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mTitleTView:Landroid/widget/TextView;

    const v0, 0x7f09045a

    const-string v1, "field \'mMoreView\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mMoreView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mMoreView:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$break;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$break;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900f0

    const-string v2, "field \'mChapterSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f090445

    const-string v1, "field \'mBarrageSwitchView\' and method \'menuClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBarrageSwitchView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    .line 13
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->for:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$catch;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$catch;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045e

    const-string v1, "field \'mBarrageSendView\' and method \'menuClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBarrageSendView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    .line 17
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->new:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$class;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$class;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010a

    const-string v2, "field \'mSetLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    .line 20
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0900ed

    const-string v2, "field \'mBrightnessSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0900ee

    const-string v1, "field \'mSystemBrightTxt\' and method \'menuClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSystemBrightTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->try:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$const;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$const;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090600

    const-string v1, "field \'mPageTypeLeft\' and method \'menuClick\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 26
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mPageTypeLeft\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->case:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$final;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$final;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090602

    const-string v1, "field \'mPageTypeRight\' and method \'menuClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mPageTypeRight\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->else:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$super;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$super;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090604

    const-string v1, "field \'mPageTypeUpDown\' and method \'menuClick\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mPageTypeUpDown\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->goto:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$throw;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$throw;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0905ff

    const-string v2, "field \'mPageLandTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageLandTip:Landroid/widget/TextView;

    .line 38
    const-class v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    const v1, 0x7f090452

    const-string v2, "field \'mSwitchButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mSwitchButton:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 39
    const-class v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    const v1, 0x7f09013e

    const-string v2, "field \'mVolumeFlipCB\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mVolumeFlipCB:Lcom/biquge/ebook/app/widget/SwitchButton;

    const v0, 0x7f0900fe

    const-string v1, "field \'mDayNightTView\' and method \'menuClick\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mDayNightTView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->this:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$while;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$while;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090451

    const-string v1, "method \'menuClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->break:Landroid/view/View;

    .line 46
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$import;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$import;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045d

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->catch:Landroid/view/View;

    .line 49
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$do;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$do;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ff

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->class:Landroid/view/View;

    .line 52
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$if;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ef

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->const:Landroid/view/View;

    .line 55
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$for;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090109

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->final:Landroid/view/View;

    .line 58
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$new;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f7

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->super:Landroid/view/View;

    .line 61
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$try;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900fd

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->throw:Landroid/view/View;

    .line 64
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$case;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$case;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090455

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->while:Landroid/view/View;

    .line 67
    new-instance v2, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$else;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$else;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090447

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->import:Landroid/view/View;

    .line 70
    new-instance v3, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$goto;

    invoke-direct {v3, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$goto;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090446

    .line 71
    invoke-static {p2, v2, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->native:Landroid/view/View;

    .line 73
    new-instance v3, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$this;

    invoke-direct {v3, p0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding$this;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    .line 74
    const-class v3, Landroid/widget/TextView;

    const-string v4, "field \'mScreenTView\'"

    .line 75
    invoke-static {p2, v0, v4, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-class v0, Landroid/widget/TextView;

    .line 76
    invoke-static {p2, v2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 77
    invoke-static {v1}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mTitleTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mMoreView:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    .line 8
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSendView:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 12
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSystemBrightTxt:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeLeft:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeRight:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageTypeUpDown:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mPageLandTip:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mSwitchButton:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 18
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mVolumeFlipCB:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 19
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mDayNightTView:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->mScreenTView:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->if:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->for:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->new:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->try:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->case:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->else:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->goto:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->this:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->break:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->break:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->catch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->catch:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->class:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->class:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->const:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->const:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->final:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->final:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->super:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->super:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->throw:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->throw:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->while:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->while:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->import:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->import:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->native:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView_ViewBinding;->native:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
