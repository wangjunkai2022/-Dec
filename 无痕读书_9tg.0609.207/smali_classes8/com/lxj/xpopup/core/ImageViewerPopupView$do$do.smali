.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$do$do;
.super Landroid/transition/TransitionListenerAdapter;
.source "ImageViewerPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$do;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/ImageViewerPopupView$do;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$do$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$do;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$do$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$do;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$do$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$do;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$do$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$do;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    throw v0

    .line 5
    :cond_0
    throw v0
.end method
