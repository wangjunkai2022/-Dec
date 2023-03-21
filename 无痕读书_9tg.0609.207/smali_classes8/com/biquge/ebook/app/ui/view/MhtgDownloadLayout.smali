.class public Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;
.super Landroid/widget/FrameLayout;
.source "MhtgDownloadLayout.java"


# instance fields
.field public cancelBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090128
    .end annotation
.end field

.field public closeView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090127
    .end annotation
.end field

.field public descTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090129
    .end annotation
.end field

.field public do:Ljava/lang/String;

.field public final for:Lcom/apk/bg;

.field public if:Ljava/lang/String;

.field public installBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012a
    .end annotation
.end field


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
    new-instance p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout$do;-><init>(Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->for:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01c2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->installBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public if(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->do:Ljava/lang/String;

    .line 2
    iput-object p5, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->if:Ljava/lang/String;

    const/16 p5, 0x8

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->closeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->installBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->for:Lcom/apk/bg;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->cancelBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->for:Lcom/apk/bg;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p6, p7

    .line 6
    :goto_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1001f1

    .line 7
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p6

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->descTv:Landroid/widget/TextView;

    const-string p7, "{days}"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p7, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_3
    invoke-static {p4}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->installBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1001f0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
