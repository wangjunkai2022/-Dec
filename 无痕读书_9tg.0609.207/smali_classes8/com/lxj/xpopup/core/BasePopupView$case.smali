.class public Lcom/lxj/xpopup/core/BasePopupView$case;
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
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Lcom/apk/yv;->for(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->dismissWithRunnable:Ljava/lang/Runnable;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    sget-object v1, Lcom/apk/qv;->for:Lcom/apk/qv;

    iput-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    .line 11
    invoke-static {}, Lcom/lxj/xpopup/core/BasePopupView;->access$300()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lxj/xpopup/core/BasePopupView;->access$300()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v0, v0, Lcom/apk/lv;->package:Z

    if-eqz v0, :cond_6

    .line 13
    invoke-static {}, Lcom/lxj/xpopup/core/BasePopupView;->access$300()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 14
    invoke-static {}, Lcom/lxj/xpopup/core/BasePopupView;->access$300()Ljava/util/Stack;

    move-result-object v0

    invoke-static {}, Lcom/lxj/xpopup/core/BasePopupView;->access$300()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->while:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    const v2, 0x1020002

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 19
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$case;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method
