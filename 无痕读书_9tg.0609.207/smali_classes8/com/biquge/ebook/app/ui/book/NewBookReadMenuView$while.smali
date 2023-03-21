.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$while;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$while;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$while;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 4
    invoke-static {p1, v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Landroid/app/Activity;Z)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$while;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mTopLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$while;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    return-void
.end method
