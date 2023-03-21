.class public Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;
.super Ljava/lang/Object;
.source "UploadBookFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0905ec

    const-string v2, "field \'mNameEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mNameEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0905f2

    const-string v2, "field \'mAuthorEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mAuthorEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 5
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f0905f3

    const-string v2, "field \'indicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0905e8

    const-string v2, "field \'mLinkEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0905e9

    const-string v2, "field \'mCoverIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mCoverIv:Landroid/widget/ImageView;

    const v0, 0x7f0905f0

    const-string v1, "field \'mSelectFileTv\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSelectFileTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->if:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0905f1

    const-string v2, "field \'mTxtTagView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mTxtTagView:Landroid/widget/TextView;

    const v0, 0x7f0905eb

    const-string v1, "method \'menuClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->for:Landroid/view/View;

    .line 15
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905ea

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->new:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mNameEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mAuthorEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mCoverIv:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mTxtTagView:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->if:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->for:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
