.class public Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;
.super Landroid/webkit/WebChromeClient;
.source "PlayWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/ui/PlayWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation


# instance fields
.field public do:Landroid/view/View;

.field public final synthetic for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

.field public if:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;Lcom/expand/videoplayer/ui/PlayWebViewActivity$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 2
    iget-object v0, v0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->do:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    iget-object v0, v0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->do:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->if:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->do:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 2
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->do:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->do:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    iget-object v0, v0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iput-object p2, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->if:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 7
    iget-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 8
    iget-object p1, p1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    const/16 p2, 0x8

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$try;->for:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
