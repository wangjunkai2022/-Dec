.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$for$if;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$for$if;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView$for;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$for;->do:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->dismiss()V

    return-void
.end method
