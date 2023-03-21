.class public Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;
.super Ljava/lang/Object;
.source "BottomListPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/BottomListPopupView$if;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/BottomListPopupView$if;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/BottomListPopupView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;->do:Lcom/lxj/xpopup/impl/BottomListPopupView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;->do:Lcom/lxj/xpopup/impl/BottomListPopupView$if;

    iget-object v0, v0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v0, v0, Lcom/apk/lv;->new:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;->do:Lcom/lxj/xpopup/impl/BottomListPopupView$if;

    iget-object v0, v0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    :cond_0
    return-void
.end method
