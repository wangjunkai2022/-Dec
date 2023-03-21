.class public Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/msdk/adapter/SplashDismissController$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->onADClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/SplashDismissController;->jumpToAdPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;->try:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter;->abstract:Lcom/bytedance/msdk/adapter/SplashDismissController;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/adapter/SplashDismissController;->isCallDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;

    iget-object v0, v0, Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd$1;->do:Lcom/bytedance/msdk/adapter/gdt/GdtSplashAdapter$GDTSplashAd;

    .line 5
    iget-object v0, v0, Lcom/bytedance/msdk/base/TTBaseAd;->mTTAdatperCallback:Lcom/bytedance/msdk/adapter/listener/ITTAdatperCallback;

    .line 6
    instance-of v1, v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/bytedance/msdk/adapter/listener/ITTAdapterSplashAdListener;

    .line 8
    invoke-interface {v0}, Lcom/bytedance/msdk/api/v2/ad/splash/GMSplashAdListener;->onAdDismiss()V

    :cond_0
    return-void
.end method
