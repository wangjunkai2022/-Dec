.class public abstract Lcom/lxj/xpopup/core/BasePopupView;
.super Landroid/widget/FrameLayout;
.source "BasePopupView.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/core/BasePopupView$else;,
        Lcom/lxj/xpopup/core/BasePopupView$goto;
    }
.end annotation


# static fields
.field public static stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/lxj/xpopup/core/BasePopupView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final attachTask:Ljava/lang/Runnable;

.field public blurAnimator:Lcom/apk/av;

.field public dialog:Lcom/apk/iv;

.field public dismissWithRunnable:Ljava/lang/Runnable;

.field public final doAfterDismissTask:Ljava/lang/Runnable;

.field public final doAfterShowTask:Ljava/lang/Runnable;

.field public handler:Landroid/os/Handler;

.field public hasMoveUp:Z

.field public final initTask:Ljava/lang/Runnable;

.field public isCreated:Z

.field public popupContentAnimator:Lcom/apk/cv;

.field public popupInfo:Lcom/apk/lv;

.field public popupStatus:Lcom/apk/qv;

.field public shadowBgAnimator:Lcom/apk/fv;

.field public showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$goto;

.field public touchSlop:I

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/lxj/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/apk/qv;->for:Lcom/apk/qv;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$do;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$do;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    .line 6
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 7
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$if;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$if;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->attachTask:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$for;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$for;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$case;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$case;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    .line 10
    instance-of v1, p1, Landroid/app/Application;

    if-nez v1, :cond_0

    .line 11
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->touchSlop:I

    .line 12
    new-instance v1, Lcom/apk/fv;

    invoke-direct {v1, p0}, Lcom/apk/fv;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/apk/fv;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupLayoutId()I

    move-result v1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XPopup\u7684Context\u5fc5\u987b\u662fActivity\u7c7b\u578b\uff01"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BasePopupView;->collectAnimator()V

    return-void
.end method

