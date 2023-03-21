.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BookDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    .line 3
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09016e

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090189

    const-string v2, "field \'mToolbarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f090171

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f090172

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090170

    const-string v2, "field \'mIconIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIconIv:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09016f

    const-string v2, "field \'mBlurBgIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

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

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarBackBtn:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900d7

    const-string v2, "field \'mToolbarTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    const v0, 0x7f0900d9

    const-string v1, "field \'mToolbarAddShelfBtn\' and method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mToolbarAddShelfBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarAddShelfBtn:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d6

    const-string v1, "field \'mToolbarShareBtn\' and method \'menuClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mToolbarShareBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarShareBtn:Landroid/widget/ImageView;

    .line 20
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->new:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005e

    const-string v2, "field \'mUploadAuthorTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09004f

    const-string v2, "field \'mAuthorTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090054

    const-string v2, "field \'mNameTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mNameTxt:Landroid/widget/TextView;

    const v0, 0x7f09004e

    const-string v1, "field \'mAddOrDelShelfBT\' and method \'menuClick\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 26
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mAddOrDelShelfBT\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->try:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$new;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090053

    const-string v2, "field \'mMajorTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mMajorTv:Landroid/widget/TextView;

    .line 30
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f090052

    const-string v2, "field \'mTagFlexboxLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    const v0, 0x7f090057

    const-string v1, "method \'menuClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->case:Landroid/view/View;

    .line 33
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090050

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->else:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$case;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIndicator:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mIconIv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mBlurBgIv:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarBackBtn:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarAddShelfBtn:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarShareBtn:Landroid/widget/ImageView;

    .line 13
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mUploadAuthorTv:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAuthorTxt:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mNameTxt:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mAddOrDelShelfBT:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mMajorTv:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mTagFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->new:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->try:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->case:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity_ViewBinding;->else:Landroid/view/View;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
