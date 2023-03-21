.class public Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;
.super Ljava/lang/Object;
.source "WebContentView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const v1, 0x7f090622

    const-string v2, "field \'mWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    const v0, 0x7f09064a

    const-string v1, "field \'mGoBackView\' and method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mGoBackView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoBackView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09064b

    const-string v1, "field \'mGoForwardView\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mGoForwardView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoForwardView:Landroid/widget/ImageView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->for:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090641

    const-string v2, "field \'mTranscodingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    .line 13
    const-class v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    const v1, 0x7f09061e

    const-string v2, "field \'mWebBookDetailView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    const v0, 0x7f09064d

    const-string v1, "method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->new:Landroid/view/View;

    .line 16
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905b0

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->try:Landroid/view/View;

    .line 19
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09064c

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->case:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$try;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoBackView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoForwardView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->if:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->for:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->new:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->try:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView_ViewBinding;->case:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
