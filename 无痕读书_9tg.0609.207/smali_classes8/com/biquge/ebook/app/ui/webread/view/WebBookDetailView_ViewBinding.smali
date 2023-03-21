.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;
.super Ljava/lang/Object;
.source "WebBookDetailView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    const v0, 0x7f090632

    const-string v1, "field \'mShelfBtn\' and method \'menuClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mShelfBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mShelfBtn:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->if:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09062f

    const-string v2, "field \'mBookCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookCover:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090630

    const-string v2, "field \'mBookName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookName:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09062b

    const-string v2, "field \'mBookAuthor\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookAuthor:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090633

    const-string v2, "field \'mBookSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookSource:Landroid/widget/TextView;

    .line 11
    const-class v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    const v1, 0x7f0900d1

    const-string v2, "field \'mDescTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mDescTv:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 12
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09062e

    const-string v2, "field \'mChapterRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    const-class v0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    const v1, 0x7f090627

    const-string v2, "field \'mWebLoadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    const v0, 0x7f09062c

    const-string v1, "method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->for:Landroid/view/View;

    .line 16
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090631

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->new:Landroid/view/View;

    .line 19
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09062d

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->try:Landroid/view/View;

    .line 22
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090634

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->case:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$try;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mShelfBtn:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookCover:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookAuthor:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookSource:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mDescTv:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->if:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->for:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->new:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->try:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView_ViewBinding;->case:Landroid/view/View;

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
