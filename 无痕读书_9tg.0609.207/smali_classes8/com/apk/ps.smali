.class public Lcom/apk/ps;
.super Landroid/widget/FrameLayout;
.source "RefreshableBannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ps$if;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/ps$if;

.field public do:Z

.field public for:Z

.field public if:Z

.field public final new:Landroid/graphics/Rect;

.field public final try:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/ps;->do:Z

    .line 3
    iput-boolean p1, p0, Lcom/apk/ps;->if:Z

    .line 4
    iput-boolean p1, p0, Lcom/apk/ps;->for:Z

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/apk/ps;->new:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Lcom/apk/ps$do;

    invoke-direct {p1, p0}, Lcom/apk/ps$do;-><init>(Lcom/apk/ps;)V

    iput-object p1, p0, Lcom/apk/ps;->try:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method


# virtual methods
.method public final do(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/ps;->do:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apk/ps;->if:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/apk/ps;->for:Z

    if-nez p1, :cond_2

    .line 3
    iput-boolean v1, p0, Lcom/apk/ps;->for:Z

    .line 4
    iget-object p1, p0, Lcom/apk/ps;->case:Lcom/apk/ps$if;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, v1}, Lcom/apk/ps$if;->a(Z)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 6
    iget-boolean p1, p0, Lcom/apk/ps;->for:Z

    if-eqz p1, :cond_2

    .line 7
    iput-boolean v2, p0, Lcom/apk/ps;->for:Z

    .line 8
    iget-object p1, p0, Lcom/apk/ps;->case:Lcom/apk/ps$if;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, v2}, Lcom/apk/ps$if;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ps;->try:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ps;->try:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/apk/ps;->do:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/ps;->do(Z)V

    return-void
.end method

.method public setVisibilityChangeListener(Lcom/apk/ps$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ps;->case:Lcom/apk/ps$if;

    return-void
.end method
