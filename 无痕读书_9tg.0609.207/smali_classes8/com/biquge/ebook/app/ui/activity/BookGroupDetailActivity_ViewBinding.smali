.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BookGroupDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    const v1, 0x7f090416

    const-string v2, "field \'mTitleETView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    const v0, 0x7f090415

    const-string v1, "field \'mMoreView\' and method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mMoreView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090414

    const-string v1, "field \'mEditFinishTView\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mEditFinishTView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09005f

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090413

    const-string v1, "method \'menuClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->new:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mTitleETView:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mEditFinishTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->if:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->for:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
