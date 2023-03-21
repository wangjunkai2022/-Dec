.class public Lcom/lxj/xpopup/core/BottomPopupView$do;
.super Ljava/lang/Object;
.source "BottomPopupView.java"

# interfaces
.implements Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BottomPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/BottomPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/BottomPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->beforeDismiss()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method public onDrag(IFZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView$do;->do:Lcom/lxj/xpopup/core/BottomPopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/BottomPopupView;->access$001(Lcom/lxj/xpopup/core/BottomPopupView;)V

    return-void
.end method
