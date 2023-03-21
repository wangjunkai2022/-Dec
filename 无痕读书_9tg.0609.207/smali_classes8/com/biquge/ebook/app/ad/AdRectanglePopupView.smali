.class public Lcom/biquge/ebook/app/ad/AdRectanglePopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "AdRectanglePopupView.java"


# instance fields
.field public final do:Landroid/app/Activity;

.field public if:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;->do:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0063

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0900a9

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    iput-object v0, p0, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;->if:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    :try_start_0
    const-string v1, "dir_rect"

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;->do:Landroid/app/Activity;

    new-instance v3, Lcom/apk/package;

    invoke-direct {v3, p0}, Lcom/apk/package;-><init>(Lcom/biquge/ebook/app/ad/AdRectanglePopupView;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcom/apk/i;->case(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/apk/i;->do(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdRectanglePopupView;->if:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    :cond_0
    return-void
.end method
