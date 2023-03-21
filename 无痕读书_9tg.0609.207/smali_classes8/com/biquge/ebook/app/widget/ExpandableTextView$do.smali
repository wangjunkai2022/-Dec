.class public Lcom/biquge/ebook/app/widget/ExpandableTextView$do;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ExpandableTextView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ExpandableTextView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->const:Z

    .line 4
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->final:Lcom/biquge/ebook/app/widget/ExpandableTextView$new;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 6
    iget-boolean p1, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-interface {v0, v1, p1}, Lcom/biquge/ebook/app/widget/ExpandableTextView$new;->do(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;->do:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v0, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 2
    iget p1, p1, Lcom/biquge/ebook/app/widget/ExpandableTextView;->class:F

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
