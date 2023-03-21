.class public Lcom/biquge/ebook/app/widget/RewardVideoAdView;
.super Landroid/widget/FrameLayout;
.source "RewardVideoAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;
    }
.end annotation


# instance fields
.field public case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

.field public do:Landroid/widget/TextView;

.field public final else:Lcom/apk/bg;

.field public for:Landroid/widget/TextView;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/TextView;

.field public try:Landroid/widget/ImageView;


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
    new-instance p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;-><init>(Lcom/biquge/ebook/app/widget/RewardVideoAdView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->else:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0161

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09042b

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do:Landroid/widget/TextView;

    const p1, 0x7f090429

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if:Landroid/widget/TextView;

    const p1, 0x7f090427

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->for:Landroid/widget/TextView;

    const p1, 0x7f09042a

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    const p1, 0x7f090428

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->try:Landroid/widget/ImageView;

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->for:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->else:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->else:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->try:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->else:Lcom/apk/bg;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/hf;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/n0;->else()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/n0;->for()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->if()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->case()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, p1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/n0;->else()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/n0;->for()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->if()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/n0;->case()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v0, p1

    move-object v2, v0

    .line 11
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->for:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public if(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdBtnTxt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->for:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->if:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnRewardBtnCallback(Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    return-void
.end method

.method public setShareBtnTxt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->new:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->do:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
