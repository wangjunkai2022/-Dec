.class public Lcom/apk/f20;
.super Ljava/lang/Object;
.source "ComicMenuPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

.field public final synthetic if:Lcom/manhua/ui/view/ComicMenuPopupView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/view/ComicMenuPopupView;Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f20;->if:Lcom/manhua/ui/view/ComicMenuPopupView;

    iput-object p2, p0, Lcom/apk/f20;->do:Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/f20;->if:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/view/ComicMenuPopupView;->for:Lcom/apk/g1;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/f20;->if:Lcom/manhua/ui/view/ComicMenuPopupView;

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/view/ComicMenuPopupView;->for:Lcom/apk/g1;

    .line 5
    iget-object p2, p0, Lcom/apk/f20;->do:Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/BookMenuItem;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookMenuItem;->getIndexTag()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/f20;->do:Lcom/biquge/ebook/app/adapter/ShelfMenuAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookMenuItem;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookMenuItem;->isSwitch()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/apk/f20;->if:Lcom/manhua/ui/view/ComicMenuPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
