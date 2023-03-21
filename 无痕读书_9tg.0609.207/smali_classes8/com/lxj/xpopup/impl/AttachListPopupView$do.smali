.class public Lcom/lxj/xpopup/impl/AttachListPopupView$do;
.super Ljava/lang/Object;
.source "AttachListPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/AttachListPopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/AttachListPopupView$if;

.field public final synthetic if:Lcom/lxj/xpopup/impl/AttachListPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Lcom/lxj/xpopup/impl/AttachListPopupView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->if:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iput-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->do:Lcom/lxj/xpopup/impl/AttachListPopupView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->if:Lcom/lxj/xpopup/impl/AttachListPopupView;

    .line 2
    iget-object p1, p1, Lcom/lxj/xpopup/impl/AttachListPopupView;->while:Lcom/apk/xv;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->do:Lcom/lxj/xpopup/impl/AttachListPopupView$if;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/apk/xv;->do(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->if:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->new:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$do;->if:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_1
    return-void
.end method
