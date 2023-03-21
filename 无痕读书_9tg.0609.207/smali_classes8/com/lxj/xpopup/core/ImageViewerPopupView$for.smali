.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$for;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImageViewerPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/ImageViewerPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->const:Z

    if-eqz v1, :cond_0

    const v0, 0x3fffffff    # 1.9999999f

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/jw;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/jw;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->goto:Lcom/apk/zv;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->else:Ljava/util/List;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->const:Z

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p2, v1, v0}, Lcom/apk/zv;->do(ILjava/lang/Object;Landroid/widget/ImageView;)V

    .line 4
    :cond_1
    new-instance p2, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;

    invoke-direct {p2, p0, v0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$for;Lcom/apk/jw;)V

    invoke-virtual {v0, p2}, Lcom/apk/jw;->setOnMatrixChangeListener(Lcom/apk/cw;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    new-instance p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$if;

    invoke-direct {p1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$if;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$for;)V

    invoke-virtual {v0, p1}, Lcom/apk/jw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
