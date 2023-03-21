.class public Lcom/lxj/xpopup/core/PositionPopupView$do;
.super Ljava/lang/Object;
.source "PositionPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/PositionPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/PositionPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/PositionPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v2, v1, Lcom/apk/lv;->finally:Z

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->throw(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    iget v1, v1, Lcom/apk/lv;->throws:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView$do;->do:Lcom/lxj/xpopup/core/PositionPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;->do:Lcom/lxj/xpopup/widget/PartShadowContainer;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v0, v0, Lcom/apk/lv;->default:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
