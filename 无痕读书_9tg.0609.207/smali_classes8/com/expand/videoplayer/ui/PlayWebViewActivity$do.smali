.class public Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;
.super Landroid/webkit/WebViewClient;
.source "PlayWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/PlayWebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    iget-object p1, p1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->mLoadingView:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
