.class public Lcom/lxj/xpopup/core/BasePopupView$if;
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
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/core/BasePopupView;->access$100(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/apk/lv;->while:Landroid/view/ViewGroup;

    .line 5
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/apk/iv;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    new-instance v2, Lcom/lxj/xpopup/core/BasePopupView$if$do;

    invoke-direct {v2, p0}, Lcom/lxj/xpopup/core/BasePopupView$if$do;-><init>(Lcom/lxj/xpopup/core/BasePopupView$if;)V

    invoke-static {v0, v1, v2}, Lcom/apk/ow;->for(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;Lcom/apk/ow$if;)V

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->init()V

    return-void
.end method
