.class public Lcom/apk/z90;
.super Ljava/lang/Object;
.source "TrAdViewBanner.java"

# interfaces
.implements Lcom/apk/x60;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z90;->do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/z90;->do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->else:Z

    return-void
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/z90;->do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->else:Z

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/z90;->do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->else:Z

    return-void
.end method

.method public new(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/z90;->do:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    invoke-static {v0, p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->if(Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;Landroid/view/View;)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method
