.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebSearchResultLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->setDialogBgAlpha(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->do:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->do:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mBgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$if;->if:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
