.class public Lcom/apk/m20;
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
    iput-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mDefuaultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    .line 4
    invoke-interface {p1, v0}, Lcom/apk/k00;->while(Z)V

    .line 5
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/apk/m20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
