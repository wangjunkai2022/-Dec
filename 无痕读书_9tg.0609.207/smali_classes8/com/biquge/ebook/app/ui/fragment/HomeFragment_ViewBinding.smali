.class public Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HomeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    const v0, 0x7f090114

    const-string v1, "field \'mShelfMoreIView\' and method \'menuClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mShelfMoreIView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->if:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090226

    const-string v1, "field \'mShelfSearchIv\' and method \'menuClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mShelfSearchIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfSearchIv:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->for:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090113

    const-string v1, "field \'mEditFinishTView\' and method \'menuClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mEditFinishTView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mEditFinishTView:Landroid/widget/TextView;

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->new:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Lcom/shizhefei/view/viewpager/SViewPager;

    const v1, 0x7f090228

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/viewpager/SViewPager;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    .line 16
    const-class v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const v1, 0x7f090563

    const-string v2, "field \'mTitleIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 17
    const-class v0, Lcom/biquge/ebook/app/widget/TopMsgView;

    const v1, 0x7f09028c

    const-string v2, "field \'mTopMsgView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/TopMsgView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;

    .line 18
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900ac

    const-string v2, "field \'mTopAdLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopAdLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfSearchIv:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mEditFinishTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopMsgView:Lcom/biquge/ebook/app/widget/TopMsgView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTopAdLayout:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->if:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->for:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
