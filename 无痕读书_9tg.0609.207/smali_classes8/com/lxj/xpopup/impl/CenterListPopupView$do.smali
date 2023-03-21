.class public Lcom/lxj/xpopup/impl/CenterListPopupView$do;
.super Ljava/lang/Object;
.source "CenterListPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/CenterListPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/CenterListPopupView$if;

.field public final synthetic if:Lcom/lxj/xpopup/impl/CenterListPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Lcom/lxj/xpopup/impl/CenterListPopupView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iput-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->do:Lcom/lxj/xpopup/impl/CenterListPopupView$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    .line 2
    iget-object p2, p2, Lcom/lxj/xpopup/impl/CenterListPopupView;->case:Lcom/apk/xv;

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    .line 5
    iget-object p2, p2, Lcom/lxj/xpopup/impl/CenterListPopupView;->case:Lcom/apk/xv;

    .line 6
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->do:Lcom/lxj/xpopup/impl/CenterListPopupView$if;

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Lcom/apk/xv;->do(ILjava/lang/String;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget v0, p2, Lcom/lxj/xpopup/impl/CenterListPopupView;->else:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 8
    iput p3, p2, Lcom/lxj/xpopup/impl/CenterListPopupView;->else:I

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->new:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$do;->if:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_2
    return-void
.end method
