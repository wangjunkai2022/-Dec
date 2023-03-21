.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mDefuaultLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$import;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case:Lcom/apk/l2;

    .line 4
    invoke-interface {p1, v0}, Lcom/apk/l2;->while(Z)V

    return-void
.end method
