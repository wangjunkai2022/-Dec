.class public Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "WebSiteSearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 3
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09063d

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    const v1, 0x7f09063c

    const-string v2, "field \'mIndeterminateView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mIndeterminateView:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090639

    const-string v2, "field \'mPlatfromTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mPlatfromTitleTv:Landroid/widget/TextView;

    .line 6
    const-class v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const v1, 0x7f090099

    const-string v2, "field \'mWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const v0, 0x7f090098

    const-string v1, "field \'mBgView\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mBgView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mIndeterminateView:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mPlatfromTitleTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mBgView:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
