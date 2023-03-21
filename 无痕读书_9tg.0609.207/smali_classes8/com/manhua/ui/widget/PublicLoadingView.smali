.class public Lcom/manhua/ui/widget/PublicLoadingView;
.super Landroid/widget/FrameLayout;
.source "PublicLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/PublicLoadingView$do;
    }
.end annotation


# instance fields
.field public case:Landroid/widget/LinearLayout;

.field public do:Landroid/widget/FrameLayout;

.field public else:Landroid/widget/TextView;

.field public for:Landroid/widget/TextView;

.field public goto:Lcom/manhua/ui/widget/PublicLoadingView$do;

.field public if:Landroid/view/View;

.field public new:Landroidx/recyclerview/widget/RecyclerView;

.field public try:Lcom/biquge/ebook/app/bean/ErrorConfBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c006d

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090164

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->do:Landroid/widget/FrameLayout;

    const p1, 0x7f090162

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    const p1, 0x7f090163

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->else:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->do:Landroid/widget/FrameLayout;

    const v1, 0x7f060096

    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->do:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f0901f5

    if-nez v0, :cond_0

    const v0, 0x7f090160

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->for:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    const v3, 0x7f0901f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->new:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->new:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "SP_ERROR_CONF_KEY"

    const-string v4, ""

    .line 9
    invoke-static {v0, v4}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    iget-object v4, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    if-nez v4, :cond_1

    .line 12
    const-class v4, Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-static {v4, v0}, Lcom/apk/ze;->throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ErrorConfBean;

    iput-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->for:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getM_title()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->for:Landroid/widget/TextView;

    const v4, 0x7f060073

    invoke-static {v4}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->for:Landroid/widget/TextView;

    const v4, 0x7f060064

    invoke-static {v4}, Lcom/apk/ze;->p(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->new:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

    iget-object v4, p0, Lcom/manhua/ui/widget/PublicLoadingView;->try:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;-><init>(Ljava/util/List;Z)V

    .line 21
    iget-object v1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->new:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    new-instance v1, Lcom/apk/s20;

    invoke-direct {v1, p0, v0}, Lcom/apk/s20;-><init>(Lcom/manhua/ui/widget/PublicLoadingView;Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 23
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    const v0, 0x7f090315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/apk/t20;

    invoke-direct {v0, p0}, Lcom/apk/t20;-><init>(Lcom/manhua/ui/widget/PublicLoadingView;)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->if:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 30
    iget-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->case:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/PublicLoadingView;->goto:Lcom/manhua/ui/widget/PublicLoadingView$do;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->else:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/PublicLoadingView;->else:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
