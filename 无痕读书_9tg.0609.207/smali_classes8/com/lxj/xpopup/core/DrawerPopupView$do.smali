.class public Lcom/lxj/xpopup/core/DrawerPopupView$do;
.super Ljava/lang/Object;
.source "DrawerPopupView.java"

# interfaces
.implements Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/DrawerPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/DrawerPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->beforeDismiss()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

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
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method public onDrag(IFZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    iget-object p3, p1, Lcom/lxj/xpopup/core/DrawerPopupView;->do:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->public:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->isDrawStatusBarShadow:Z

    .line 2
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 3
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    iput p2, p1, Lcom/lxj/xpopup/core/DrawerPopupView;->for:F

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView$do;->do:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->if(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    return-void
.end method
