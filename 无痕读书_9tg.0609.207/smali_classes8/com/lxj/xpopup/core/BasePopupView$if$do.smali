.class public Lcom/lxj/xpopup/core/BasePopupView$if$do;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Lcom/apk/ow$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BasePopupView$if;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/BasePopupView$if;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/BasePopupView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/apk/qv;->if:Lcom/apk/qv;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object v1, v1, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_6

    .line 3
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    .line 4
    instance-of v0, p1, Lcom/lxj/xpopup/core/PositionPopupView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    instance-of v0, p1, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_3

    instance-of v3, p1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    iget-boolean v0, v0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->do:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {p1, v2}, Lcom/lxj/xpopup/core/BasePopupView;->access$202(Lcom/lxj/xpopup/core/BasePopupView;Z)Z

    goto :goto_3

    .line 12
    :cond_6
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object v2, v2, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v3, v2, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-eqz v3, :cond_7

    iget-object v2, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    if-ne v2, v0, :cond_7

    return-void

    .line 13
    :cond_7
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object v2, v2, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    instance-of v3, v2, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-eqz v3, :cond_8

    iget-object v2, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/apk/qv;

    if-ne v2, v0, :cond_8

    return-void

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {p1, v0}, Lcom/apk/pw;->import(ILcom/lxj/xpopup/core/BasePopupView;)V

    .line 15
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$if$do;->do:Lcom/lxj/xpopup/core/BasePopupView$if;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView$if;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {p1, v1}, Lcom/lxj/xpopup/core/BasePopupView;->access$202(Lcom/lxj/xpopup/core/BasePopupView;Z)Z

    :goto_3
    return-void
.end method
