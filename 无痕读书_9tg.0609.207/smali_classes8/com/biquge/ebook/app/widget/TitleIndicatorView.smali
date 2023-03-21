.class public Lcom/biquge/ebook/app/widget/TitleIndicatorView;
.super Landroid/widget/FrameLayout;
.source "TitleIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/e40;

.field public for:Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;

.field public if:Z

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090225
    .end annotation
.end field

.field public mSwitchLeftLayout:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090241
    .end annotation
.end field

.field public mSwitchMiddleLayout:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090242
    .end annotation
.end field

.field public mSwitchRightLayout:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090243
    .end annotation
.end field

.field public mTitleTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090227
    .end annotation
.end field

.field public switchLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090240
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00ee

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mIndicator:Lcom/apk/b40;

    const/16 v0, 0x32

    const/16 v1, 0xe

    invoke-static {p1, p2, v0, v1}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 6
    sget-object p1, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object p2, Lcom/apk/hf;->do:Lcom/apk/hf;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->switchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    if-ne v0, p1, :cond_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    const/16 v2, 0x8

    if-ne v0, p2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_3
    sget-object p1, Lcom/apk/hf;->for:Lcom/apk/hf;

    const p2, 0x7f1000f5

    const v1, 0x7f10013b

    if-ne v0, p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_4
    sget-object p1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v0, p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public do(IZ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do:Lcom/apk/e40;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v2, v5, v5}, Lcom/apk/e40;->if(IZ)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_2

    .line 7
    invoke-virtual {v2, v4, v5}, Lcom/apk/e40;->if(IZ)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 17
    invoke-virtual {v2, v6, v5}, Lcom/apk/e40;->if(IZ)V

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->for:Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;

    if-eqz p1, :cond_8

    .line 23
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 24
    iget-object p1, p1, Lcom/apk/continue;->while:Lcom/apk/hf;

    if-eq p1, v1, :cond_7

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const v2, 0x7f10013b

    .line 25
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    const v1, 0x7f1000f5

    .line 26
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, p1

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->for:Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;

    invoke-interface {p1, v0, p2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;->do(Lcom/apk/hf;Z)V

    goto :goto_3

    .line 28
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->for:Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;

    invoke-interface {v0, p1, p2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;->do(Lcom/apk/hf;Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public getIndicator()Lcom/apk/b40;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mIndicator:Lcom/apk/b40;

    return-object v0
.end method

.method public getTabCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do:Lcom/apk/e40;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/e40;->do:Lcom/apk/b40;

    invoke-interface {v0}, Lcom/apk/b40;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTabModule()Lcom/apk/hf;
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 2
    iget-object v2, v2, Lcom/apk/continue;->while:Lcom/apk/hf;

    if-eq v2, v1, :cond_5

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_0
    const v4, 0x7f10013b

    .line 9
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    const v1, 0x7f1000f5

    .line 10
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object v2
.end method

.method public if(Lcom/apk/e40;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do:Lcom/apk/e40;

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 6
    sget-object p2, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-eq p1, p2, :cond_1

    .line 7
    new-instance p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/TitleIndicatorView$do;-><init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090241,
            0x7f090242,
            0x7f090243
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090241

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090242

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090243

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->do(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setChangeTabListener(Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->for:Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->if:Z

    return-void
.end method
