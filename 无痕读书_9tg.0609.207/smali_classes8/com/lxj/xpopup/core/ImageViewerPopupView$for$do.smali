.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Lcom/apk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/jw;

.field public final synthetic if:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$for;Lcom/apk/jw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->if:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    iput-object p2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->do:Lcom/apk/jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->if:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    if-eqz p1, :cond_2

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->do:Lcom/apk/jw;

    .line 4
    iget-object v0, v0, Lcom/apk/jw;->do:Lcom/apk/kw;

    .line 5
    iget-object v0, v0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$do;->if:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->class:Lcom/apk/jw;

    .line 7
    iget-object v0, v0, Lcom/apk/jw;->do:Lcom/apk/kw;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, v0, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/apk/kw;->const:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {v0}, Lcom/apk/kw;->do()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_2
    :goto_0
    return-void
.end method
