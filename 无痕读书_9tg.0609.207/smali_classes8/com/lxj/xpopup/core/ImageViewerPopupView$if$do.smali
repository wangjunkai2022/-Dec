.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;
.super Landroid/transition/TransitionListenerAdapter;
.source "ImageViewerPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 5
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->try:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 6
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 8
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$if$do;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->if:Lcom/lxj/xpopup/widget/BlankView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
