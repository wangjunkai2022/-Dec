.class public Lcom/apk/e20;
.super Lcom/apk/bg;
.source "ComicMenuPopupView.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/view/ComicMenuPopupView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/view/ComicMenuPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e20;->do:Lcom/manhua/ui/view/ComicMenuPopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901c8

    if-eq p1, v0, :cond_1

    const v0, 0x7f090418

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/apk/e20;->do:Lcom/manhua/ui/view/ComicMenuPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/apk/e20;->do:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/view/ComicMenuPopupView;->for:Lcom/apk/g1;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/apk/e20;->do:Lcom/manhua/ui/view/ComicMenuPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    :goto_0
    return-void
.end method
