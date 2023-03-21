.class public Lcom/biquge/ebook/app/widget/SwitchButton$if;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 3
    iget v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 5
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 6
    iget v2, v2, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 7
    iget-object v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 8
    iget v3, v3, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    invoke-static {v3, v2, p1, v2}, Lcom/apk/goto;->do(FFFF)F

    move-result p1

    iput p1, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 9
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    sub-float/2addr p1, v2

    .line 10
    iget v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    .line 11
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    .line 12
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 14
    iget v3, v3, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 18
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 19
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    mul-float v2, v2, p1

    .line 20
    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 21
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 23
    iget v3, v3, Lcom/biquge/ebook/app/widget/SwitchButton;->import:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 27
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 28
    iget-object v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    .line 29
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 30
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 31
    iget-object v4, v4, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 32
    iget v4, v4, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 33
    invoke-virtual {v3, p1, v0, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    .line 34
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 35
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 36
    iget-object v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 37
    iget v4, v3, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 38
    iget-object v5, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 39
    iget v6, v5, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    invoke-static {v6, v4, p1, v4}, Lcom/apk/goto;->do(FFFF)F

    move-result v4

    iput v4, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 40
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    if-eq v0, v2, :cond_2

    .line 41
    iget v0, v3, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 42
    iget v2, v5, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    invoke-static {v2, v0, p1, v0}, Lcom/apk/goto;->do(FFFF)F

    move-result v0

    iput v0, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 44
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 45
    iget-object v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->implements:Landroid/animation/ArgbEvaluator;

    .line 46
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 47
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 48
    iget-object v3, v3, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    .line 49
    iget v3, v3, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    invoke-virtual {v2, p1, v0, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$if;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
