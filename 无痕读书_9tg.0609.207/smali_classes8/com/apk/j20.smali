.class public Lcom/apk/j20;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/j20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->throw:Z

    .line 3
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    .line 4
    iget-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/manhua/ui/widget/ComicReadMenuView;->case(Lcom/manhua/ui/widget/ComicReadMenuView;Landroid/app/Activity;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/j20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/apk/k00;->while(Z)V

    return-void
.end method
