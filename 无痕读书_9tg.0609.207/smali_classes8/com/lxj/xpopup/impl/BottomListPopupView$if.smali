.class public Lcom/lxj/xpopup/impl/BottomListPopupView$if;
.super Ljava/lang/Object;
.source "BottomListPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/BottomListPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/BottomListPopupView$for;

.field public final synthetic if:Lcom/lxj/xpopup/impl/BottomListPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Lcom/lxj/xpopup/impl/BottomListPopupView$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iput-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->do:Lcom/lxj/xpopup/impl/BottomListPopupView$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    .line 2
    iget-object p2, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->this:Lcom/apk/xv;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->do:Lcom/lxj/xpopup/impl/BottomListPopupView$for;

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Lcom/apk/xv;->do(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    iget v0, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5
    iput p3, p2, Lcom/lxj/xpopup/impl/BottomListPopupView;->break:I

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$if;->if:Lcom/lxj/xpopup/impl/BottomListPopupView;

    new-instance p2, Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;

    invoke-direct {p2, p0}, Lcom/lxj/xpopup/impl/BottomListPopupView$if$do;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView$if;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
