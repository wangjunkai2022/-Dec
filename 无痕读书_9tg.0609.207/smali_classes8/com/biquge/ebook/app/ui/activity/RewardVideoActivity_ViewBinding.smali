.class public Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RewardVideoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    const v0, 0x7f09047b

    const-string v1, "field \'mLoadingView\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09047a

    const-string v2, "field \'mContentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09047e

    const-string v2, "field \'mStateIView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateIView:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047f

    const-string v2, "field \'mStateTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047d

    const-string v2, "field \'mMessageTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047c

    const-string v2, "field \'mPublicTimeMessageTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mPublicTimeMessageTView:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901f7

    const-string v2, "field \'mButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateIView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mPublicTimeMessageTView:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
