.class public Lcom/biquge/ebook/app/widget/VideoRewardDialog;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "VideoRewardDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;
    }
.end annotation


# instance fields
.field public do:Landroid/widget/TextView;

.field public final for:Z

.field public final if:Ljava/lang/String;

.field public final new:Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;

.field public final try:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/biquge/ebook/app/widget/VideoRewardDialog$if;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;-><init>(Lcom/biquge/ebook/app/widget/VideoRewardDialog;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->try:Lcom/apk/bg;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->if:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->for:Z

    .line 5
    iput-object p4, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->new:Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00a0

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f090251

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->do:Landroid/widget/TextView;

    const v0, 0x7f0904ea

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->try:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904eb

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->try:Lcom/apk/bg;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904dc

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->try:Lcom/apk/bg;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->for:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->do:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
