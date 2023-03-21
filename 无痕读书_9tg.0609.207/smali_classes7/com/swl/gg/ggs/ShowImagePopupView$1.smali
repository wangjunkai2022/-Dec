.class public Lcom/swl/gg/ggs/ShowImagePopupView$1;
.super Lcom/apk/bg;
.source "ShowImagePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swl/gg/ggs/ShowImagePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/ShowImagePopupView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/ShowImagePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-static {v0}, Lcom/swl/gg/ggs/ShowImagePopupView;->access$000(Lcom/swl/gg/ggs/ShowImagePopupView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-static {v0}, Lcom/swl/gg/ggs/ShowImagePopupView;->access$100(Lcom/swl/gg/ggs/ShowImagePopupView;)Lcom/swl/gg/widget/SwlAdImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/swl/gg/ggs/ShowImagePopupView$1;->this$0:Lcom/swl/gg/ggs/ShowImagePopupView;

    invoke-static {v0}, Lcom/swl/gg/ggs/ShowImagePopupView;->access$200(Lcom/swl/gg/ggs/ShowImagePopupView;)Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->clickAd(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V

    :cond_1
    :goto_0
    return-void
.end method
