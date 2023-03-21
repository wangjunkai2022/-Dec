.class public Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadTxtListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    const v0, 0x7f090096

    const-string v1, "field \'mMoreTagView\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mMoreTagView:Landroid/view/View;

    .line 4
    const-class v0, Lcom/shizhefei/view/viewpager/SViewPager;

    const v1, 0x7f09006d

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/viewpager/SViewPager;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    .line 5
    const-class v0, Lcom/apk/b40;

    const v1, 0x7f09006c

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/b40;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mIndicator:Lcom/apk/b40;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901ed

    const-string v2, "field \'mEditLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mEditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901ec

    const-string v1, "field \'mSelectBt\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mSelectBt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->if:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    const-string v1, "field \'mDelBt\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 12
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'mDelBt\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    .line 13
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->for:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mMoreTagView:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mIndicator:Lcom/apk/b40;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mEditLayout:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->mDelBt:Landroid/widget/Button;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->if:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
