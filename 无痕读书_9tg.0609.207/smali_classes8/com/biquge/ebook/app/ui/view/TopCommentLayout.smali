.class public Lcom/biquge/ebook/app/ui/view/TopCommentLayout;
.super Landroid/widget/LinearLayout;
.source "TopCommentLayout.java"


# instance fields
.field public do:Lcom/tr/comment/sdk/view/TrTopCommentView;

.field public for:Z

.field public if:Z

.field public new:Ljava/lang/String;

.field public try:Ljava/lang/String;


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
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01bb

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f09018f

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/view/TrTopCommentView;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    const p1, 0x7f09018e

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/apk/hd;

    invoke-direct {p2, p0}, Lcom/apk/hd;-><init>(Lcom/biquge/ebook/app/ui/view/TopCommentLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do(Landroidx/fragment/app/FragmentActivity;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->if:Z

    .line 2
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->for:Z

    .line 3
    invoke-static {p3, p4}, Lcom/apk/ze;->synchronized(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->new:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->try:Ljava/lang/String;

    .line 5
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->do:Lcom/tr/comment/sdk/view/TrTopCommentView;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 6
    sget-object p2, Lcom/tr/comment/sdk/bean/TrSourceType;->Novel:Lcom/tr/comment/sdk/bean/TrSourceType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/tr/comment/sdk/bean/TrSourceType;->Cartoon:Lcom/tr/comment/sdk/bean/TrSourceType;

    :goto_0
    iget-object p4, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->new:Ljava/lang/String;

    iget-object p5, p0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->try:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/tr/comment/sdk/view/TrTopCommentView;->this(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
