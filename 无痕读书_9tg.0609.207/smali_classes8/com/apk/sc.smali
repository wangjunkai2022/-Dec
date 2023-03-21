.class public Lcom/apk/sc;
.super Lcom/apk/bg;
.source "ConfigImagePopupView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getLandingtype()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getNavtitle()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 9
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getClicktarget()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/apk/sc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    .line 12
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->if:Z

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_0
    return-void
.end method
