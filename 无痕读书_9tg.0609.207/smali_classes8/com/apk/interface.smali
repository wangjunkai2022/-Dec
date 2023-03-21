.class public Lcom/apk/interface;
.super Ljava/lang/Object;
.source "AdViewBangDan.java"

# interfaces
.implements Lcom/apk/q40;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/interface;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/interface;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 3
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->goto:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/apk/interface;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try:Landroid/app/Activity;

    .line 7
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 9
    iget-object p2, p0, Lcom/apk/interface;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public new(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/interface;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->else:Z

    .line 3
    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;Landroid/view/View;)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method
