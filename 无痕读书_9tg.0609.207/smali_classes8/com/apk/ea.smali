.class public Lcom/apk/ea;
.super Ljava/lang/Object;
.source "ReadBookLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ea;->do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ea;->do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/apk/ea;->do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->if:Lcom/apk/m1;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v2, v0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->do:Z

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/apk/m1;->synchronized()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/apk/ea;->do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/apk/m1;->f(II)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/ea;->do:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->do:Z

    return-void
.end method
