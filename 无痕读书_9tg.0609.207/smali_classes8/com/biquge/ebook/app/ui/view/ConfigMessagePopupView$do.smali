.class public Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;
.super Lcom/apk/bg;
.source "ConfigMessagePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901c0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901cf

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getLandingtype()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getNavtitle()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    .line 11
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 12
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getClicktarget()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;->do:Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
