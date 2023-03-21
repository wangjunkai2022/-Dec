.class public Lcom/lxj/xpopup/core/BasePopupView$else;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$else;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$else;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$else;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p3, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p3, p3, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3, p1}, Lcom/apk/yv;->do(Lcom/lxj/xpopup/core/BasePopupView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$else;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismissOrHideSoftInput()V

    :cond_1
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
