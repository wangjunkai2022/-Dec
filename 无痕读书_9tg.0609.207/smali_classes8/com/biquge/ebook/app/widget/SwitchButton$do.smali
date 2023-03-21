.class public Lcom/biquge/ebook/app/widget/SwitchButton$do;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$do;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$do;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 2
    iget v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$do;->do:Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 4
    iget v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->c:Z

    if-nez v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_4
    iput v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->protected:I

    .line 9
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->strictfp:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget-object v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-static {v1, v2}, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 10
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget-object v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->continue:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    invoke-static {v1, v2}, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V

    .line 11
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->throw:I

    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 13
    iget v3, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->package:F

    iput v3, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 14
    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->volatile:Lcom/biquge/ebook/app/widget/SwitchButton$try;

    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->super:I

    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 16
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->finally:F

    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 17
    iget v2, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->case:F

    iput v2, v1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    .line 18
    :goto_1
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/SwitchButton;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_2
    return-void
.end method
