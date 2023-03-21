.class public Lcom/lxj/xpopup/core/BasePopupView$for;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    sget-object v1, Lcom/apk/qv;->do:Lcom/apk/qv;

    iput-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 2
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/yv;->new(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->break(Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/BasePopupView;->access$200(Lcom/lxj/xpopup/core/BasePopupView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/pw;->break(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$for;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0, v1}, Lcom/apk/pw;->import(ILcom/lxj/xpopup/core/BasePopupView;)V

    :cond_1
    return-void
.end method
