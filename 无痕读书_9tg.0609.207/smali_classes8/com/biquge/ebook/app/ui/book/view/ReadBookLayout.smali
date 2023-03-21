.class public Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;
.super Landroid/widget/FrameLayout;
.source "ReadBookLayout.java"


# instance fields
.field public do:Z

.field public if:Lcom/apk/m1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->if:Lcom/apk/m1;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/apk/m1;->f(II)V

    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/apk/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;->if:Lcom/apk/m1;

    return-void
.end method
