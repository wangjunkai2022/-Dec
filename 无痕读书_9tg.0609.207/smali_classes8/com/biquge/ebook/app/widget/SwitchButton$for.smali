.class public Lcom/biquge/ebook/app/widget/SwitchButton$for;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/SwitchButton;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/SwitchButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$for;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$for;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 2
    iget v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    xor-int/2addr v0, v1

    .line 4
    iput-boolean v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->instanceof:Z

    .line 5
    iput v2, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$for;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->if()V

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$for;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 12
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/SwitchButton;->if()V

    goto :goto_0

    .line 13
    :cond_2
    iput v2, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 15
    iput v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 16
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 17
    iput v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    .line 18
    iget v1, p1, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    .line 19
    iput v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
