.class public Lcom/biquge/ebook/app/ui/view/StarPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "StarPopupView.java"


# instance fields
.field public case:Z

.field public do:Lcom/biquge/ebook/app/widget/StarBarView;

.field public else:Lcom/apk/v3;

.field public for:Landroid/app/Activity;

.field public final goto:Lcom/apk/bg;

.field public if:Landroid/widget/TextView;

.field public new:Lcom/biquge/ebook/app/bean/Book;

.field public final this:Lcom/apk/u5;

.field public try:Lcom/manhua/data/bean/ComicBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->case:Z

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;-><init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->goto:Lcom/apk/bg;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;-><init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->this:Lcom/apk/u5;

    .line 5
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->for:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->case:Z

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;-><init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->goto:Lcom/apk/bg;

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;-><init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->this:Lcom/apk/u5;

    .line 11
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->for:Landroid/app/Activity;

    .line 12
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->try:Lcom/manhua/data/bean/ComicBean;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00a4

    return v0
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->for:Landroid/app/Activity;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->this:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->else:Lcom/apk/v3;

    const v0, 0x7f0901d8

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d6

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0901d9

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->if:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "0"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f100067

    .line 6
    invoke-static {v5, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0901da

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/StarBarView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->do:Lcom/biquge/ebook/app/widget/StarBarView;

    .line 8
    new-instance v4, Lcom/biquge/ebook/app/ui/view/StarPopupView$do;

    invoke-direct {v4, p0}, Lcom/biquge/ebook/app/ui/view/StarPopupView$do;-><init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V

    invoke-virtual {v2, v4}, Lcom/biquge/ebook/app/widget/StarBarView;->setOnStarChangeListener(Lcom/biquge/ebook/app/widget/StarBarView$do;)V

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v2, :cond_0

    .line 10
    iput-boolean v3, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->case:Z

    .line 11
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->try:Lcom/manhua/data/bean/ComicBean;

    if-eqz v2, :cond_1

    .line 14
    iput-boolean v6, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->case:Z

    .line 15
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->try:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    const v0, 0x7f0901d7

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->goto:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d5

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->goto:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
