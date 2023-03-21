.class public Lcom/biquge/ebook/app/widget/NewShareEntranceView;
.super Landroid/widget/FrameLayout;
.source "NewShareEntranceView.java"


# instance fields
.field public do:Landroid/widget/TextView;

.field public for:Landroid/widget/TextView;

.field public if:Landroid/widget/TextView;

.field public new:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

.field public final try:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;-><init>(Lcom/biquge/ebook/app/widget/NewShareEntranceView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->try:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0156

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0903de

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->do:Landroid/widget/TextView;

    const p1, 0x7f0903dc

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->if:Landroid/widget/TextView;

    const p1, 0x7f0903dd

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->for:Landroid/widget/TextView;

    .line 7
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->try:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getFir_spgg()I

    move-result p1

    if-lez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/apk/finally;->if()Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 12
    iget-boolean p1, p1, Lcom/apk/finally;->do:Z

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->for:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f0903e0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->try:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->do:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const v3, 0x7f100227

    new-array v4, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/apk/w0;->catch()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->if:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->if:Landroid/widget/TextView;

    const v4, 0x7f100223

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
