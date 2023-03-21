.class public Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BookReadEndActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090118

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090116

    const-string v2, "field \'mBookListLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902ba

    const-string v2, "field \'mBooklistTitleTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistTitleTxt:Landroid/widget/TextView;

    const v0, 0x7f0902b9

    const-string v1, "field \'mBooklistImage\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBooklistImage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistImage:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902b8

    const-string v2, "field \'mBookListInfoTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    .line 11
    const-class v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v1, 0x7f0900a9

    const-string v2, "field \'mAdViewRectangle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const v0, 0x7f09044e

    const-string v1, "method \'menuClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->for:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090450

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->new:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090112

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->try:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090111

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->case:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09044f

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->else:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$case;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistTitleTxt:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBooklistImage:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mBookListInfoTxt:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->if:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->for:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->new:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->try:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->case:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/book/BookReadEndActivity_ViewBinding;->else:Landroid/view/View;

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
