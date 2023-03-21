.class public Lcom/lxj/xpopup/impl/LoadingPopupView$do;
.super Ljava/lang/Object;
.source "LoadingPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/LoadingPopupView;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/LoadingPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/LoadingPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 2
    iget-object v0, v0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 5
    iget-object v0, v0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 7
    sget v2, Lcom/apk/zu;->if:I

    int-to-long v2, v2

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 9
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 12
    iget-object v0, v0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView$do;->do:Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 15
    iget-object v1, v0, Lcom/lxj/xpopup/impl/LoadingPopupView;->do:Landroid/widget/TextView;

    .line 16
    iget-object v0, v0, Lcom/lxj/xpopup/impl/LoadingPopupView;->if:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
