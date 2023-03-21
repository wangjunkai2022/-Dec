.class public Lcom/apk/l60;
.super Lcom/apk/f70;
.source "GdtProviderBanner.java"


# instance fields
.field public try:Lcom/qq/e/ads/banner2/UnifiedBannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/l60;->try:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/l60;->try:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    :cond_0
    return-void
.end method
