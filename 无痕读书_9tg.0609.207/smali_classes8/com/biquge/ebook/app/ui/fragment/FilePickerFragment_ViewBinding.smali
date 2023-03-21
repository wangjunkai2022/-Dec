.class public Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FilePickerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0905db

    const-string v2, "field \'mTvPath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mTvPath:Landroid/widget/TextView;

    const v0, 0x7f0905ce

    const-string v1, "field \'mTvBack\' and method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTvBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09048c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mTvPath:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