.method public static synthetic access$100(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BasePopupView;->attachDialog()V

    return-void
.end method

.method public static synthetic access$200(Lcom/lxj/xpopup/core/BasePopupView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/lxj/xpopup/core/BasePopupView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    return p1
.end method

.method public static synthetic access$300()Ljava/util/Stack;
    .locals 1

    .line 1
    sget-object v0, Lcom/lxj/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    return-object v0
.end method

.method private attachDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/iv;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/iv;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p0, v0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    .line 4
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private collectAnimator()V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->break:Lcom/apk/cv;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    .line 4
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->genAnimatorByPopupType()Lcom/apk/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupAnimator()Lcom/apk/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/apk/fv;

    invoke-virtual {v0}, Lcom/apk/fv;->for()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/apk/av;

    invoke-direct {v0, p0}, Lcom/apk/av;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    .line 11
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apk/av;->new:Z

    .line 12
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    invoke-static {p0}, Lcom/apk/pw;->new(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/pw;->public(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/av;->for:Landroid/graphics/Bitmap;

    .line 13
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    invoke-virtual {v0}, Lcom/apk/av;->for()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0}, Lcom/apk/cv;->for()V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-nez v0, :cond_9

    .line 17
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->break:Lcom/apk/cv;

    if-eqz v0, :cond_5

    .line 18
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    .line 19
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->genAnimatorByPopupType()Lcom/apk/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-nez v0, :cond_6

    .line 21
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupAnimator()Lcom/apk/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    .line 22
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/apk/fv;

    invoke-virtual {v0}, Lcom/apk/fv;->for()V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    new-instance v0, Lcom/apk/av;

    invoke-direct {v0, p0}, Lcom/apk/av;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    .line 26
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apk/av;->new:Z

    .line 27
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    invoke-static {p0}, Lcom/apk/pw;->new(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/pw;->public(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/av;->for:Landroid/graphics/Bitmap;

    .line 28
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    invoke-virtual {v0}, Lcom/apk/av;->for()V

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {v0}, Lcom/apk/cv;->for()V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public applyDarkTheme()V
    .locals 0

    return-void
.end method

.method public applyLightTheme()V
    .locals 0

    return-void
.end method

.method public beforeDismiss()V
    .locals 0

    return-void
.end method

.method public delayDismiss(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$try;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$try;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public delayDismissWith(JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/lxj/xpopup/core/BasePopupView;->delayDismiss(J)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->else:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->goto:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/qv;->new:Lcom/apk/qv;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->attachTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/apk/qv;->for:Lcom/apk/qv;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->beforeDismiss()V

    .line 9
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    .line 10
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dismissOrHideSoftInput()V
    .locals 1

    .line 1
    sget v0, Lcom/apk/ow;->do:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/apk/ow;->if(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public dismissWith(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public doAfterDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doAfterShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doDismissAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/apk/fv;

    invoke-virtual {v0}, Lcom/apk/fv;->do()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/apk/cv;->do()V

    :cond_3
    return-void
.end method

.method public doShowAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/apk/fv;

    invoke-virtual {v0}, Lcom/apk/fv;->if()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/apk/cv;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/apk/cv;->if()V

    :cond_3
    return-void
.end method

.method public focusAndProcessBackPress()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/apk/lv;->package:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 4
    sget-object v1, Lcom/lxj/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lxj/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$else;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$else;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v1, v1, Lcom/apk/lv;->private:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p0}, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/apk/pw;->this(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 11
    new-instance v4, Lcom/lxj/xpopup/core/BasePopupView$else;

    invoke-direct {v4, p0}, Lcom/lxj/xpopup/core/BasePopupView$else;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v2, :cond_2

    .line 12
    iget-object v4, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v4, v4, Lcom/apk/lv;->private:Z

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 15
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 16
    invoke-virtual {p0, v3}, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public genAnimatorByPopupType()Lcom/apk/cv;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 3
    :pswitch_0
    new-instance v0, Lcom/apk/bv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/bv;-><init>(Landroid/view/View;)V

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lcom/apk/ev;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v2, Lcom/apk/lv;->this:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/ev;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lcom/apk/hv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v2, Lcom/apk/lv;->this:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/hv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lcom/apk/gv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v2, Lcom/apk/lv;->this:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/gv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lcom/apk/dv;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v2, v2, Lcom/apk/lv;->this:Lcom/apk/ov;

    invoke-direct {v0, v1, v2}, Lcom/apk/dv;-><init>(Landroid/view/View;Lcom/apk/ov;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnimationDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/apk/zu;->if:I

    add-int/2addr v2, v0

    :goto_0
    return v2
.end method

.method public getImplLayoutId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->const:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPopupAnimator()Lcom/apk/cv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPopupHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPopupImplView()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPopupLayoutId()I
.end method

.method public getPopupWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetSizeView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getTargetSizeView()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v2

    .line 7
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/apk/pw;->native(Landroid/view/View;II)V

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    .line 10
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 11
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/apk/yv;->if(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initPopupContent()V
    .locals 0

    return-void
.end method

.method public isDismiss()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    sget-object v1, Lcom/apk/qv;->for:Lcom/apk/qv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShow()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    sget-object v1, Lcom/apk/qv;->for:Lcom/apk/qv;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->destroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lcom/lxj/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, v0, Lcom/apk/lv;->while:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6
    sput-object v1, Lcom/apk/ow;->if:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x1020002

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v2, Lcom/apk/ow;->if:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    sget-object v0, Lcom/apk/ow;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v0, Lcom/apk/lv;->interface:Z

    if-eqz v2, :cond_3

    .line 11
    iput-object v1, v0, Lcom/apk/lv;->else:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/apk/lv;->goto:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 14
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 15
    :cond_3
    sget-object v0, Lcom/apk/qv;->for:Lcom/apk/qv;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 16
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$goto;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 18
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/apk/av;->for:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    iget-object v0, v0, Lcom/apk/av;->for:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/apk/av;

    iput-object v1, v0, Lcom/apk/av;->for:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/apk/pw;->super(FFLandroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    sub-float/2addr v0, v2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    sub-float/2addr v2, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 7
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 8
    iget v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    .line 11
    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/apk/lv;->abstract:Z

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v0, p1}, Lcom/apk/iv;->if(Landroid/view/MotionEvent;)V

    :cond_4
    return v1
.end method

.method public declared-synchronized show()Lcom/lxj/xpopup/core/BasePopupView;
    .locals 2

    sget-object v0, Lcom/apk/qv;->if:Lcom/apk/qv;

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/apk/pw;->new(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    monitor-exit p0

    return-object p0

    .line 4
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object p0

    .line 6
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->attachTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return-object p0

    .line 8
    :cond_3
    :goto_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$goto;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/lxj/xpopup/core/BasePopupView$goto;

    invoke-direct {v0, p1}, Lcom/lxj/xpopup/core/BasePopupView$goto;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$goto;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$goto;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public smartDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$new;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$new;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :goto_0
    return-void
.end method
