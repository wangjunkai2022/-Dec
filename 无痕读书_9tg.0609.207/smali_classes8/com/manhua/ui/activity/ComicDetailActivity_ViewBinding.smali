.class public Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComicDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/manhua/ui/activity/ComicDetailActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    .line 3
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09016e

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090189

    const-string v2, "field \'mToolbarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090171

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f090172

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090170

    const-string v2, "field \'mIconIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mIconIv:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09016f

    const-string v2, "field \'mBlurBgIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

    const v0, 0x7f0900cf

    const-string v1, "field \'mToolbarBackBtn\' and method \'menuClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mToolbarBackBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarBackBtn:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$do;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900d7

    const-string v2, "field \'mToolbarTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    const v0, 0x7f0900d9

    const-string v1, "field \'mToolbarShareBtn\' and method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mToolbarShareBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarShareBtn:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$if;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005e

    const-string v2, "field \'mUploadAuthorTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09004f

    const-string v2, "field \'mAuthorTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090054

    const-string v2, "field \'mNameTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mNameTxt:Landroid/widget/TextView;

    const v0, 0x7f09004e

    const-string v1, "field \'mAddOrDelShelfBT\' and method \'menuClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mAddOrDelShelfBT\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/manhua/ui/activity/ComicDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->new:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$for;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090057

    const-string v1, "method \'menuClick\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->try:Landroid/view/View;

    .line 27
    new-instance v2, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$new;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090050

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->case:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$try;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding$try;-><init>(Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;Lcom/manhua/ui/activity/ComicDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mIconIv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarBackBtn:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mToolbarShareBtn:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mNameTxt:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->new:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->try:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/manhua/ui/activity/ComicDetailActivity_ViewBinding;->case:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
