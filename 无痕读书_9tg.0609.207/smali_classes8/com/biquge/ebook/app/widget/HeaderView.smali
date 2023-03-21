.class public Lcom/biquge/ebook/app/widget/HeaderView;
.super Lcom/apk/sr0;
.source "HeaderView.java"


# instance fields
.field public if:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public mTitleTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090083
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/sr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01be

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getTitleIndicatorView()Lcom/biquge/ebook/app/widget/TitleIndicatorView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/HeaderView;->if:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    if-nez v0, :cond_0

    const v0, 0x7f090563

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/HeaderView;->if:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/HeaderView;->if:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/HeaderView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public setTitile(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/HeaderView;->mTitleTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
