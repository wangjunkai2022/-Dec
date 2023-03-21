.class public Lcom/biquge/ebook/app/widget/MessageTimerView;
.super Lcom/apk/sr0;
.source "MessageTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/MessageTimerView$if;
    }
.end annotation


# instance fields
.field public case:I

.field public for:Z

.field public if:Lcom/biquge/ebook/app/widget/MessageTimerView$if;

.field public mLoadingView:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090382
    .end annotation
.end field

.field public mTimerView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09055d
    .end annotation
.end field

.field public new:Lcom/apk/g5;

.field public final try:Lcom/apk/x5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/sr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/MessageTimerView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/MessageTimerView$do;-><init>(Lcom/biquge/ebook/app/widget/MessageTimerView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->try:Lcom/apk/x5;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01c1

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    new-instance p1, Lcom/biquge/ebook/app/widget/MessageTimerView$if;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/biquge/ebook/app/widget/MessageTimerView$if;-><init>(Lcom/biquge/ebook/app/widget/MessageTimerView;Lcom/biquge/ebook/app/widget/MessageTimerView$do;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->if:Lcom/biquge/ebook/app/widget/MessageTimerView$if;

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100158

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Lcom/apk/g5;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->try:Lcom/apk/x5;

    invoke-direct {p1, p2, v0}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->new:Lcom/apk/g5;

    return-void
.end method


# virtual methods
.method public getCountTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->case:I

    return v0
.end method

.method public if(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->new:Lcom/apk/g5;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->mLoadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->new:Lcom/apk/g5;

    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->for:Z

    if-eqz v0, :cond_2

    const-string v2, "action"

    const-string v3, "securitycode"

    const-string v4, "phone"

    .line 5
    invoke-static {v2, v3, v4, p1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz v1, :cond_1

    const-string v1, "type"

    const-string v2, "1"

    .line 6
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->const()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/BookAction.aspx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/apk/l5;

    invoke-direct {v2, v0}, Lcom/apk/l5;-><init>(Lcom/apk/g5;)V

    invoke-static {v1, p1, v2}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->if:Lcom/biquge/ebook/app/widget/MessageTimerView$if;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCheckPhone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView;->for:Z

    return-void
.end method
