.class public Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ListenRankFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/expand/listen/fragment/ListenRankFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f090236

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/expand/listen/fragment/ListenRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    const-class v0, Lcom/apk/b40;

    const v1, 0x7f090235

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/b40;

    iput-object v0, p1, Lcom/expand/listen/fragment/ListenRankFragment;->mIndicator:Lcom/apk/b40;

    const v0, 0x7f09055c

    const-string v1, "field \'time_choose\' and method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'time_choose\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    .line 7
    iput-object p2, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding$do;-><init>(Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;Lcom/expand/listen/fragment/ListenRankFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    .line 3
    iput-object v1, v0, Lcom/expand/listen/fragment/ListenRankFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/expand/listen/fragment/ListenRankFragment;->mIndicator:Lcom/apk/b40;

    .line 5
    iput-object v1, v0, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
