.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;
.super Ljava/lang/Object;
.source "WebBookDirLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090640

    const-string v2, "field \'mTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mTitleTv:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const v1, 0x7f09063f

    const-string v2, "field \'mDirListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0903ec

    const-string v2, "field \'mDirSortView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    .line 6
    const-class v0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    const v1, 0x7f09061f

    const-string v2, "field \'mLoadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900c3

    const-string v2, "field \'mBatchChapterLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c6

    const-string v1, "field \'mBatchChapterPreBtn\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBatchChapterPreBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterPreBtn:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->if:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c4

    const-string v1, "field \'mBatchChapterListBtn\' and method \'menuClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBatchChapterListBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterListBtn:Landroid/widget/TextView;

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->for:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c5

    const-string v1, "field \'mBatchChapterNextBtn\' and method \'menuClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mBatchChapterNextBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterNextBtn:Landroid/widget/TextView;

    .line 18
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->new:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mTitleTv:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterPreBtn:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterListBtn:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterNextBtn:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->if:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->for:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
