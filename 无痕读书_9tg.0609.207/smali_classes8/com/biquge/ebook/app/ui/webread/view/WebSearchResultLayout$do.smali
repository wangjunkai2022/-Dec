.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->do:Z

    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->do:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->if:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->do:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setCallScrollDown(Z)V

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->if:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->setCallScrollUp(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->do:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->if:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$do;->for:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mRecyclerView:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
