.class public Lcom/apk/yh;
.super Ljava/lang/Object;
.source "MarqueeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 2
    iget v0, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 6
    iput v1, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->catch:Ljava/util/List;

    .line 9
    iget v2, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->break:I

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 15
    iput-boolean v1, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->const:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 2
    iget-boolean v0, v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->const:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/yh;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->const:Z

    return-void
.end method
