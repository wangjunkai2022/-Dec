.class public Lcom/biquge/ebook/app/widget/ReadContentLayout;
.super Landroid/widget/FrameLayout;
.source "ReadContentLayout.java"


# instance fields
.field public break:Landroid/view/View$OnClickListener;

.field public case:Lcom/manhua/ui/widget/barrage/BarrageView;

.field public final catch:Lcom/apk/bg;

.field public do:Landroid/view/View;

.field public else:Lcom/biquge/ebook/app/bean/BookChapter;

.field public for:Landroidx/recyclerview/widget/RecyclerView;

.field public goto:Ljava/lang/String;

.field public if:Landroid/widget/TextView;

.field public new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

.field public this:Landroid/view/View$OnTouchListener;

.field public try:Lcom/biquge/ebook/app/widget/BookContentTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/ReadContentLayout$if;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/ReadContentLayout$if;-><init>(Lcom/biquge/ebook/app/widget/ReadContentLayout;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->catch:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00dc

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090313

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/BookContentTextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    const p1, 0x7f09043c

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/manhua/ui/widget/barrage/BarrageView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    const/16 p2, 0x1f4

    .line 6
    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/barrage/BarrageView;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public do(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->else:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->goto:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "LOAD_FAILED"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->if()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 17
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getNovelid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/apk/da;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_4
    new-instance v1, Lcom/apk/ng;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apk/ng;-><init>(Landroid/content/Context;)V

    .line 20
    iget v2, v0, Lcom/biquge/ebook/app/widget/BookContentTextView;->do:F

    iget v3, v0, Lcom/biquge/ebook/app/widget/BookContentTextView;->if:I

    .line 21
    iput v2, v1, Lcom/apk/ng;->if:F

    .line 22
    iput v3, v1, Lcom/apk/ng;->case:I

    .line 23
    invoke-virtual {v1, p1, p2}, Lcom/apk/ng;->if(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Lcom/apk/ng;->getContentHeight()I

    move-result p1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object p2

    .line 27
    iget p2, p2, Lcom/apk/ca;->goto:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    if-eqz p3, :cond_5

    .line 28
    :try_start_2
    new-instance p2, Lcom/apk/tg;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/apk/tg;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p2, p1}, Lcom/apk/tg;->do(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getBarrageView()Lcom/manhua/ui/widget/barrage/BarrageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    return-object v0
.end method

.method public getBookChapter()Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->else:Lcom/biquge/ebook/app/bean/BookChapter;

    return-object v0
.end method

.method public getChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public final if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f090160

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    const v2, 0x7f090315

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->catch:Lcom/apk/bg;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    const v2, 0x7f0901f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->if:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    const v2, 0x7f0901f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->this:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "SP_ERROR_CONF_KEY"

    const-string v3, ""

    .line 12
    invoke-static {v2, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    if-nez v3, :cond_1

    .line 15
    const-class v3, Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ErrorConfBean;

    iput-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->if:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getM_title()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->if:Landroid/widget/TextView;

    const v3, 0x7f060073

    invoke-static {v3}, Lcom/apk/ze;->p(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->if:Landroid/widget/TextView;

    const v3, 0x7f060064

    invoke-static {v3}, Lcom/apk/ze;->p(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 22
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    new-instance v2, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->new:Lcom/biquge/ebook/app/bean/ErrorConfBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ErrorConfBean;->getRows_tip()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;-><init>(Ljava/util/List;Z)V

    .line 24
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    new-instance v1, Lcom/biquge/ebook/app/widget/ReadContentLayout$do;

    invoke-direct {v1, p0, v2}, Lcom/biquge/ebook/app/widget/ReadContentLayout$do;-><init>(Lcom/biquge/ebook/app/widget/ReadContentLayout;Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;)V

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 26
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    .line 31
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->try:Lcom/biquge/ebook/app/widget/BookContentTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setReloadClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->break:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ReadContentLayout;->this:Landroid/view/View$OnTouchListener;

    return-void
.end method
