.class public Lcom/apk/d20;
.super Ljava/lang/Object;
.source "ComicCategoryThemePopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/view/ComicCategoryThemePopupView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/view/ComicCategoryThemePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d20;->do:Lcom/manhua/ui/view/ComicCategoryThemePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/d20;->do:Lcom/manhua/ui/view/ComicCategoryThemePopupView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/view/ComicCategoryThemePopupView;->class:Lcom/apk/g1;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/apk/d20;->do:Lcom/manhua/ui/view/ComicCategoryThemePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    return-void
.end method
