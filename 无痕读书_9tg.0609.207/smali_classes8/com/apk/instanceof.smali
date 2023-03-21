.class public Lcom/apk/instanceof;
.super Ljava/lang/Object;
.source "AdViewRectangle.java"

# interfaces
.implements Lcom/apk/q40;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/instanceof;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

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
    iget-object p1, p0, Lcom/apk/instanceof;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    return-void
.end method

.method public new(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/instanceof;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->if(Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/apk/instanceof;->do:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->else:Z

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method
