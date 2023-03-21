.class public Lcom/apk/transient;
.super Ljava/lang/Object;
.source "AdViewBanner.java"

# interfaces
.implements Lcom/apk/q40;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/transient;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/transient;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    return-void
.end method

.method public new(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/transient;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->else:Z

    .line 3
    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewBanner;->if(Lcom/biquge/ebook/app/ad/ads/AdViewBanner;Landroid/view/View;)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method
