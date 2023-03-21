.class public Lcom/apk/k20;
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
    iput-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    .line 3
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mBarrageSwitchView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 7
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 8
    iget-object v1, p1, Lcom/apk/f00;->throws:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/apk/f00;->try:Ljava/lang/String;

    iput-object v0, p1, Lcom/apk/f00;->throws:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/da;->super(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    if-eqz p1, :cond_3

    .line 12
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/p20;

    invoke-direct {v1, p1}, Lcom/apk/p20;-><init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/k20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->final:Z

    return-void
.end method
